---
title: "On Abstraction"
date: 2015-07-05
author: Vitalik Buterin
embed:
  url: https://blog.ethereum.org/2015/07/05/on-abstraction
  img: /images/blog.ethereum.org/2026.01.05/next/image.jpg
  site: Ethereum Foundation Blog
---

Special thanks to Gavin Wood, Vlad Zamfir, our security auditors and others for some of the thoughts that led to the conclusions described in this post

One of Ethereum's goals from the start has been to bring cryptocurrency 2.0 technology to as high a level of abstraction as possible. Instead of users having to care about the inner workings of cryptography, Merkle trees and consensus protocols, we would like to build a platform where most of the implementation details are hidden away as much as possible, and the things that users need to be aware of are intuitive concepts like messages, accounts, contracts and transactions.

However, there is still a long way to go before we can truly call Ethereum an "abstract" system. Right now, transaction validity is checked by verifying an elliptic curve signature, the choice of hash function (SHA3) is fixed in hundreds of places across the protocol, addresses are derived from public keys using SHA3 and RIPEMD160, and the trie algorithm is based on SHA3. If we want Ethereum to be maximally abstract, we will want to move to a model where all of these implementation details are not something that the protocol itself cares about.

## Cryptography

Regarding cryptography, right now Ethereum accounts are locked to ECDSA recovery specifically; in the future, we would like to allow any kind of cryptographic signature scheme. Currently, transactions are verified via the following process:

1. Take the signature (v, r, s)
2. Do an elliptic curve recover operation on the hash of the transaction data, with v as the recovery byte and the elliptic curve point (r, s) as the signature
3. If the recovered public key has the right address, then the signature is valid

In abstract cryptocurrency, instead of "locks" based on cryptographic verification, the idea is to let people use whatever cryptographic verification algorithm that they want. Instead of an account being an address, derived from a public key, an account would be a piece of "verification code" – if someone wants to send a transaction from your account, they need to supply some data, and if you want your account to be secure, the verification code should only return successfully (ie. not throw an exception) if the provided data correctly verifies the message.

Specifically, each account A would have a piece of verification code attached to it, and:

1. When a transaction from account A arrives, the verification code of A is run, with (i) nonce, (ii) gasprice, (iii) gaslimit, (iv) destination, (v) value, (vi) data and (vii) signature as the input
2. If the verification code succeeds, the nonce of the transaction is incremented, and the gas payment is deducted. If there is still remaining gas, the rest of the transaction proceeds. Otherwise (ie. the verification code throws an exception), the transaction is invalid

With such a scheme in place, we could switch from ECDSA to ed25519 or to Lamport signatures (eg. if we're scared of the NSA having a quantum computer), without requiring a hard fork at all. If we want, we can even use two keys, one for normal use and a cold-storage backup key for recovery in case the primary is lost or stolen. The only thing we need to ensure is that verification always takes place in under a certain number of steps (eg. 50000 gas); the transaction obviously needs to pay for this itself. If someone wants to use a horribly inefficient signature scheme that takes 50 billion steps to verify, they can, they'll just need to pay a much higher fee.

## The Trie

Another abstraction that we could implement is the trie. Right now, the Ethereum Patricia tree is a very complex data structure, mixing hash functions, database accesses, and conversions between arrays, strings and binary nibbles, and it turns out that this complexity is actually somewhat harmful: for most contracts, a radix tree is actually not the right tool to use at all. Some contracts, like channels, have only one storage slot, and so there is no need for anything more than a simple key/value mapping. Others have ten or a hundred slots; there, a binary tree would work well. Yet others contain millions of items; they would perhaps be better stored in a simple radix tree where branches contain chunks of data to be stored in the database, not 17 hashes to the next layer down.

Instead of forcing contract storage to be kept in a Patricia tree, we could have an "abstract hash tree" structure. The structure would have the interface:

- `GETVAL(key)` – get the value at a key
- `SETVAL(key, val)` – set the value at a key
- `DESCEND(key)` – descend into a tree, so that all operations are done relative to the given key
- `ASCEND(levels)` – go back up some number of levels
- `GETHASH()` – get the hash of the current subtree
- `SETHASH(h)` – set the hash of the current subtree (this will blank out everything inside the tree, but still allow you to do Merkle proofs to the inside)

Each individual structure underneath the abstraction would have its own rules for mapping these operations to lower-level opcodes like SHA3, SLOAD, SSTORE, etc. If contract developers want to use a Patricia tree, they can import a library implementing one; if they want to use a simple key/value map, they can do that too.

## Currency

Another direction that we can also go in, though this is considerably more futuristic and will potentially be harder to fully work out, is to make Ethereum "currency-agnostic", and allow transactions to be paid for in whatever currency users want. The idea is as follows. Let's call the currency that the consensus protocol accepts (ie. which miners see as "real money") "consensus ether" or "cether" (CE). The idea is that cether would not be given to miners directly; instead, cether would be stored in a "fee contract", and anyone can send ether or gavcoin or swarmcoin or any other subcurrency to this contract, and the contract would have an exchange rate table such that it knows how much each of these tokens is "worth".

When someone sends a transaction, they would need to specify a "fee destination" in addition to gasprice – the amount of fee paid would be gasprice multiplied by gas used, and the fee would be deducted from the sender's balance and sent to the fee destination. The fee destination is expected to be a subcurrency contract; for example, it could be Augur's REP, in which case the sender would be paying in REP. All the protocol sees is: (i) is the transaction's gasprice high enough, and (ii) did the fee destination contract say "I accept this payment"?

The fee contract itself would contain code that, if passed a deposit of CE, would record the deposit and check the transaction's gasprice. If gasprice > feechecker.minimumprice(), it would immediately pay the transaction fee to the miner; otherwise, it would refund the CE to the sender and throw an exception. Here, we assume feechecker.minimumprice() is a function that checks what minimum gasprice is acceptable.

However, the fee contract would also accept subcurrencies. If it gets subcurrency, it would do the following:

1. Check if the subcurrency is in the exchange rate table. If not, refund and throw an exception.
2. Calculate the value of the deposit in CE according to the exchange rate table.
3. Check if gasprice \* gas <= value. If not, refund and throw an exception.
4. Otherwise, add gasprice \* gas CE to the miner's account, and refund value - gasprice \* gas back to the sender (converted back to the subcurrency).

The question is, how does the exchange rate table get populated? Here, there are a number of approaches. The simplest and perhaps most "crypto 2.0-philosophical" approach is to use the on-chain market as an exchange rate provider, and use a 24-hour median gas price. An alternative is to use voting; either voting by miners themselves, by ETH holders, or a combination of the two.

## Proof of Stake Generalization

A general pattern that emerges from all of these designs is that of generalizing proof of stake itself: instead of having miners provide security, and having miners get paid in one specific currency, perhaps we can have a design where the entire concept of "the native currency" disappears entirely, and instead security comes from a range of actors that provide economic guarantees in exchange for fee revenue.

The problem here is one of "pathological metacoins". Suppose that there existed a metacoin such that:

1. Every account starts off with 10^80 coins
2. All transactions are free
3. If you have more than 10^80 - 1 coins in your account, the coins disappear

Now, suppose that every single ETH holder simultaneously decides to adopt this metacoin. This metacoin has zero value, but nonetheless it has every property of a valuable metacoin, except for the fact that each account has an insane number of coins, and that you automatically lose all but one if you gain even more. A protocol that treated this metacoin the same as ETH, for proof of stake purposes, would be radically insecure.

The solution is to have the exchange rate table be managed more carefully, with stakeholders voting not just on whether to include a currency but also how much weight to give it. A total weight of 2.0 would mean that, in terms of security properties, we want to treat all the currencies as double-counting; ie. if someone owns all the ETH, all the REP, all the DGX, and 80% of the BTC, that individual shouldn't be able to 51% attack the chain.

## SHA3 and RLP

Finally, two components that cannot easily be abstracted are SHA3 and RLP; these are used inside the trie, and any abstraction of the trie still needs some way to hash things, so SHA3 and RLP are unavoidable. There are a few reasons why these are particularly hard to generalize. First, they are used ubiquitously inside the consensus layer: for example, the block hash is the SHA3 of the RLP-serialized block header. Second, the trie itself needs a hash algorithm for its hashing; if we allow the trie hash algorithm to be anything, then different people might end up using different trie hash algorithms, and the state roots would not match up. Hence, for the trie, we need to keep the specific SHA3/RLP algorithm locked in, at least until we have some better ideas.

These concepts – cryptographic abstraction, trie abstraction, currency-agnosticism and generalized proof of stake – are currently open problems for the research team, and we invite anyone who is interested to participate in thinking about them.

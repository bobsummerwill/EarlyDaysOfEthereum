---
title: "State of Ethereum: August Edition"
date: 2014-08-27
author: Vitalik Buterin
embed:
  url: https://blog.ethereum.org/2014/08/27/state-ethereum-august-edition
  img: /images/blog.ethereum.org/2026.01.05/next/image.jpg
  site: Ethereum Foundation Blog
---

At this point, Ethereum has been in development for over seven months. During that time, we have released five "proof of concept" builds, have a semi-functional prototype of Swarm, a working network stats page, a GUI for contract development, and three independent implementations of the protocol (C++, Go and Python), all running on the same blockchain. We have had over 5000 new members on our forums since March, and are continuing to gain strong interest from all sectors of society, including financial institutions, existing digital currency projects, and industry. In short, we are very close to a point which we have been working toward since the start: having the software mature enough to work.

However, there is still some significant work to be done. Many parts of the current code are rather hastily-written; once full interoperability is achieved, the next step will be to focus on security and efficiency. From a broader perspective, what we have right now is roughly similar to where Bitcoin was in mid-2009: the basic code works, but it could still use some serious stress testing, security auditing and optimization before it can really be called production-ready. Between the software work needed to be done, the security audits that need to be performed and the consensus work on the genesis block parameters and release process that needs to be finalized, we expect to be ready for a 1.0 release some time around the end of this year.

## PoC6 Improvements

The next step in the short term will be the release of PoC6, which will include several significant protocol improvements:

**Block time reduction**: we intend to reduce the block time from 60 seconds to 12 seconds, using a new GHOST-based protocol that will allow for fast block times without the centralization issues that fast block times currently entail. For details, see the [blog post from July](/articles/toward-a-12-second-block-time/).

**New opcodes**: we will be adding ADDMOD and MULMOD opcodes to improve the efficiency of modular arithmetic operations, and will also be including DUP1 through DUP16 and SWAP1 through SWAP16 opcodes for improved stack manipulation.

**POST**: we will be adding a POST opcode that allows for asynchronous message execution. POST works like CALL, except instead of immediately running the called code it simply creates a "postqueue" message that executes at the end of the transaction, so the execution of the post does not count toward the current call's gas limit. POST is particularly useful for when contracts need to "call back" to contracts earlier in the call stack.

**Efficiency improvements**: we are making several smaller modifications to the protocol to reduce unnecessary overhead, such as switching the method of creating the block hash to not include the transaction and uncle lists directly, and some changes to how contract accounts are stored on the disk.

## The Efficiency Challenge

One of the largest issues that Ethereum has to deal with is efficiency. Although the blockchain is much more efficient than having thousands of nodes do the same computation redundantly and keeping track of all state changes, we still need to deal with the fact that every node must process every transaction. Additionally, unlike Bitcoin, Ethereum nodes will also need to store and process contracts, so the amount of data storage and computation required is much higher.

Consider the problem of implementing a heap in Ethereum. The naive approach is to have a tree structure, where each node has some value and two child node IDs, and the heap invariant (that the value of each node must be less than its parent) is maintained at all levels. Implementing a heap this way actually results in log3(n) overhead per operation, since each node has two child IDs and each is 32 bytes, and the total overhead of looking up a 32-byte value from a trie is also about 32 bytes. Heaps, in short, suck.

Another area of concern is elliptic curve signature verification. Right now, verifying a signature takes about 340000 gas. This is actually too slow to be economically practical for many applications, although it is perfectly fine for the simple use case of verifying that the sender of a transaction has the requisite private key. However, there are applications where having fast signature verification is important – for example, implementing the Ethereum name registrar as a contract, or having multisig transactions that are validated at the contract layer rather than the protocol layer.

## Native Code Extensions

Our approach to solving the efficiency problem is what we call "native code extensions". Instead of hardcoding the elliptic curve operations into the protocol, and having special rules about what is "native" and what is "virtual machine" code, we will instead try to maintain a simple, clean virtual machine, and then have a collection of special commonly-used contracts whose execution we convert into native code. This accomplishes two key goals:

1. All contracts are defined "in-band", so there are no externalities; even if the native code exists, a miner can "fake" the result using the EVM code
2. Users have a great deal of freedom in deciding what they want to optimize and what they do not

For example, we could have "native" implementations of SHA256, RIPEMD-160, elliptic curve operations, and other common computations. If a contract uses SHA256, the execution would be handled in native code; if the contract uses a custom hash function, the execution would go through the virtual machine.

The tricky part here is getting the pricing right. Native code should be priced lower than the equivalent EVM code would be, so that people have an incentive to use it. But native code should also not be priced too low, or else we risk underpaying miners and opening up avenues for denial of service attacks.

## Mining Algorithm

We are also continuing to work on the mining algorithm. The objective is to create a proof of work algorithm that is ASIC-resistant, so that mining can remain decentralized. There are several promising directions being explored, all of which involve giving miners tasks that require a large amount of memory. We expect to have more to say about this in September.

## Ethereum 1.5

Finally, we have been continuing research on what we internally call "Ethereum 1.5" – approaches that can be used to increase the scalability of Ethereum above the current ~25 transactions per second limit, without making fundamental changes to the protocol. Options being explored include state channels (similar to payment channels but generalized), sharding approaches, and tree chains. We expect much more development in this area over the next few months.

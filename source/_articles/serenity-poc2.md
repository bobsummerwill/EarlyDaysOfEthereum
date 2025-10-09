---
title: "Serenity PoC2"
date: 2016-03-05
author: Vitalik Buterin
source: https://blog.ethereum.org/2016/03/05/serenity-poc2
---

After an additional two months of work after the release of the first python proof of concept release of Serenity, I am pleased to announce that Serenity PoC2 [is now available](http://github.com/ethereum/pyethereum/tree/serenity). Although the release continues to be far from a testnet-ready client, much less a production-ready one, PoC2 brings with it a number of important improvements.

First and foremost, the goal of PoC2 was to implement the complete protocol, including the basic corner cases (slashing bets and deposits), so as to make sure that we have a grasp of every detail of the protocol and see it in action even if in a highly restricted test environment. This goal has been achieved.

The specific features that can be found in PoC2 that were not available in PoC1 are as follows:

*   **EIP 105 implementation** - The sharding scaffolding EIP, which will allow processing Ethereum transactions to be somewhat parallelized, and will set the stage for a later sharding scheme. It uses the binary tree sharding mechanism to allow transactions to specify an "activity range" which restricts the addresses that transaction execution can touch.

*   **Gas checking** - The algorithm that pattern-matches a transaction to make sure that it correctly pays gas. This is accomplished by only accepting transactions going to accounts that have a particular piece of "mandatory account code", which gives the account holder freedom to specify checker code and runner code. The main practical consequence is that users will be able to pay for gas directly out of contracts (eg. multisig wallets, ring signature mixers, etc).

*   **Ring signature mixer** - Part of the test.py script now includes creating an instance of a ring signature verification contract which is designed as a mixer: five users send their public keys in alongside a deposit of 0.1 ETH, and then withdraw the 0.1 ETH specifying the address with a linkable ring signature.

*   **More precise numbers on interest rates and scoring rule parameters** - The scoring rule is now a linear combination of a logarithmic scoring rule and a quadratic scoring rule. Betting absolutely correctly immediately and with maximal "bravery" will get you an expected reward of ~50.58% base annual return, with a penalty that everyone pays of ~36.98% annual, hence the expected net return from betting perfectly is ~10% annual.

*   **More precise validator induction rules** - Maximum 250 validators, minimum ether amount starts off at 1250 ETH and goes up hyperbolically. When you are inducted, you can make bets and earn profits for up to 30 million seconds (~1 year).

*   **New precompiles** including ECADD and ECMUL (critical for ring signatures), MODEXP, RLP decoding and the "gas deposit contract"

*   **Rearchitecting of LOG and CREATE as precompiles** - A further move in the direction of "abstraction"

*   New mechanism for betting directly on state roots
*   Logic for detecting and slashing double bets and double blocks
*   Logic for coming to consensus at a height even if a validator produced multiple blocks at that height

The protocol decisions made here are by no means final; many of them are still actively being debated within the research channels. The next few rounds of PoC releases will thus move toward creating something resembling a Serenity node implementation, alongside a proper p2p networking layer, with the eventual goal of running a Serenity testnet between multiple computers.

Additionally, we will be coming out with more accessible materials on the Casper protocol specification and design rationale in the next few weeks, covering both the broad consensus-by-bet concept as well as specific design decisions.

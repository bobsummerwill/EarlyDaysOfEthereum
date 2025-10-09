---
title: "To fork or not to fork"
date: 2016-07-15
author: Jeffrey Wilcke
source: https://blog.ethereum.org/2016/07/15/to-fork-or-not-to-fork
---

The DAO, though not a product developed by the Ethereum Foundation, has been a hot topic as of late, both internally in the organisation as well as within our community. The Hard Fork is a delicate topic and the way we see it, no decision is the right one. As this is not a decision that can be made by the foundation or any other single entity, we again turn towards the community to assess its wishes in order to provide the most appropriate protocol change.

The specification proposed for the hard fork that is being implemented in the Geth client is as follows:

The DAO (0xbb9bc244d798123fde783fcc1c72d3bb8c189413), its extraBalance (0x807640a13483f8ac783c557fcdf27be11ea4ac7a), all children of the DAO creator (0x4a574510c7014e4ae985403536074abe582adfc8) and the extrabalance of each child are encoded into a list L at block 1880000. The contents of L can be viewed [here](https://gist.github.com/gavofyork/af747a034fbee2920f862ed352d32347). At the beginning of block X (X = 1920000, on July 20 or 21 depending on your time zone), all ether throughout all accounts in L will be transferred to contract account C, which is at (0xbf4ed7b27f1d666546e30d74d50d173d20bca754). You can verify the solidity source code of C on [etherscan](https://etherscan.io/address/0xbf4ed7b27f1d666546e30d74d50d173d20bca754#code). From this contract, DAO token holders can submit their DAO in order to withdraw ETH at a rate of 1 ETH = 100 DAO. The extrabalance, as well as some additional ether that remains due to complications in the interactions between the re-entrancy exploit and the splitting mechanism, will be withdrawable by the DAO curator to be distributed as appropriate to cover all edge cases.

Additional information to facilitate verification of the fork spec and implementation is expected to be released separately by the community; consensus code in Geth that implements the fork logic is covered by the bug [bounty program](https://bounty.ethereum.org/).

Unfortunately time limits require swift adoption before a protocol change becomes impractical. The community tool [carbonvote](http://carbonvote.com) will be used to set the default fork option for Geth. At block number 1894000 the votes will be tallied, and the outcome will determine whether the default is set _to fork_ or _not to fork_. Then merging the [DAO fork PRs](https://github.com/ethereum/go-ethereum/pulls?q=is%3Apr+is%3Aopen+label%3Adao-fork-part) will proceed, followed shortly by a release for both Geth and Mist. Users with business-critical applications who need to update quickly should frequently check the blog and social media for ongoing updates.

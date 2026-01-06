---
title: "DAOs, DACs, DAs and More: An Incomplete Terminology Guide"
date: 2014-05-06
author: Vitalik Buterin
embed:
  url: https://blog.ethereum.org/2014/05/06/daos-dacs-das-and-more-an-incomplete-terminology-guide
  img: /images/blog.ethereum.org/2026.01.05/_next/image.jpg
  site: Ethereum Foundation Blog
---

One of the most popular topics in the digital consensus space is the concept of decentralized autonomous entities. However, one hidden problem is that no one even knows what all of these individual terms mean. This article attempts to provide coherent definitions.

## Smart Contracts

A smart contract is the simplest form of decentralized automation: a mechanism involving digital assets and two or more parties, where assets are automatically redistributed according to a formula based on certain data. For example, an employment contract where funds are locked until work is completed and verified.

The key property is a fixed number of parties. Smart contracts can run indefinitely (like hedging contracts), but should have a bounded number of participants.

## Autonomous Agents

Autonomous agents exist on the opposite end of the spectrum - no specific human involvement is required at all. Examples include computer viruses that replicate themselves, or a self-replicating cloud computing service that automatically rents servers and expands its network.

Full autonomous agents (artificial intelligence) can adapt to arbitrary circumstances. Between simple agents and full AI is a large range based on intelligence and versatility.

## Decentralized Applications

A decentralized application has an unbounded number of participants on all sides and need not be financial. BitTorrent, BitMessage, Tor and Maidsafe are examples.

They generally fall into two classes:
1. **Fully anonymous** - Every participant is anonymous (BitTorrent, BitMessage)
2. **Reputation-based** - Nodes maintain reputation for trust purposes (Maidsafe)

## Decentralized Organizations

A decentralized organization (DO) takes a traditional organization and decentralizes it. Instead of hierarchical structure managed by humans via the legal system, a DO involves humans interacting according to a protocol specified in code and enforced on the blockchain.

For example, a shareholder-owned corporation could be transplanted entirely onto the blockchain, with on-blockchain voting for board positions and smart property systems controlling physical assets.

## Decentralized Autonomous Organizations

A DAO is an entity that lives on the internet autonomously but relies on hiring individuals to perform tasks the automaton cannot do. The key distinction from DOs is "autonomy" - DAOs make decisions for themselves.

The difference: In DAOs, collusion attacks are treated as bugs, whereas in DOs they are features. In a DO like a democracy, the point is that a plurality chooses the outcome. In a DAO like Bitcoin, the default behavior when everyone acts in individual interest is the intent, and coordinated attacks are aberrations.

DAOs have internal capital - property that is valuable and can be used to reward activities. Bitcoin and Namecoin qualify as DAOs, though they barely cross the threshold.

## Decentralized Autonomous Corporations

DACs are a subclass of DAOs distinguished by one key feature: they pay dividends. There is a concept of tradeable shares that entitle holders to receipts based on success.

The distinction from DAOs is about emphasis: To what extent are dividends the main point versus earning tokens by participation? A bitcoin is not a share because it doesn't entitle you to profits or decision-making, whereas corporate shares do.

## Conclusion

These definitions are still incomplete - there are gray areas and the question of how much automation a DO needs to become a DAO is difficult to answer. Additionally, there are many open questions about how these entities should be built: How much intelligence should be in core code? Should membership be corporate-style with sellable shares or nonprofit-style with voting? Should blockchains use proof of work, proof of stake, or reputation?

These are hard problems and we have only just begun scratching the surface.

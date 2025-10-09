---
title: "On Settlement Finality"
date: 2016-05-09
author: Vitalik Buterin
embed:
  url: https://blog.ethereum.org/2016/05/09/on-settlement-finality
  img: https://blog.ethereum.org/_next/image?url=%2Fimages%2Feth-org.jpeg&w=1080&q=75
  site: Ethereum Foundation Blog
---

_Special thanks to Tim Swanson for reviewing, and for further discussions on the arguments in his original paper on settlement finality._

Recently one of the major disputes in ongoing debate between public blockchain and permissioned blockchain proponents is the issue of settlement finality. Decentralized systems may provide finality, or they may provide it probabilistically, within certain economic bounds, or not at all, and public and permissioned blockchains perform very differently in this regard.

## Finality is always probabilistic

First of all, a very important philosophical point: there is no system in the world that offers truly 100% settlement finality in the literal sense. Even centralized registries can fail - the registry can burn down, be hacked, or face other catastrophic failures. In the case of using blockchains as registries for legally registered property, it is the court system that is the ultimate source of decision-making power regarding ownership.

The practical relevance of this is strengthened by Bitcoin's experience. There have been three instances where transactions were reverted after significant time, including the 2010 integer overflow bug, the 2013 blockchain fork, and 2015 mining pool incidents.

## Finality in Proof of Work

Technically, a proof of work blockchain never allows a transaction to be truly "finalized." However, financial intermediaries have evolved a practical solution: waiting for six confirmations. The probabilistic logic is simple - with an attacker having less than 25% of network hashpower, the chance of a successful attack after 6 confirmations is only about 0.00137.

However, this probabilistic logic assumes that 75% of nodes behave honestly. There are concerns about miners being bribed through P + epsilon attacks, infrastructure vulnerabilities, or large-scale "Maginot Line" attacks where attackers simply bring more mining power than the rest of the network combined.

## Finality in Casper

The Casper protocol offers stronger finality guarantees. There is a standard definition of "total economic finality": when 2/3 of all validators make maximum-odds bets that a given block or state will be finalized. Once validators make such bets, in any blockchain where that block is not present, the validators lose their entire deposits.

This is what we mean by "economic finality": we can't guarantee that "X will never be reverted", but we can guarantee that "either X will never be reverted or a large group of validators will voluntarily destroy millions of dollars of their own capital".

## Law and Economics

These stronger protections are economic. For high-value assets, the economic security margin of public blockchains may be too low. For example, if you're trading $100 billion worth of equities, the cost of attacking the public blockchain becomes insignificant compared to potential profits from market manipulation.

For smaller transactions over shorter periods, public blockchain economic incentives effectively disincentivize malfeasance. The key question is whether the economic security margin is sufficient for the specific use case.

## Censorship Resistance and other Practical Concerns

Public blockchains are censorship resistant, allowing anyone to send transactions, whereas financial institutions need to limit participation. Public chains can serve as base layers for restricted systems, though this may be less efficient than permissioned chains.

Other concerns include:
- **Throughput**: Public chains must run on consumer hardware, limiting capacity
- **Latency**: Public chains have higher latency due to geographic distribution
- **Efficiency**: Permissioned chains can use more powerful infrastructure

However, public blockchains have many advantages, including lower coordination costs, network effects, and the ability for anyone to build applications without requiring social connections or consortium formation. The cross-application synergies that emerge organically in public chains are another important benefit.

Ultimately, we may see the two ecosystems evolving to serve different constituencies over time, although they share many challenges in scalability, security and privacy, and can benefit greatly by working together.

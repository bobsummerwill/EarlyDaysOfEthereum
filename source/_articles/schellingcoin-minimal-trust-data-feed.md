---
title: "SchellingCoin: A Minimal-Trust Universal Data Feed"
date: 2014-03-28
author: Vitalik Buterin
source: https://blog.ethereum.org/2014/03/28/schellingcoin-a-minimal-trust-universal-data-feed
---

One of the main applications of Ethereum is financial contracts and derivatives. However, these require a trusted source for external data like prices. SchellingCoin provides a mechanism to create a decentralized data feed.

## The Hedging Use Case

Consider Jane, a business owner who accepts Bitcoin but wants to avoid price volatility. Instead of constantly trading BTC back and forth (paying 1% fees each way), she can use a Contract for Difference (CFD). She puts in $20,000 worth of BTC and gets back (in BTC) $20,000 plus $100 for every dollar that the BTC price drops. If the price rises, she loses $100 per dollar. The counterparty is a speculator betting on price increases.

This works well in Ethereum - you just write a contract. But there's a problem: it requires a trusted source for the ETH/USD price.

## Schelling Points

The mechanism relies on Schelling points. Example: Two prisoners in separate rooms must pick the same number to be released. Given these numbers:

14237, 59049, 76241, 81259, 90215, 100000, 132156, 157604

Most people choose 100,000 because it's "special" - everyone believes others will choose it, creating a self-reinforcing expectation. This is a Schelling point.

## How SchellingCoin Works

The basic protocol:

1. During an even-numbered block, users submit a hash of the ETH/USD price with their address
2. In the next block, users submit the actual value
3. Sort all correctly submitted values
4. Users who submitted values between the 25th and 75th percentile gain rewards (tokens called "schells")

Why does this work? The truth is the most powerful Schelling point. Everyone wants to provide the correct answer because they expect everyone else will provide the correct answer, and the protocol rewards conformity with the majority.

## Vulnerabilities

The main vulnerability is collusion:
- If an entity controls >50% of votes, they can set the median to anything
- A 49% coalition could pre-announce a false value and others might follow
- Even a 1% coalition offering tiny bribes could theoretically create a new Schelling point

However, in practice, there's a massive coordination problem in unseating the dominant Schelling point (truth), especially when everyone benefiting from the system has incentive to resist disruption.

Another concern is micro-cheating - participants slightly tweaking answers to benefit themselves while staying within the 25/75 boundary. Solutions include:
- Define values unambiguously (e.g., "last ask price at time HH:MM:00")
- Be coarse-grained (e.g., "price rounded to two significant digits")
- Ensure user selection avoids biases

## Beyond Price Feeds

SchellingCoin can be used for more than prices - it can provide:
- Temperature readings
- GDP figures
- Results of computations that can't be efficiently verified

This turns the network into a distributed cloud computing system by having N parties compute and rewarding those providing the most common result. With spot-checking, this can have less than 2x cryptographic overhead.

## Conclusion

SchellingCoin combines with contracts for difference to create a cryptographic asset maintaining stable value while being trust-free. It's not perfect - some trust assumptions remain - but it represents significant progress toward decentralized data feeds and autonomous organizations.

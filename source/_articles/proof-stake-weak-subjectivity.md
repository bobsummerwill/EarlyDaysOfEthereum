---
title: "Proof of Stake: How I Learned to Love Weak Subjectivity"
date: 2014-11-25
author: Vitalik Buterin
embed:
  url: https://blog.ethereum.org/2014/11/25/proof-stake-learned-love-weak-subjectivity
  img: /images/blog.ethereum.org/2026.01.05/next/image.jpg
  site: Ethereum Foundation Blog
---

Proof of stake continues to be controversial, particularly regarding the "nothing at stake" problem. However, the problems are solvable - at a moderate cost. This post explains what that cost is and how to minimize its impact.

## Economic Sets and Nothing at Stake

Consensus algorithms use three main securely decentralized economic sets:
1. **Owners of computing power** - proof of work
2. **Stakeholders** - proof of stake
3. **Social networks** - Ripple/Stellar consensus

Proof of work has a key advantage: participation requires consuming external resources. When mining, you must choose which fork to support - double-voting is unprofitable since it splits your mining power.

With proof of stake, voting is free. In naive implementations, the optimal strategy is to vote on all forks simultaneously. This is the core "nothing at stake" problem.

## Short and Long Range Solutions

For short-range forks (lasting fewer than ~3000 blocks), security deposits solve the problem. To earn rewards for voting, users must deposit funds. If caught double-voting, they lose their deposit. This makes voting on a single fork the dominant strategy again.

However, this only works for short-range forks because deposits must eventually be withdrawable. Once withdrawn, there's no incentive against voting on long-range forks starting far back in history.

Various approaches fail to solve this:
- Permanent deposits create an ossified "nobility" - unacceptable for permanent blockchains
- Transaction-as-proof-of-stake can be gamed by reselling old transactions/keys
- Long-range attacks from genesis block participants remain a fundamental threat

## Weak Subjectivity

The solution requires a fundamental security model change. Three paradigms:

- **Objective**: New nodes can independently reach correct conclusions using only protocol definition and published data
- **Subjective**: Different nodes reach different conclusions; social reputation is required
- **Weakly subjective**: New nodes need (i) protocol definition, (ii) published data, and (iii) a recent valid state (less than N blocks old) to reach correct conclusions

Proof of stake works perfectly under weak subjectivity: simply forbid reverting more than N blocks. Long-range attacks become invalid by protocol definition.

Another approach is exponential subjective scoring (ESS), which explicitly penalizes later forks. ESS mostly avoids permanent network splits while providing rapid security escalation.

## Consequences

What does weakly subjective consensus mean in practice?

- Nodes that are always online are fine
- Nodes coming online periodically (at least every N blocks) are fine
- New nodes and nodes offline for very long periods need a recent block hash from a friend, explorer, or software provider as a "checkpoint"

This may seem unrigorous, but consensus is fundamentally a social process. Humans are good at consensus without algorithms - algorithms exist because humans lack infinite computational power. Weak subjectivity relegates social consensus to maintaining block hashes over long periods, while algorithms handle rapid consensus on complex states.

## Marginal Cost Considerations

Objection: Long-term deposits lock up capital inefficiently, like proof of work.

Counter-arguments:

1. **Marginal cost ≠ total cost**: Most capital locks up at far below marginal cost. Different users have different preferences for locking capital.

2. **Public goods**: Locked capital reduces money supply, increasing currency value - a social benefit redistributed to everyone.

3. **Safe store of value**: Deposits substitute for crisis insurance and enable collateralized loans.

4. **Higher security**: Proof of stake can destroy misbehaving validators' deposits, not just withhold rewards. It can achieve security levels much higher than reward levels, unlike proof of work which cannot destroy ASICs.

## Conclusion

We now know:
1. Proof of stake algorithms can be made secure through weak subjectivity
2. Substantial economic reasons suggest proof of stake is more efficient than proof of work

Proof of stake's strengths and weaknesses are now as well understood as proof of work (where mining centralization uncertainties remain). It's simply a matter of standardizing algorithms and giving developers the choice.

---
title: "The P + epsilon Attack"
date: 2015-01-28
author: Vitalik Buterin
source: https://blog.ethereum.org/2015/01/28/p-epsilon-attack
---

_Special thanks to Andrew Miller for coming up with this attack, and to Zack Hess, Vlad Zamfir and Paul Sztorc for discussion and responses_

One of the more interesting surprises in cryptoeconomics in recent weeks came from an attack on SchellingCoin conceived by Andrew Miller. This attack shows a fundamental problem with Schelling game mechanisms.

## The Attack

Suppose there exists a simple Schelling game where users vote on whether a fact is true (1) or false (0). Each user who votes with the majority gets a reward of P; otherwise they get 0. The theory is that if everyone expects everyone else to vote truthfully, then their incentive is to also vote truthfully to comply with the majority - a self-reinforcing Nash equilibrium.

Now, the attack. Suppose that an attacker credibly commits to pay out X to voters who voted 1 after the game is over, where X = P + ε if the majority votes 0, and X = 0 if the majority votes 1. Now the payoff matrix becomes:

**You vote 0 / You vote 1**
- Others vote 0: P / P + ε
- Others vote 1: 0 / P

Thus, it's a dominant strategy for anyone to vote 1 no matter what they think the majority will do. Hence, the majority will vote 1, and the attacker will not need to pay anything at all. The attack has successfully taken over the mechanism at zero cost.

## Salvaging Schelling Schemes

There are a few avenues to try to salvage the Schelling mechanism:

1. **Multi-round verification**: Use round N + 1 to determine who should be rewarded during round N. However, this mechanism is fragile - if the attacker manages to corrupt some round in the far future, that expectation causes an incentive to cooperate with the attacker to back-propagate to all previous rounds.

2. **Large deposits**: Require participants to put down a large deposit, with a mechanism where the more contention there is, the more funds are at stake. This ensures the bribe must be greater than the deposit rather than just the payout.

3. **Counter-coordination**: Rely on coordinating on voting A with probability 0.6 and B with probability 0.4. However, this suffers from the flaw that if the attacker's bribe is high enough, everyone will defect from this strategy.

## Further Consequences

This attack poses a threat to many cryptoeconomic mechanisms. Particularly interesting is that **proof of work is actually a multi-equilibrium game in much the same way**. If an attacker launches a double-spend attack and credibly commits to paying out 25.01 BTC to everyone who mines on the attacker's fork if it loses, then mining on the attacker's fork becomes a dominant strategy.

Hence, from a cryptoeconomic security standpoint, proof of work has virtually no cryptoeconomic security margin at all. The level of bribe required is proportional only to the mining reward multiplied by the fork length, not the capital cost of 51% of all mining equipment.

In practice, proof of work has survived despite this flaw, and indeed it may continue to survive - it may just be the case that there's a high enough degree of altruism that attackers are not actually 100% convinced that they will succeed. Hence, Schelling schemes too may well simply end up working in practice, even if they are not perfectly sound in theory.

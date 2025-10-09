---
title: "On Public and Private Blockchains"
date: 2015-08-07
author: Vitalik Buterin
embed:
  url: https://blog.ethereum.org/2015/08/07/on-public-and-private-blockchains
  img: https://blog.ethereum.org/_next/image?url=%2Fimages%2Feth-org.jpeg&w=1080&q=75
  site: Ethereum Foundation Blog
---

Over the last year the concept of "private blockchains" has become very popular in the broader blockchain technology discussion. What are the practical differences between public and private blockchains?

There are generally three categories of blockchain-like database applications:

*   **Public blockchains**: A blockchain that anyone in the world can read, send transactions to, and participate in the consensus process. These blockchains are secured by cryptoeconomics and are generally considered to be "fully decentralized".

*   **Consortium blockchains**: A blockchain where the consensus process is controlled by a pre-selected set of nodes. These blockchains may be considered "partially decentralized".

*   **Fully private blockchains**: A blockchain where write permissions are kept centralized to one organization. Likely applications include database management and auditing internal to a single company.

## Advantages of Private Blockchains

Compared to public blockchains, private blockchains have several advantages:

1. The consortium or company can easily change rules, revert transactions, and modify balances when necessary
2. The validators are known, eliminating 51% attack risks
3. Transactions are cheaper since they only need verification by a few trusted nodes
4. Faster consensus with well-connected, trusted nodes
5. Greater privacy when read permissions are restricted

## Advantages of Public Blockchains

Despite these benefits, public blockchains still have substantial value:

1. **Protection from developers**: Public blockchains establish that developers cannot arbitrarily change certain things, which builds trust. This "censorship resistance" is particularly valuable when facing government pressure.

2. **Network effects**: Public blockchains are open and likely to be used by many entities. For example, domain name escrow on a public blockchain can work seamlessly with a currency on the same blockchain, enabling near-zero-cost smart contracts that eliminate the 3-6% fees charged by centralized escrow services.

In some cases, public blockchains are clearly better; in others, private control is necessary. By creating privately administered smart contracts on public blockchains, or cross-chain exchange layers between public and private blockchains, one can achieve many hybrid combinations of these properties.

The solution that is optimal for a particular industry depends heavily on the specific requirements. As is often the case in the real world, it depends.

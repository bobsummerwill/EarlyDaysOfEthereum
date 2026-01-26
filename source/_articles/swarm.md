---
title: Swarm
date: 2014-11-01
description: "Swarm is the decentralized storage layer of the Web3 Holy Trinity, serving as the world computer's disk"
---

Swarm (protocol name: BZZ) is the decentralized storage and content distribution layer of the [Holy Trinity](/articles/holy-trinity/) of Web3, alongside [Ethereum](/articles/stiftung-ethereum/) (computation) and [Whisper](/articles/whisper/) (messaging). In the "world computer" metaphor, if Ethereum is the CPU, Swarm is the disk.

## Origins

The concepts behind Swarm date back to at least 2011, originating from [Daniel Nagy](/people/daniel-nagy/)'s work on improving [BitTorrent](https://www.bittorrent.com/). Nagy had operated [DC++](https://en.wikipedia.org/wiki/DC%2B%2B) nodes and experienced legal troubles related to decentralized file sharing, which motivated his interest in building a more robust, privacy-preserving, and incentivized storage system.

[BitTorrent](https://www.bittorrent.com/) had several limitations that Swarm aimed to address:
- Slow startup times and throttling
- Lack of proper incentives to keep data available
- Individual file chunks not being directly addressable
- Reliance on centralized trackers
- Poor privacy and deniability properties

## Technical Architecture

[Daniel Nagy](/people/daniel-nagy/) presented his vision for Swarm at [DEVCON0](/articles/devcon0/) in Berlin (November 2014), introducing key concepts that would define the project.

The core innovation was the **DPA (Distributed Preimage Archive)** - the idea that instead of storing just the *location* of data in a distributed hash table (DHT), you store the actual data itself at the address determined by its content hash. This approach provides:

- **Content addressing** - Every chunk is addressable by its hash
- **Automatic distribution** - Popular content naturally spreads across the network
- **Plausible deniability** - Nodes can't control what data lands in their "neighborhood"
- **Kademlia routing** - Efficient lookup using logarithmic distance metrics

The **SWAP protocol** (Swarm Accounting Protocol) handles bandwidth incentives through peer-to-peer accounting. Nodes track what they forward for each other, and settlements occur when imbalances grow too large. This was one of the earliest practical implementations of bandwidth incentivization in a decentralized network.

## Development History

[Viktor Trón](/people/viktor-tron/) recalled in his [Early Days of Ethereum interview](/videos/episode010-viktor-tron/) that the Swarm team coalesced around [Daniel Nagy](/people/daniel-nagy/) after DEVCON0:

> "I kind of gathered around him and continued on churning out some code... slowly, slowly kind of organically became a little bit of a sub team after that."

The core team included Viktor Trón, Daniel Nagy, and [Zsolt Felföldi](/people/zsolt-felfoldi/) (who was originally hired to work on Swarm but was redirected to the light client by [Jeff Wilcke](/people/jeff-wilcke/)). [Nick Johnson](/people/nick-johnson/) also worked on Swarm and developed [ENS](https://ens.domains/) while part of the team.

During the Ethereum Foundation's austerity period in 2015, [Vitalik Buterin](/people/vitalik-buterin/) suggested potentially using [IPFS](https://ipfs.tech/) instead and focusing on an incentive layer. However, [Jeff Wilcke](/people/jeff-wilcke/) quietly allowed Swarm development to continue.

Key milestones:
- **December 2016** - First public pilot released as part of Geth 1.5
- **2018** - Proof of concept 3 released; standalone Swarm client
- **2019** - Swarm Summit in Madrid; began spinning out from EF
- **2021** - BZZ token launched; Swarm Association established in Switzerland
- **2021** - New Bee client released, switching from [devp2p](/articles/devp2p/) to [libp2p](https://libp2p.io/)

## Comparison with Alternatives

Compared to [IPFS](https://ipfs.tech/)/[Filecoin](https://filecoin.io/) and [Arweave](https://www.arweave.org/), Swarm offers:

- **Bandwidth incentives** - SWAP protocol for real-time accounting
- **Privacy properties** - Forwarding-based retrieval obscures request origins
- **Postage stamps** - Pay-as-you-go storage rent model
- **No deal negotiation** - Automatic pricing based on supply/demand

## Primary Source

Much of this article is drawn from [Viktor Trón's Early Days of Ethereum interview](/videos/episode010-viktor-tron/), which provides extensive first-hand accounts of Swarm's origins and development.

## Resources

- [Swarm Website](https://ethswarm.org/)
- [The Book of Swarm](https://www.ethswarm.org/the-book-of-swarm-2.pdf) - comprehensive technical documentation

{% include twitter-embed.html
  url="https://x.com/zsfelfoldi/status/1986856703560966261"
%}

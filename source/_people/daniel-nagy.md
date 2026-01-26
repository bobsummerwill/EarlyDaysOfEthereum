---
name: Daniel Nagy
description: Swarm
photo: /images/archive.org/ethdev.com/20150315012946/daniel-nagy.jpg
start: Oct 2014
devcon0: '1270'
social:
  github: https://github.com/nagydani
  linkedin: https://www.linkedin.com/in/daniel-a-nagy-4b52962/
---

Daniel Nagy was the original architect of [Swarm](/articles/swarm/), bringing concepts he had developed since at least 2011 to improve on [BitTorrent](https://www.bittorrent.com/)'s limitations.

## Background

Daniel had a background in cryptography and security, and had operated [DC++](https://en.wikipedia.org/wiki/DC%2B%2B) nodes. [Viktor Trón](/people/viktor-tron/) recalled in his [Early Days of Ethereum interview](/videos/episode010-viktor-tron/):

> "Actually some of us like Dani operating a DC++ node had some legal troubles maybe... So that's kind of brought us, brought him quite directly in the kind of realm of implementing Swarm. This idea of a decentralized storage and incentivization, etc."

Daniel saw the qualities of BitTorrent but also its drawbacks - slow startup times, lack of proper incentives, chunks not being directly addressable, reliance on centralized trackers, and poor privacy properties. His vision for Swarm addressed all of these issues.

## Joining Ethereum

Daniel started learning about Ethereum around April 2014. He was the fourth to join [Jeff Wilcke](/people/jeff-wilcke/)'s [ÐΞV Amsterdam](/articles/dev-amsterdam/) team, hired as a contractor in October 2014. Per [Jeff's Ethereum ÐΞV Update I](/articles/jeffs-ethereum-dev-update-i/):

> "Daniel has a history in crypto and security and his first tasks is to create a comprehensive spec for our DHT implementation and the development thereof."

Daniel and [Viktor](/people/viktor-tron/) both attended [DEVCON0](/articles/devcon0/) in November 2014, where Daniel presented on Swarm:

{% include video-embed.html
  name="Ethereum ÐΞVcon-0: Keeping the Public Record Safe and Accessible"
%}

## Swarm Origins

[Zsolt Felföldi](/people/zsolt-felfoldi/) noted that Daniel's ideas for Swarm went back to at least 2011:

{% include twitter-embed.html
  url="https://x.com/zsfelfoldi/status/1986856703560966261"
%}

The technical architecture Daniel designed included:
- **DPA** (Distributed Preimage Archive) - Content-addressed storage using Merkle trees
- **Kademlia** - DHT-based routing for efficient chunk retrieval
- **SWAP** (Swarm Accounting Protocol) - Bandwidth incentivization

## Ethersphere

Daniel worked with Viktor through [Ethersphere](/articles/ethersphere/), the GitHub organization Viktor created in March 2014 that became the home for Swarm development. [Zsolt Felföldi](/people/zsolt-felfoldi/) joined them in 2015, initially to work on the light client.

## Later Work

During the Ethereum Foundation's austerity period in 2015, Swarm was officially defunded, though [Jeff Wilcke](/people/jeff-wilcke/) quietly allowed development to continue. The first Swarm release was included in Geth 1.5 in December 2016.

Swarm eventually spun out from the Ethereum Foundation in 2019-2021, with the Swarm Association founded in Switzerland and the BZZ token launched in 2021.

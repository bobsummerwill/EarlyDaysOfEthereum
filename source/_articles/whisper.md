---
title: Whisper
date: 2014-05-01
description: "Whisper was the decentralized messaging layer of the Web3 Holy Trinity, designed for dark, ephemeral communication"
---

Whisper (protocol name: SHH) was the peer-to-peer messaging protocol designed to be the communication layer of the [Holy Trinity](/articles/holy-trinity/) of Web3, alongside [Ethereum](/articles/stiftung-ethereum/) (computation) and [Swarm](/articles/swarm/) (storage). In the "world computer" metaphor, Whisper served as the messaging bus enabling real-time communication between decentralized applications.

## Origins

The protocol was conceived in May 2014 as part of [Gavin Wood](/people/gavin-wood/)'s Web3 vision, first presented at meetups in London's East End. The name "Whisper" and protocol identifier "SHH" were part of [Vitalik Buterin](/people/vitalik-buterin/)'s playful naming conventions - along with "BZZ" for Swarm, these names used Icelandic-inspired letters and onomatopoeia.

[Viktor Trón](/people/viktor-tron/) recalled in his [Early Days of Ethereum interview](/videos/episode010-viktor-tron/):

> "That's when BZZ, SSH was invented. Also Vitalik's gimmicks."

## Design Goals

Whisper was designed with fundamentally different goals than traditional messaging systems. Rather than optimizing for throughput or delivery guarantees, it prioritized:

- **Darkness** - Messages could not be traced to their origin; the network topology obscured who sent what
- **Ephemeral** - Messages were not permanently stored; they existed only briefly in the network
- **Plausible deniability** - Nodes could not prove what messages they had or hadn't seen or forwarded
- **Low latency** - Suitable for real-time dapp communication
- **Censorship resistance** - No central point that could block messages

The protocol used a flooding approach where messages propagated through the network with time-to-live (TTL) values. Nodes would receive many messages they couldn't decrypt (because they weren't the intended recipient), providing cover traffic that obscured communication patterns.

## Development

[Vlad Gluhovsky](/people/vlad-gluhovsky/) was the primary developer of Whisper, working on the protocol from 2015. The protocol went through several versions:

- **Whisper v2** - Early implementation in Geth
- **Whisper v5** - Major revision with improved efficiency
- **Whisper v6** - Final version before deprecation

Vlad presented "Whisper: Achieving Darkness" at Devcon 3 in Cancún (November 2017) with [Guillaume Ballet](/people/guillaume-ballet/), explaining the protocol's privacy properties and technical architecture.

{% include content-embed.html
  src="https://www.youtube.com/embed/koZizelOUeI"
  url="https://www.youtube.com/watch?v=koZizelOUeI"
  title="Whisper: Achieving Darkness"
  author="Vlad Gluhovsky & Guillaume Ballet"
  date="Nov 26, 2017"
  site="Ethereum Foundation (Devcon 3)"
%}

## Challenges and Deprecation

Whisper faced several challenges that limited its adoption:

- **Scalability** - The flooding approach meant every node processed every message, limiting throughput
- **Resource usage** - Significant bandwidth and CPU overhead for cover traffic
- **Complexity** - Difficult for application developers to use correctly
- **Limited tooling** - Fewer libraries and documentation compared to other messaging solutions

Whisper was included in Geth but was eventually deprecated and removed. The Ethereum Foundation shifted focus to other priorities, and the messaging layer of Web3 remained less developed than computation (Ethereum) or storage (Swarm).

## Legacy: Waku

Whisper's spiritual successor is [Waku](https://waku.org/), developed by [Status](https://status.im/). Waku builds on Whisper's design principles while addressing its limitations:

- **Waku v1** - Direct fork of Whisper with minor improvements
- **Waku v2** - Major redesign using libp2p, with better scalability and modularity

Waku maintains Whisper's focus on privacy and censorship resistance while offering improved performance and a more sustainable architecture. It's now part of the broader [Logos](https://logos.co/) technology stack.

## The Unfulfilled Vision

The deprecation of Whisper represents one of the unfulfilled promises of the original Web3 vision. While Ethereum thrived and Swarm eventually spun out as an independent project, the messaging layer never achieved the same level of maturity or adoption. Many dapps today rely on centralized messaging services, representing a gap in the fully decentralized stack that the 2014 vision imagined.

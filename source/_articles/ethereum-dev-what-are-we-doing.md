---
title: "Ethereum ÐΞV: What are we doing?"
lowercase_title: "ethereum dev: what are we doing?"
date: 2014-12-17
author: Gavin Wood
source: https://blog.ethereum.org/2014/12/17/ethereum-dev
---

OK so a minor update about what we are (and are not) doing here at Ethereum DEV.

We are, first and foremost, developing a robust quasi-Turing-complete blockchain. This is known as Ethereum. Aside from having quasi-Turing-completeness, it delivers on a number of other important considerations, stemming from the fact we are developing entirely new blockchain technology including:

*   speedy, through a 12 second blocktime;
*   light-client-friendly through the use of Merkle roots in headers for compact inclusion/state proofs and DHT integration to allow light clients to host & share small parts of the full chain;
*   ÐApp-friendly, even for light-clients, through the use of multi-level Bloom filters and transaction receipt Merkle tries to allow for lightweight log-indexing and proofs;
*   finite-blockchain-friendly - we designed the core protocol to facilitate upgrading to this technology, further reducing light-client footprint and helping guarantee mid-term scalability;
*   ASIC-unfriendly - through the (as yet unconfirmed) choice of PoW algo and the threat we'll be upgrading to PoS in the Not-Too-Distant future.

It is robust because:

*   it is unambiguously formally defined, allowing a highly tractable analysis, saturation tests and formal auditing of implementations;
*   it has an extensive, and ultimately complete, set of tests for providing an exceptionally high degree of likelihood a particular implementation is conformant;
*   modern software development practices are observed including a CI system, internal unit tests, strict peer-reviewing, a strict no-warnings policy and automated code analysers;
*   its mesh/p2p backend (aka libp2p) is built on well-tested secure foundations (technology stemming from the Kademlia project);
*   official implementations undergo a full industry-standard security audit;
*   a large-scale stress test network will be instituted for profiling and testing against likely adverse conditions and attacks prior to final release.

Secondly (and at an accordingly lower priority), we are developing materials and tools to make use of this unprecedented technology possible. This includes:

*   developing a single custom-designed CO (contract-orientated) language;
*   developing a secure natural language contract specification format and infrastructure;
*   formal documentation for help coding contracts;
*   tutorials for help coding contracts;
*   sponsoring web-based projects in order to get people into development;
*   developing a block chain integrated development environment.

Thirdly, to facilitate adoption of this technology, gain testers and spur further development we are developing, collaborating over and sponsoring a number of force-multiplying technologies that leverage pre-existing technology including:

*   a graphical client "browser" (leveraging drop-in browser components from the Chromium project and Qt 5 technology);
*   a set of basic contracts and ÐApps, including for registration, reputation, web-of-trust and accounting (leveraging the pre-existing compilers and development tech);
*   a hybrid multi-DHT/messaging system, codenamed Whisper (leveraging the pre-existing p2p back end & protocols);
*   a simple reverse-hash lookup DHT, codenamed Swarm (also leveraging the pre-existing p2p back end & protocols), for which there is an ongoing internal implementation, but which could end up merging or being a collaboration with the IPFS project.

We are no longer actively targeting multiple languages (LLL and Mutan are mothballed, Serpent is continued as a side project). We are not developing any server technology. And, until there is a working, robust, secure and effective block chain alongside basic development tools, other parts of this overall project have substantially lower priority.

Following on from the release of the Ethereum block chain, expect the other components to get increasingly higher amounts of time dedicated to them.

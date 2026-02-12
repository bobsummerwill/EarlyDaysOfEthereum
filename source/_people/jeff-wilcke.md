---
name: Jeff Wilcke
description: Ethereum co-founder, creator of Go-Ethereum (Geth) and Mutan
photo: /images/archive.org/ethereum.org/20140701165441/wilcke-jeffrey.jpg
start: Dec 2013
end: Feb 2017
devcon0: '2018'
social:
  github: https://github.com/obscuren
  linkedin: https://www.linkedin.com/in/jeffreywilcke
  medium: https://medium.com/@jeffehh
links:
  - title: "Old GitHub account (stygeo, pre-Ethereum)"
    url: https://github.com/stygeo
---

Jeff Wilcke is an Ethereum co-founder who created [Go-Ethereum (Geth)](/articles/geth/), the client that became Ethereum's dominant implementation. He led the [ÐΞV Amsterdam](/articles/dev-amsterdam/) team and was one of three directors of Ethereum ÐΞV alongside [Vitalik Buterin](/people/vitalik-buterin/) and [Gavin Wood](/people/gavin-wood/).

## Early Development

Jeff started building the Go implementation of Ethereum just days after Christmas 2013, around the same time Gavin Wood began the C++ client. Bob Summerwill described the timing:

> "Various other people sort of joined in on the efforts in December, including Gav and Jeff who started the C++ and Go clients, respectively, at the very end—at the very end of December, kind of Christmas projects for them both." — Bob Summerwill

Jeff also created [Mutan](/articles/mutan/), one of the earliest smart contract languages (originally called HLL - High Level Language). As Solidity matured, Mutan was deprecated in July 2015, just weeks before mainnet launch.

## The DEV Amsterdam Hub

Jeff founded and led [ÐΞV Amsterdam](/articles/dev-amsterdam/), Ethereum's Dutch development hub. In his [first development update](/articles/jeffs-ethereum-dev-update-i/) (November 2014), he introduced himself:

> "My name is Jeff, a founder of Ethereum and one of the three directors (alongside Vitalik and Gavin) of Ethereum ÐΞV, the development entity building Ethereum and all the associated tech."

The Amsterdam team he assembled included:
1. [Alex van de Sande](/people/alex-van-de-sande/) - UX engineer working on Mist browser
2. [Viktor Trón](/people/viktor-tron/) - Working on DEVP2P networking
3. [Felix Lange](/people/felix-lange/) - Go developer who rewrote the P2P package
4. [Daniel Nagy](/people/daniel-nagy/) - DHT and [Swarm](/articles/swarm/) development
5. [Maran Hidskes](/people/maran-hidskes/) - Administration

Viktor Trón recalled meeting Jeff early in the project:

> "And then there is when I met Jeff first. So Jeff became my boss later." — Viktor Trón

## Development Style

[Christoph Jentzsch](/people/christoph-jentzsch/) observed Jeff's pragmatic approach compared to the more combative dynamic between client teams:

> "There was always a fight between Geth and the C++ team about who's the best. And Gavin was having a big ego. And Jeff was more like, just give me the new spec, I just code it." — Christoph Jentzsch

Bob Summerwill noted the Geth team's focus:

> "And then on Geth, on Jeff's side - but just doing Geth, right? It wasn't a broader thing. And that Geth team were working closer with Mist, with Fabian on Mist, for a good while." — Bob Summerwill

## The Red Wedding

Jeff was one of the co-founders who remained after the June 2014 leadership restructuring known as the "[Red Wedding](/articles/red-wedding/)." He flew from Amsterdam to Zug for the pivotal meeting where Vitalik made decisions about the project's direction. Jeff was among those asked to continue—alongside Mihai, Gavin, Joe, and Anthony—while Charles Hoskinson and [Amir Chetrit](/people/amir-chetrit/) were removed.

## DEVCON0 and Multi-Client Development

At [DEVCON0](/articles/devcon0/) in Berlin (November 2014), Jeff participated in the client panel discussion alongside Gavin Wood (C++), [Heiko Hees](/people/heiko-hees/) (PyEthereum), and [Martin Becze](/people/martin-becze/) (Node-Ethereum).

Christoph Jentzsch described the decision-making process among the core technical leaders:

> "In the end, yes, Vitalik, Gavin, and Jeff just made decisions and executed as quick as they could. So this all changed after launch. Then things became a bit slowed down and people consolidated, and every change was a big thing, rightfully so." — Christoph Jentzsch

## Go-Ethereum Development

In his [second development update](/articles/jeffs-ethereum-dev-update-ii/) (January 2015), Jeff detailed the progress toward launch:

> "The audit teams will tear it apart and see if the repo contains anything incorrectly implemented as well as search for any major security flaws in the design and implementation. We've been pretty solid on tests, testing implementation details as well as consensus tests (thanks to Christoph) and will continue to add more tests over time."

The Amsterdam hub focused on key infrastructure:
- **go-ethereum (Geth)** - The Go client that would become dominant
- **Mist browser** - The flagship consumer product
- **ethereum.js** - Cross-implementation JavaScript framework
- **Whisper** - Messaging protocol
- **[Swarm](/articles/swarm/)** - Decentralized storage

## Supporting Swarm Through Austerity

During the Ethereum Foundation's 2015 funding crisis, when budgets were being cut, Jeff quietly allowed [Swarm](/articles/swarm/) development to continue. Viktor Trón recalled:

> "I remember that maybe it's not a secret anymore but Jeff kind of let us keep working on Swarm throughout this period." — Viktor Trón

## Post-Launch Bug Fix

When the first consensus bug occurred weeks after the July 2015 mainnet launch, Jeff's team responded quickly. Christoph Jentzsch found the issue:

> "It was, for me, almost the middle of the night at 10 PM or 11 PM. So I remember seeing this, looking for one hour or so, finding what's the issue. Then I found it, wrote a test about it. Peter Szilágyi was right, Geth was wrong. So we gave it to Jeff. They fixed this. I think we said one hour, and after five hours, everything was done." — Christoph Jentzsch

## Legacy

Jeff remained with the Ethereum Foundation through February 2017. The Go-Ethereum client he created became Ethereum's dominant implementation, powering the majority of the network. His pragmatic "just give me the spec, I'll code it" approach helped establish Ethereum's multi-client development culture.

## Primary Sources

This profile draws from multiple Early Days of Ethereum sources:
- [Jeff's Ethereum ÐΞV Update I](/articles/jeffs-ethereum-dev-update-i/) (November 2, 2014)
- [Jeff's Ethereum ÐΞV Update II](/articles/jeffs-ethereum-dev-update-ii/) (January 6, 2015)
- [Episode 3](/videos/episode003-bob-summerwill/) with Bob Summerwill
- [Episode 6](/videos/episode006-christoph-jentzsch/) with Christoph Jentzsch
- [Episode 10](/videos/episode010-viktor-tron/) with Viktor Trón

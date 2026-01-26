---
title: devp2p
date: 2014-07-01
description: "devp2p is Ethereum's peer-to-peer networking protocol, developed as part of the original client implementations"
---

devp2p is the peer-to-peer networking protocol stack developed for Ethereum, handling node discovery and communication between clients. It was created as part of the original Ethereum client development in 2014.

## Origins

The devp2p protocol emerged from early 2014 development work, with [Alex Leverington](/people/alex-leverington/) being a key contributor to the design. [Viktor Trón](/people/viktor-tron/) recalled working on devp2p specs after meeting Alex at [DEVCON0](/articles/devcon0/):

> "Especially special memory is my meeting with Alex Leverington... the peer to peer fame. Yeah, very interesting. We had lots of discussions. Yeah, very adamant on, very stubborn with his own way of thinking about the protocol."

## Technical Components

devp2p consists of several layers:

- **RLPx** - The transport protocol providing encrypted, authenticated connections using [RLP](https://ethereum.org/en/developers/docs/data-structures-and-encoding/rlp/) (Recursive Length Prefix) encoding
- **Node Discovery** - A Kademlia-based DHT for finding peers on the network
- **Wire Protocol** - The application-level protocol for Ethereum (eth), [Swarm](/articles/swarm/) (bzz), [Whisper](/articles/whisper/) (shh), and other sub-protocols

The protocol runs over TCP and uses ECIES for encryption and node identity based on secp256k1 public keys.

## "Not Invented Here"

[Viktor Trón](/people/viktor-tron/) noted in his [Early Days of Ethereum interview](/videos/episode010-viktor-tron/) that Ethereum suffered from "not invented here" syndrome:

> "You know how Ethereum kind of suffered like this kind of, what's the word for this?... Not invented here syndrome... the RLP, RLPx stuff. Then we have their own serialization protocol, like the devp2p as well."

At the time devp2p was developed, [libp2p](https://libp2p.io/) (part of [Protocol Labs](https://protocol.ai/)' [IPFS](https://ipfs.tech/) project) already existed. In retrospect, some considered it may have been better to build on existing work rather than creating a new stack from scratch.

## Limitations

devp2p has several limitations that have caused challenges:

- **No browser support** - Cannot run in web browsers, limiting light client possibilities
- **Maintenance burden** - Custom protocol requires ongoing development
- **TCP only** - Unlike libp2p, doesn't support multiple transport protocols

There were discussions in 2016-2018 about bridging devp2p and libp2p, potentially allowing relay nodes between the two protocols, but this never materialized.

## Evolution

The protocol became embedded in execution clients (Geth, etc.) and remains in use today for the execution layer. However:

- **Consensus clients** (post-Merge) use [libp2p](https://libp2p.io/) instead
- **[Swarm](/articles/swarm/)** switched to libp2p with the Bee client in 2021
- Modern clients no longer use RLP for new features

Viktor noted: "It was only after we, after Swarm left the foundation is when we kind of switched to the libp2p as well, started the Bee client development."

## Resources

- [devp2p specification on GitHub](https://github.com/ethereum/devp2p)
- [RLPx specification](https://github.com/ethereum/devp2p/blob/master/rlpx.md)

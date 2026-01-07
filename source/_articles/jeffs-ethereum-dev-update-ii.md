---
title: "Jeff's Ethereum ÐΞV Update II"
date: 2015-01-06
author: Jeffrey Wilcke
embed:
  url: https://blog.ethereum.org/2015/01/06/jeffs-ethereum-dev-update-2
  img: /images/blog.ethereum.org/2026.01.05/next/image.jpg
  site: Ethereum Foundation Blog
---

First of all, [happy new year](https://answers.yahoo.com/question/index?qid=20080105074822AAveQrL)! What a year it has been. With a little luck we'll surpass last year with an even more awesome year. It's been too long since I've given an update on my side of things and that of the Go team and mostly due to a lack of time. I've been so incredibly busy and so many things have happened these past 2 months I've hardly had time to sit down and assess it all.

As you may be well aware the audit is looming around the corner and my little baby (go-ethereum!) will undergo it's full inspection very, very soon. The audit teams will tear it apart and see if the repo contains anything incorrectly implemented as well as search for any major security flaws in the design and implementation. We've been pretty solid on tests, testing implementation details as well as consensus tests (thanks to Christoph) and will continue to add more tests over time. We'll see how they hold up during the audit (though I'm confident we'll be fine, it's still a little bit scary (-:)

## Development

**PoC-7** has been released now for a about a week and has been quite stable (and growing in size!). We're already hard at work to finalising PoC-8 which includes numerous small changes:

*   Adjusted block time back to 12s (was 4s)
*   Op code PREVHASH has become BLOCKHASH( N ) and therefore PREVHASH = BLOCKHASH(NUMBER - 1)
*   We've added an additional pre-compiled contract at address 0x04 which returns the given input (acts like copy / memcpy)

### Ongoing

#### P2P

Felix has been hard at work on our new P2P package which has now entered in to v0.1 (PoC-7) and will soon already undergo it's first upgrade for PoC-8. Felix has done an amazing job on the design of the package and it's a real pleasure to work with. Auto-generated documentation can be found at [GoDoc](http://godoc.org/github.com/ethereum/go-ethereum/p2p).

#### Whisper

A month or so back I finished the first draft of [Whisper](https://github.com/ethereum/go-ethereum/wiki/How-to-Whisper) for the Go implementation and it's now passing whisper messages nicely around the network and uses the P2P package mentioned earlier. The Go API is relatively easy and requires almost zero setup.

#### Backend

The backend stack of ethereum has also received its first major (well deserved) overhaul. Viktor's been incredibly hard at work to reimplement the download manager and the ethereum sub protocol.

#### Swarm

Since the first day Dani joined the team he's passionately been working on the [peer selection algorithm](https://github.com/ethereum/wiki/wiki/Cademlia-Peer-Selection) and [distributed preimage archive](https://github.com/ethereum/wiki/wiki/Distributed-Preimage-Archive). The DPA will be used for our Swarm tech. The spec is about 95% complete and roughly about 50% has been implemented. Progress is going strong!

Both [go-ethereum/p2p](https://github.com/ethereum/go-ethereum/tree/develop/p2p) and [go-ethereum/whisper](https://github.com/ethereum/go-ethereum/tree/develop/whisper) have been developed in such a way that neither require ethereum to operate. If you're developing in Go and your application requires a P2P network or (dark) messaging try out the packages. An example sub protocol can be found [here](https://github.com/ethereum/go-ethereum/wiki/Peer-to-Peer) and an example on how to use Whisper can be found [here](https://github.com/ethereum/go-ethereum/wiki/How-to-Whisper).

## Ams Hub

Now that the [hub](https://twitter.com/jeffehh/status/530747769611231234) is finally set up you're free to drop by and grab a coffee with us. You can find us in the rather posh neighbourhood of Amsterdam Zuid near Museumplein (Alexander Boerstraat 21).

In my next post I hope I'll have a release candidate for PoC-8 and perhaps even a draft implementation of **swarm**. But until then, happy whispering and mining!

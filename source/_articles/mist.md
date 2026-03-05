---
title: Mist
description: The Mist browser is the tool of choice to browse and use Ðapps
---

Mist was a desktop Web3 browser, first envisaged by Alex van de Sande in November 2014, just before [DEVCON0](/articles/devcon0/).

{% include video-embed.html
  name="Ethereum presents Mist"
%}

[Yann Levreau](/people/yann-levreau) built an early prototype of the Mist browser ([AlethZero](/articles/aleth-zero/)) before the project was restarted in JavaScript.

[Fabian Vogelsteller](/people/fabian-vogelsteller/) joined ETHDEV in January 2015, hired specifically because his expertise in building single-page web apps (including the [Meteor](https://www.meteor.com) framework) made him the right person to bring Alex's vision to life.  The [Mist GitHub repository](https://github.com/ethereum/mist) was created on June 10, 2015.  Prior to the full Mist release, the first public milestone was the Ethereum Wallet, a "single app browser" containing just the Wallet dapp as a constrained test of the infrastructure, which had its first developer preview on September 16, 2015.  The first public Mist browser release followed on July 8, 2016.

Fabian left the Ethereum Foundation in August 2018, after which the remaining team continued maintenance.  Mist was discontinued in March 2019.  The primary cause was the slow syncing of full Ethereum nodes: Mist required users to run a local node for full decentralization, and as the chain grew, syncing could take half an hour after even a week offline.  [MetaMask](https://metamask.io/) outcompeted Mist by injecting a lightweight provider into existing browsers and connecting to a remote node, a trade-off the Mist team had deliberately avoided.  The team had long hoped that cross-client light client support would solve the syncing problem, and later versions of Mist did ship with Geth's light client, but by then users had largely moved on to MetaMask.  Security concerns were an additional factor in the final decision to shut down:

{% include content-embed.html
  url="https://avsa.medium.com/sunsetting-mist-da21c8e943d2"
  title="Sunsetting Mist: What's ahead for our team"
  description="Announcement that Mist would no longer be supported"
  date="March 22, 2019"
  author="Alex van de Sande"
  img="/images/medium.com/2025.12.01/avsa/sunsetting-mist-da21c8e943d2/mist-logos.jpg"
%}

The core Mist development team across the whole project time-span was:

- [Alex van de Sande](/people/alex-van-de-sande/)
- [Fabian Vogelsteller](/people/fabian-vogelsteller/)
- [Ramesh Nair](/people/ramesh-nair/)
- [Luca Zeug](/people/luca-zeug/)
- [Victor Maia](/people/victor-maia/)
- [Everton Fraga](/people/everton-fraga/)
- [Marc Garreau](/people/marc-garreau/)
- [Ryan Ghods](/people/ryan-ghods/)

{% include twitter-embed.html
  url="https://x.com/feindura/status/1995577334360146101"
%}

Much of the detail in this article is drawn from [Fabian Vogelsteller's Early Days of Ethereum interview](/videos/episode012-fabian-vogelsteller/).

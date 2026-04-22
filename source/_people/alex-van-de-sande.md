---
name: Alex van de Sande
nickname: avsa
description: UX designer behind Mist and the original Web3 browser vision
photo: /images/archive.org/ethdev.com/20150315012946/alex-van-de-sande.jpg
start: Sep 2014
end: Jan 2019
interview: /videos/episode013-alex-van-de-sande/
devcon0: '1598'
social:
  github: https://github.com/alexvandesande
  twitter: https://x.com/avsa/
  linkedin: https://www.linkedin.com/in/alexvandesande/
  reddit: https://www.reddit.com/user/avsa/
  website: https://vandesande.design
---

Alex van de Sande is the UX designer who conceived [Mist](/articles/mist/), the original Ethereum Web3 browser, and co-created the Ethereum Wallet, the first serious end-user dapp experience on Ethereum. More than almost anyone else in the early project, Alex tried to answer a simple question: if Ethereum was going to become a platform for real applications, what would it actually feel like for normal people to use?

## Discovering Ethereum Through AlethZero

In his own [Episode 13](/videos/episode013-alex-van-de-sande/) interview, Alex described encountering Ethereum in 2014 through the white paper and the early [AlethZero](/articles/aleth-zero/) graphical client. He found the underlying idea compelling, but the interface deeply alienating. He compared using it to trying to land a plane.

Instead of just dismissing the project, Alex made a redesigned mockup of the interface and posted it to [Reddit](https://www.reddit.com/). That directly led to conversations with Gavin Wood and Jeff Wilcke. In Alex's retelling, [Gavin](/people/gavin-wood/) response was important: he pushed Alex beyond simply improving a GUI and toward thinking about a full browser for decentralized applications. Alex said he was hired by [the Foundation](/articles/stiftung-ethereum/) in September 2014.

## Conceiving Mist

Just before [DEVCON0](/articles/devcon0/) in November 2014, Alex presented the early [Mist browser concept](https://www.youtube.com/watch?v=IgNjs_WaFSc). Mist was not meant to be just another wallet. It was a concrete realization of the early Ethereum Holy Trinity vision: Ethereum for computation, [Swarm](/articles/swarm/) for storage, and [Whisper](/articles/whisper/) for messaging, all surfaced through a browser that could run decentralized apps directly.

Christoph Jentzsch later described the importance of Alex's presentation in his own [Episode 6](/videos/episode006-christoph-jentzsch/) interview:

> "The Mist browser... this also really made us understand how Ethereum could work for the end user."

That was Alex's real contribution in the early years: not protocol design, but product imagination. He translated a loose collection of white-paper ideas into a credible picture of what a decentralized application platform could look like for actual users.

{% include video-embed.html
  name="Ethereum presents Mist"
%}

## Recruiting the Right Builder

Alex was not just the designer of Mist's concept. He was also central to finding the person who could help build it. In [Fabian Vogelsteller's interview](/videos/episode012-fabian-vogelsteller/), Fabian recalled that Alex immediately recognized the relevance of his single-page app background and pushed internally to bring him in:

> "Alex Van de Sande... had this whole idea of creating this Mist browser concept... when Alex heard about that there's this guy that came up here that can build single page apps, then Alex thought, oh, that could be the person who can help with building the Mist browser."

That judgment proved correct. Fabian Vogelsteller joined in January 2015, specifically to help turn Alex's browser vision into a working JavaScript product.

## Building the First Dapp Experience

Alex worked remotely from Rio de Janeiro, usually three to five hours offset from the Berlin office. Organizationally he sat closer to [Jeff](/people/jeff-wilcke/)'s team, and in [Episode 13](/videos/episode013-alex-van-de-sande/) he described the early orbit around that work as essentially "me, [Felix](/people/felix-lange/) and [Viktor](/people/viktor-tron/)," with the group mostly working remotely and only meeting in person once or twice a year.

Together, Alex and Fabian Vogelsteller built the first working version of Mist in roughly three months. The [Mist article](/articles/mist/) notes that the Mist repository was created on June 10, 2015, that the first public milestone was the Ethereum Wallet developer preview on September 16, 2015, and that the first public Mist browser release followed on July 8, 2016. Fabian later described the Ethereum Wallet as the first proper end-user dapp on Ethereum, and credited Alex as the person who had framed the original vision.

## The Dapp Store Dream

Alex's own interview is especially valuable because it captures how ambitious and naive the early roadmap looked from inside ETHDEV. Recalling his DEVCON0-era Mist talk, he laughed at how many things seemed as if they would be straightforward:

> "Of course it's going to take like maybe a month of development and then we're done."

In Alex's mind, the browser would expose a kind of dapp store: name systems, prediction markets, multisigs, and other applications that teams could build quickly and users could simply download and run. Looking back, he saw that almost every one of those "quick" features turned into a multi-year effort or an entire company.

## ENS as the Best Example

Alex's account of [ENS](https://ens.domains/) is one of the most important pieces of primary source material in his interview. He described ENS as something he originally launched almost as a side feature while focused on the browser:

> "I ended up launching ENS as a feature... I was like, yeah, great, I can go back to work on what I care about, browser."

Instead, Nick Johnson kept developing it until it escaped the browser roadmap entirely and became its own ecosystem. For Alex, ENS was the clearest demonstration that the hard part of Ethereum was not writing a simple contract, but turning a promising concept into a robust, widely used product and institution.

## "Ten Lines of Code"

Alex also remembered the optimism of the period in a more playful form: the famous ETHDEV code T-shirts that claimed you could "run DNS in 10 lines of code," "run a democracy in 100 lines," or "make your own money in 50." He loved presenting that vision and doing live demos where he would deploy a contract, fund it with five ether, and show a DAO or democracy running in minutes.

The deeper point was not that real systems were easy. It was that Ethereum made it newly plausible for tiny teams to create powerful institutional machinery in public. That intuition stayed with Alex even after the original browser strategy failed.

## The Spaceship and the Moment It Almost Worked

One of the best scenes in Alex's interview is his recollection of the so-called "Spaceship" period in 2015. He remembered being there with [Gavin](/people/gavin-wood/), Fabian Vogelsteller, Jeff Wilcke, and others while they were trying to make the stack work together. He also described a memorable Amsterdam demo where the browser, [Swarm](/articles/swarm/), and chat were all briefly working together:

> "Viktor came and had built Swarm and we were all playing around with a chat application running on Swarm on a browser... we were like, it's happening."

That moment matters historically because it shows the original Web3 concept was not merely theoretical. For a while, the team really believed the pieces were converging. The failure came later, when those pieces proved too immature or too hard to operate at scale.

## Why Mist Failed

Alex's own retrospective on Mist is unusually clear. The browser lost because it required users to run too much infrastructure locally before the technology was ready. In his words, every user was expected to run full nodes for Ethereum, Swarm, and Whisper. Sync times worsened from minutes to hours to days. Local-first ideals collided with real-world usability.

He contrasted this with [MetaMask](https://metamask.io/), which won by taking the more convenient path: injecting Web3 into an existing browser and depending on remote infrastructure rather than insisting on the full local stack. Alex did not frame this as a betrayal so much as an engineering reality. Convenience beat purity.

The [Mist article](/articles/mist/) adds the rest of the arc: later versions did try to benefit from [Geth](/articles/geth/) light client work, but the user migration had already happened, and security concerns ultimately helped force the March 2019 shutdown that Alex announced in his [sunsetting post](https://avsa.medium.com/sunsetting-mist-da21c8e943d2).

## Legacy

Alex's legacy is bigger than Mist as a product. He helped define what "Web3" was supposed to feel like before the term became a buzzword. He treated Ethereum not just as a protocol, but as a user experience problem. He was one of the first people inside the project to insist that if decentralized applications were going to matter, they needed a compelling front end and a coherent product story.

Even in failure, Mist shaped the ecosystem. It influenced how people thought about wallets, dapps, identity, decentralized hosting, messaging, and what was missing from Ethereum's stack. And in Alex's own telling, many of the ideas that people nostalgically call "Mist 2" are still waiting for the underlying technology to catch up.

## Primary Sources

This profile draws from:
- [Episode 13](/videos/episode013-alex-van-de-sande/), Alex van de Sande's own interview, for his account of discovering Ethereum, conceiving Mist, working with Jeff and Gavin, launching ENS as a feature, and why Mist failed
- [Episode 12](/videos/episode012-fabian-vogelsteller/), for Fabian's account of Alex recruiting him into the Mist effort and building the first working browser and wallet together
- [Episode 6](/videos/episode006-christoph-jentzsch/), for Christoph Jentzsch's account of Mist's impact on how the team understood Ethereum's end-user potential
- The [Mist](/articles/mist/) article, for product timeline details including repository creation, developer preview, public release, and discontinuation

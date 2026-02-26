---
name: Fabian Vogelsteller
photo: /images/personal/fabian-vogelsteller/telegram/2025.11.23/fabian-vogelsteller.jpg
description: ERC-20, Mist and web3.js
start: Jan 2015
end: Aug 2018
interview: /videos/episode012-fabian-vogelsteller/
social:
  github: https://github.com/frozeman
  linkedin: https://www.linkedin.com/in/fabian-vogelsteller-46365042/
  twitter: https://x.com/feindura
---

Fabian Vogelsteller is the author of the [ERC-20](https://eips.ethereum.org/EIPS/eip-20) token standard, lead developer of the [Mist](/articles/mist/) browser, and long-time maintainer of [web3.js](https://github.com/ethereum/web3.js). A self-taught web developer who joined the Ethereum Foundation in January 2015, he built much of the foundational dapp tooling stack in Ethereum's first six months, bridging the gap between the protocol layer and end users.

## Background

Before Ethereum, Fabian was a web developer based in Berlin. He built websites from age 14, created a flat-file PHP content management system called [Feindura](https://web.archive.org/web/20141217063119/http://feindura.org/) (which became his online identity), and later became deeply involved with [Meteor.js](https://www.meteor.com), one of the first reactive JavaScript frameworks. He wrote [a book about building single-page apps with Meteor](https://www.packtpub.com/product/building-single-page-web-apps-with-meteor/9781783988129)—experience that proved directly relevant to building dapps:

> "What is this writing single page apps with Meteor. And what is a dapp? It's a single page app."

He also built [Meteor Build Client](https://github.com/nichenqin/meteor-build-client), a tool that stripped out the server part of Meteor apps so they could run as local client-side applications—a precursor to how dapps work.

## Discovering Bitcoin and Ethereum

Fabian discovered Bitcoin in March 2013 after reading about someone selling a house for Bitcoin. He quickly went down the rabbit hole, explored [Mastercoin](https://en.wikipedia.org/wiki/Omni_Layer) and [colored coins](https://en.wikipedia.org/wiki/Colored_coin), and followed Ethereum from its earliest announcements. He read the white paper, listened to Vitalik Buterin's early talks, and felt immediately that a computation machine on the blockchain "makes total sense"—though he was skeptical it could be pulled off.

In August 2014, at a Berlin Bitcoin meetup about opening a Bitcoin coworking space, he met Aeron Buchanan from Ethereum, who mentioned they were opening a Berlin office. Fabian converted all 12 of his Bitcoins (worth around $600 at the time) into Ether during the presale.

## Joining the Ethereum Foundation

About six months later, a recruiter contacted Fabian looking for a C++ developer for Ethereum—which he was not. But he visited the Berlin office at Waldemarstraße, showed [Aeron](/people/aeron-buchanan/) his single-page app work, and made his case that Ethereum would need someone who could build the user-facing dapp layer.

Alex van de Sande, who had just joined as UX designer and had presented his [Mist browser concept](https://www.youtube.com/watch?v=IgNjs_WaFSc) in November 2014, saw Fabian as the developer who could help build it. Alex convinced Jeff Wilcke to bring him on, and Fabian started in January 2015.

## Building the Whisper Chat App

Jeff, initially skeptical of hiring a JavaScript developer, gave Fabian what was intended as an impossibly difficult first task: build a chat application on the [Whisper](/articles/whisper/) protocol. With no documentation, novel technology, and everything still being figured out, Fabian built a working encrypted chat app with group messaging and topic filtering (similar to Discord threads):

> "The first time we met in March or April, all together in Amsterdam, we all used the Whisper chat app to talk to each other. Encrypted chat messaging, including groups, including topics."

The app impressed Jeff and earned Fabian the confidence to take on the Mist browser.

## Creating the Mist Browser

Fabian and Alex van de Sande built the first working version of the [Mist](/articles/mist/) browser in roughly three months, releasing the Ethereum Wallet with mainnet on July 31, 2015. An earlier attempt at a browser by Yann Levreau (possibly AlethZero) had not worked out, and Fabian's JavaScript expertise filled the gap.

Building Mist required touching every part of the stack—the RPC API, [web3.js](https://github.com/ethereum/web3.js), the Go and C++ clients—making Fabian the first person building a cross-client application layer on Ethereum:

> "I built the first dapp browser, like literally generic tool that can run any JavaScript app to connect to the blockchain. And I built with Alex the Ethereum Wallet which was the first ever dapp on Ethereum. Like the proper done, designed, cross-client functional thing."

Being based in the Berlin office (the C++ team's hub) while hired by the Amsterdam team (Geth), Fabian became a crucial connector between Jeff Wilcke's and Gavin Wood's teams, which were somewhat disconnected at the time:

> "I was in this crazy position of being hired by the Amsterdam team while sitting in the office of the Berlin C++ team. So I was the connector, the translator."

The Berlin office also functioned as an informal Ethereum hub where visitors would drop in—[Dominic Williams](https://en.wikipedia.org/wiki/Dominic_Williams_(entrepreneur)), Gustav Simonssen, Felix Lange, and many others. Fabian, being one of the more social developers, often ended up being the first person visitors talked to.

Christoph Jentzsch later described the Mist vision as transformative: "The Mist browser—I think there's a video by Alex Van de Sande... this also really made us understand how Ethereum could work for the end user." ([Episode 6](/videos/episode006-christoph-jentzsch/))

{% include video-embed.html
  name="Ethereum presents Mist"
%}

## The ERC-20 Standard

Token standardization began when Vitalik Buterin created a GitHub Wiki page proposing standards for tokens, an [ENS](https://ens.domains/) registry, and possibly a DEX. After discussions on that page and on Skype, and following a standardization panel at DEVCON1 in November 2015 (with Christian Lundkvist, Vitalik Buterin, Fabian, Nikolai Mushegian, and Gavin Wood), Fabian created [EIP-20](https://github.com/ethereum/EIPs/issues/20) on November 19, 2015—the ERC-20 token standard:

> "I created the issue and I formatted this whole discussion that we had there like a current version in a proper specification because I felt we need to involve the community."

The "ERC" name—Ethereum Request for Comment—was coined by Fabian, modeled after the RFC tradition. Martin Becze had created the EIP repository, and the DEVCON1 standardization discussion inspired Fabian to formalize the token spec there.

Before proposing ERC-20, Fabian deployed a test token (the "Mist Coin") for testing in the Mist browser. He deliberately omitted the authorized operator functions because he didn't see a need for them. Years later, collectors discovered the Mist Coin as a relic token, but since it lacked the approve/transferFrom functions, it didn't work with [Uniswap](https://uniswap.org)—so it was wrapped, becoming "Wrapped Mist Coin."

Interestingly, at that same DEVCON1 panel, Fabian mentioned his main interest was in "proxy contracts"—smart contract accounts. This early interest would later lead to [ERC-725](https://eips.ethereum.org/EIPS/eip-725) and ultimately [Universal Profiles](https://docs.lukso.tech/standards/universal-profile/introduction).

{% include content-embed.html
  src="https://www.youtube.com/embed/wbbbZv1VaVM"
  title="DEVCON1: Panel: Standardization"
  site="https://www.youtube.com/@EthereumProtocol"
  author="Ethereum"
  date="November 11, 2015"
%}

## Web3.js and Later EF Work

When Marek Kotewicz left with Gavin Wood to join Parity/Ethcore, Fabian took over maintenance of [web3.js](https://github.com/ethereum/web3.js), the primary JavaScript library for interacting with Ethereum. He had been a heavy contributor since the Mist days, being "literally the first user of that library." He built the web3.js 2.0 version as his final major project at the EF.

During his three and a half years, Fabian also worked closely with Marek Kotewicz on web3.js, Christian Reitwiessner on Solidity, Yann Levreau and Liana Husikyan on Remix, and Christoph Jentzsch on cross-client testing—all in the Berlin office.

## The DAO and Fabian's Concerns

During the lead-up to [The DAO](/articles/the-dao/) crisis in 2016, Fabian was one of the voices raising concerns within the foundation. As Bob Summerwill recalled: "I remember Fabian talking to me and talking to the group in the foundation, it's like, 'You know, I've been talking to some of my friends and they don't think this is a great idea and I'm thinking of talking to a lawyer.'" ([Episode 3](/videos/episode003-bob-summerwill/))

## Mist's Decline and MetaMask

The Mist browser was ultimately overtaken by [MetaMask](https://metamask.io/), which took a pragmatic shortcut by building a browser extension that connected to a remote node rather than requiring a local full node. The Mist team had bet on light clients solving the sync problem, but they never fully materialized in time:

> "The biggest problem for the Mist browser, and in a way the death of the Mist browser, was the slow syncing of the Ethereum nodes. We wanted to do it the full decentralized way."

Alex van de Sande eventually [sunset Mist](https://avsa.medium.com/sunsetting-mist-da21c8e943d2) in March 2019 for usability and security reasons. But Fabian notes that the ideas in the original Mist concept video have still not been fully realized—and many are only now becoming possible.

## Leaving the Ethereum Foundation

Fabian left the EF in August 2018 after three and a half years. The initial spark came from his then-wife Marjorie's idea to bring fashion and lifestyle brands onto the blockchain as a "Trojan horse" for mainstream adoption. Fabian saw an opportunity to solve the fundamental problem he'd been thinking about since the Mist days: how to make Web3 usable for normal people.

## LUKSO and Universal Profiles

Before leaving, Fabian had created [ERC-725](https://eips.ethereum.org/EIPS/eip-725) (a smart contract account/identity standard) at a BCG workshop, which generated significant attention as the "Ethereum identity standard." This work, combined with Jeff Wilcke's early advice that users should interact through smart contract accounts rather than raw EOAs, evolved into [LUKSO](https://lukso.network)—a new EVM chain designed from the ground up for mainstream users—and [Universal Profiles](https://docs.lukso.tech/standards/universal-profile/introduction), a smart contract-based account system.

Fabian created the [LUKSO Standards Proposals](https://docs.lukso.tech/standards/introduction) as a separate standards track where he could evolve token and account standards without the constraints of backwards compatibility on Ethereum. The result is an integrated system where accounts and tokens work together "in a really Lego-like way."

> "It's going to be bigger than ERC-20. It's going to blow people's minds when they understand and see."

## Primary Sources

This profile draws primarily from [Fabian Vogelsteller's Early Days of Ethereum interview](/videos/episode012-fabian-vogelsteller/), which provides extensive first-hand accounts of his pre-Ethereum background, joining the foundation, building Mist, creating ERC-20, and his work on LUKSO and Universal Profiles. Additional context from:

- [Christoph Jentzsch's interview](/videos/episode006-christoph-jentzsch/) on the Mist browser's impact
- [Bob Summerwill's interview](/videos/episode003-bob-summerwill/) on Fabian's DAO concerns and the Geth/Mist relationship
- The [Mist](/articles/mist/) article for team composition and timeline
- The [ÐΞV Amsterdam](/articles/dev-amsterdam/) article for organizational context

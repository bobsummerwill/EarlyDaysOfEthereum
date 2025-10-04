---
title: Jeff's Ethereum ÐΞV Update I
lowercase_title: jeff's ethereum dev update i
date: 2014-11-02
author: Jeff Wilcke
description: "Jeff Wilcke's first development update covering the Amsterdam hub setup, team introductions, and progress on Mist browser and ethereum.js"
embed:
  url: https://blog.ethereum.org/2014/11/02/jeffs-ethereum-dev-update
  img: https://blog.ethereum.org/_next/image?url=%2Fimages%2Feth-org.jpeg&w=1080&q=75
  site: Ethereum Foundation Blog
---

I thought it was about time I'd give an update on my side of things for those interested in knowing how we're doing on the Dutch side. My name is Jeff, a founder of Ethereum and one of the three directors (alongside Vitalik and Gavin) of Ethereum ÐΞV, the development entity building Ethereum and all the associated tech.

Over the past months I've been been looking for a suitable office space to host the Amsterdam Hub. Unfortunately it takes more work than I initially anticipated and have got nothing to show for so far. I've past on this tasks to my good friend and now colleague Maran. Maran will do all he can to find the best suitable place for the Ams hub and the development of Mist. Those who are using the Ethereum Programming language [mutan](https://github.com/obscuren/mutan) you may want to switch over to Serpent or the soon to be de-facto programming language Solidity. I've made the sensible decision to focus my attention on to more pressing matters such as the development of the protocol and the browser. Perhaps in the future I'll have time to pick up it's development again.

## DEV Amsterdam

The lawyers have finally, after 2 months, gotten around to set up the company here in Amsterdam (ugh, the Dutch and their bureaucracy eh) and we've found a bank that is willing to accept us as their loyal customers (...). At the moment we have a few options for our office space and I'll write about them as soon as I know something more concrete.

## The Team

It's about time the Ams team got a proper introduction. These guys do some serious good work!

The first that joined the Ams team is [Alex van de Sande](http://www.reddit.com/user/avsa) (aka **avsa**). Alex is a gifted UX engineer and he's been with us for quite a while. It was only a matter of time before he became an official member of the ÐΞV team. Alex has taken up the task of UI development and UX expert and is prototyping the latest of the Web3 browser.

The second that joined the team is [Viktor Trón](https://github.com/zelig). Vik is a crazy math-head and is currently hacking away at the new DEVP2P and testing it rigourously. I've known Vik all the way back since the start of the project somewhere in Jan/Feb, he's a great guy and a real asset to this team.

The third that joined the team is [Felix Lange](https://github.com/fjl). Felix is a die-hard Gopher (yay!) and the first thing he pointed out to me was that I had done a bad job looking after my go routines and there were a lot of race conditions, so nice of him (-; Felix is going to work on the Whisper implementation once the spec has been formally finalised. Felix is a super star gopher and has the ability to become a true Ethereum Core Dev.

The fourth that joined the team is Daniel Nagy. Daniel has a history in crypto and security and his first tasks is to create a comprehensive spec for our DHT implementation and the development thereof.

Last but certainly not least is [Maran Hidskes](https://github.com/maran). Maran has been on this team before but in a completely different role. Maran used to work on the protocol but after spawning a crying, -peeing, -pooping machine new member of his family he decided to take some time off. Now his main role is to look after the daunting task; the administration of ÐΞV Amsterdam.

Even though they are not on anyone's team, I like to thank Nick, Caktux and Joris for their ongoing effort in developing out our [build systems](http://build.ethdev.com). I'd also like to thank Nick specifically for pointing out the inconsistencies between our implementations: Nick, you truly are a great pain in my ass (-;

## Onwards

While we are marching towards the next instalment in the Proof of Concept (PoC-7) we still have got quite some work ahead of us.

Recently I've started to build a toolset so we may test out Christoph (he's on the Berlin team) awesome tests suit. Christoph has put a tremendous amount of work in developing out a proper testing suit for the Ethereum protocol. I never knew people could enjoy writing tests like you do, you've got my uttermost most respect.

I've also started a cross-implementation JavaScript framework called [ethereum.js](https://github.com/ethereum/ethereum.js). Ethereum.js is quickly gaining adoption from the rest of the Ether Hackers and is already in use by the Go websocket & JSON RPC implementation, C++ JSON RPC implementation and the Node.js implementation. Ethereum.js is a true ÐΞV cross implementation team effort.

Our Polish partners at IMAPP (Paweł and Artur) have completed their first implementation of the JIT-compiled LLVM-based EVM implementation and have agreed to create a Go bridge so that Mist may benefit from the speed increase in running Ethereum contracts mentioned earlier in [Gav's update](/2014/11/01/gavs-ethereum-dev-update-ii).

Finally, the UX and UI refinement of Mist, our flagship consumer product and next-generation browser, continues at great pace. An early 'preview' of the Mist interface can be downloaded [here](http://cl.ly/060T1f0o3M1W). It's going to be impossible to deliver that type of behemoth of a browser for the first version but it will certainly be the end-goal.

## Fin

I shall try to keep up writing blog post with updates regarding Mist, the protocol and ÐΞV in general so stay tuned!

Jeff (jeffrey.spammenot.wilcke@ethdev.com)

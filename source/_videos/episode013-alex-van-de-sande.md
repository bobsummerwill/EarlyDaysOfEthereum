---
title: "Early Days of Ethereum - Episode 13 - Alex van de Sande"
date: 2026-04-24
show: true
guests: ["Alex van de Sande"]
hosts: ["Bob Summerwill"]
description: "Alex van de Sande explains why [Mist](/articles/mist/) still resonates with early Ethereum builders, revisits the original Web3 vision built around Ethereum, [Swarm](/articles/swarm/), and [Whisper](/articles/whisper/), describes how local-first ideas ran into syncing and usability limits, recounts how he joined ETHDEV after redesigning [AlethZero](/articles/aleth-zero/), reflects on [ENS](https://ens.domains/) growing from a simple feature into a major ecosystem, and argues that transparent onchain governance remains one of crypto's strongest real-world use cases."
img: /images/covers-for-conversations/episode013-alex-van-de-sande.png
embed:
  url: https://www.youtube.com/embed/H0Ro-gSZch8
table_of_contents:
  - link: "#why-mist-still-comes-up"
    title: "Why Mist Still Comes Up"
  - link: "#mist-and-the-web3-browser-vision"
    title: "Mist and the Web3 Browser Vision"
  - link: "#local-first-computing-and-internet-bottlenecks"
    title: "Local-First Computing and Internet Bottlenecks"
  - link: "#full-nodes-syncing-and-why-mist-lost"
    title: "Full Nodes, Syncing, and Why Mist Lost"
  - link: "#how-alex-joined-ethdev"
    title: "How Alex Joined ETHDEV"
  - link: "#the-dapp-store-dream-and-ens"
    title: "The Dapp Store Dream and ENS"
  - link: "#ten-lines-of-code-and-five-minute-daos"
    title: "Ten Lines of Code and Five-Minute DAOs"
  - link: "#remote-teams-gavin-and-the-spaceship"
    title: "Remote Teams, Gavin, and the Spaceship"
  - link: "#rebuilding-the-web"
    title: "Rebuilding the Web"
  - link: "#governance-and-real-crypto-usage"
    title: "Governance and Real Crypto Usage"
  - link: "#long-timelines-and-wrap-up"
    title: "Long Timelines and Wrap-Up"
---

## Audio

<audio controls style="width: 100%; max-width: 600px;">
  <source src="/assets/audio/episode013-alex-van-de-sande.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>


## Transcript

<!-- TABLE_OF_CONTENTS -->

<h3 id="why-mist-still-comes-up">Why Mist Still Comes Up</h3>

**[00:04](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=4s) Bob Summerwill:** So hi, I'm Bob Summerwill here with Early Days of Ethereum and we have as I guess AVSA, the world famous AVSA of [Mist](/articles/mist/) fame and more. So great to see you.

**[00:20](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=20s) Alex van de Sande:** Well, [Bob](/people/bob-summerwill/), thanks for having me. I do think that the people who knew [Mist](/articles/mist/) is a public that is slowly dwindling. So I don't think it's basically like OGs of crypto or blockchain archaeologists, which I think is a fun little group. My wife, like when I told my wife that look, my work is so old that there are people who call themselves archaeologists studying it, she found it like, are you a dinosaur? What is this?

**[00:59](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=59s) Bob Summerwill:** I like to say I'm not old, I'm very experienced. And I think that's the same in your case. I have heard numerous people saying they want [Mist](/articles/mist/) 2, they want [Mist](/articles/mist/) back. That original vision is still very appealing and perhaps some new formulation of it is workable and possible these days. So you never know.

**[01:27](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=87s) Alex van de Sande:** So maybe we should tell people what the heck is [Mist](/articles/mist/) or what that was, right?

**[01:35](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=95s) Bob Summerwill:** Yes, go for it.

<h3 id="mist-and-the-web3-browser-vision">Mist and the Web3 Browser Vision</h3>

**[01:37](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=97s) Alex van de Sande:** So I started working on Ethereum in 2014. So that was before networks launched and they hired me to do a browser. And I think what we did, and that browser was called [Mist](/articles/mist/). And what I think when people say, oh, I miss [Mist](/articles/mist/), I think what they are doing is not that they miss the browser that we did, which wasn't very good. It was nice, but I mean not so many failures. But what I think we tried to do, an amalgamate of what was the [Web3](https://www.web3.foundation/) vision of the early days, right. What we did is we took everything that people were, ideas that are floating around on white papers, on forums, and said, hey, we're going to do a browser that you can go and download those things and play with them and you download them from your peers, you connect via encrypted apps directly peer to peer. And it was the realization of the famous three-legged stool of Ethereum, the...

{% include video-embed.html
  name="Ethereum presents Mist"
%}

**[02:43](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=163s) Bob Summerwill:** [Trinity](/articles/holy-trinity), that is sometimes called, exactly.

**[02:46](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=166s) Alex van de Sande:** Where you have Ethereum working as the backend. So Ethereum would sort of replace the servers, but you'd still have decentralized storage and decentralized messenger. And that [Holy Trinity](/articles/holy-trinity) would make what we call now [Web3](https://www.web3.foundation/), what we wanted to call [Web3](https://www.web3.foundation/). And I still think that in order to call something [Web3](https://www.web3.foundation/), at least at minimum you need to have a peer-to-peer browser or decentralized storage of some sort.

![Web3 Architecture Diagram](/images/x.com/2026.01.26/ChrJentzsch/1828354675474575561/web3-diagram.jpg)

<h3 id="local-first-computing-and-internet-bottlenecks">Local-First Computing and Internet Bottlenecks</h3>

**[03:19](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=199s) Bob Summerwill:** Yeah, I mean it's really, I think that front end piece that is commonly missing now. We've sort of fallen back into convenience of having servers. I guess it started probably with [Infura](https://www.infura.io/), right?  Was okay, actually having a node, local node on your machine, it's taking a long time to sync, don't like this user experience. But that's been a very common failure point for many projects, that front end gets attacked. You have to have some people that are kind of running that server, even if it's not like a company running it. Like somebody's there. It's always the junction points, I guess like with exchanges and fiat, right. It's like, yeah, you move stuff around but like how do you get real world money in? It's that junction point.

So yeah, [Mist](/articles/mist/) was really that really brave attempt at doing the whole thing right. That you would have [Swarm](/articles/swarm/) as a decentralized storage. But then you can have an incentives layer on that because you've got smart contracts in Ethereum and then you've got Ether currency that you can be paying those incentives with. And then you can have like your source code on [Swarm](/articles/swarm/) and references a hash back to it. And then [Whisper](/articles/whisper/) for the conversation. So yeah, I think many people were really inspired by, especially your [Mist](/articles/mist/) presentation, which I think was October 2014.

**[04:59](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=299s) Alex van de Sande:** Yeah. So we are all at [Devconnect](https://devconnect.org/) in Buenos Aires and a lot of people are complaining about the Internet, right. It's a constant complaint. And it's funny because we have a thousand people here. 10,000, I heard 20,000 people here. Everyone has in their pocket a computer that is more powerful than any server 10 years ago. And I would say that 90% of people are just trying to connect to the same services, right. Everyone is trying to connect to the same wallets, to the same interfaces, to the same, trying to download the same files. So why do we actually need that? In order to do that, everyone needs to go through the same network to an antenna over there, to a server in the United States. Why can't, like if you're making me a demo of my app, why can't I just be downloading directly from your...

**[06:00](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=360s) Bob Summerwill:** You already have the content, yeah. Your friend who wants you to look at their thing, like they've got it. So two other sorts of instances just this week I saw of this were [Lefteris](/people/lefteris-karapetsas/) was saying, the Internet coverage is terrible in here. I love this event, love the organizers, but nobody can do anything because of the lack of Internet coverage. But he says, but [Rotki](https://rotki.com/) can still run. Come here, I can show you, because it's a local first application and the data was on his machine and he can do the processing. And there's a bunch of things that you can do without that connectivity if you do have that data locally. And then the second one is, it was just a few days ago where there was a massive [Cloudflare](https://www.cloudflare.com/) outage that basically took down the whole world. So yeah, we have these weaknesses for sure.

{% include twitter-embed.html
  url="https://x.com/LefterisJP/status/1990765568346186069"
%}

<h3 id="full-nodes-syncing-and-why-mist-lost">Full Nodes, Syncing, and Why Mist Lost</h3>

**[07:03](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=423s) Alex van de Sande:** And I can guarantee to you that I would bet that most of the [Rotki](https://rotki.com/), I think [Rotki](https://rotki.com/) is a great example because most of the files you need to run [Rotki](https://rotki.com/), if you pack everything in a zip file, it's probably smaller than a cat video, right. And I can send you a cat video right now with Airdrop, but I cannot send you the [Rotki](https://rotki.com/) app for you to run and for you to take a look. And I think that's what we were trying to do back in 2014. We wanted this idea that you're going to have the full [Web3](https://www.web3.foundation/) experience and we wanted you that every one of our users would run a full node of Ethereum, they would run a full node of [Swarm](/articles/swarm/), they would run a full node of [Whisper](/articles/whisper/), right. And that was the dream. And that was also why it failed. Because in the beginning you need to take a few minutes to sync your node whenever you started it. By the next year, it was a few hours. By the end, it was a few days before you could sort it. And so I was telling people, look, you can open this browser and it takes three days to put it up and then you'll be able to run a decentralized front end that nobody has, or you can just download the [MetaMask](https://metamask.io/) extension and it will run instantly on the current Web2 infrastructure, right, which that's why they won.

**[08:37](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=517s) Bob Summerwill:** Yeah. And I mean in what I was doing as well, I guess I was fairly naive in the same way of thinking, okay, yeah, we're running full nodes now, but there'll be like light client stuff soon and you'll be able to like whatever, like start at a checkpoint, get trusted state off someone, and then so yeah, you start at the end, but maybe it can go back and fill the things in later. You can have a trust minimized starting point that isn't complete trust, but it's probably good enough, right? Okay, we'll start at their block a day ago or something. Something can be attesting to these good points and you can just like jump in quicker. And especially on the light client, just thinking, oh, we'll be able to have a syncing client, like light client in a browser. Maybe you don't even need a native node. It's just you can just sort of drop in and off you go. So yeah, that didn't pan out.

{% include content-embed.html
  src="https://www.youtube.com/embed/KoEqh99U5QI"
  url="https://www.youtube.com/watch?v=KoEqh99U5QI"
  title="DEVCON1: Progressing toward the Ethereum Light Client"
  author='<span class="no-auto-link-marker">Zsolt Felföldi</span>'
  date="2015-12-21"
%}

**[09:42](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=582s) Alex van de Sande:** I just got out of a talk where [Vitalik](/people/vitalik-buterin/) was saying that how with the new changes they're doing in Proof of Stake, you'll soon be able to run a full node in a smartphone, in a browser or something like that, which I think it's fantastic. We need that. But it's still like after 10 years, it's still coming soon, right? And I admit, like, Proof of Stake really changed the game because where before you needed a four, now all you need to do is like a tiny depth node, but that is like one tiny computer that is running all the time just for keeping sync with the network. We are still not there yet. Even on the light client on a phone port, you cannot run a validator on a phone yet. Maybe someone has it as an experimental thing, but it's simply not there, right. And then that's not even talking about the rest of the stack where we had [Swarm](/articles/swarm/) or even [IPFS](https://ipfs.tech/). You still cannot trust [IPFS](https://ipfs.tech/), everyone. [Swarm](/articles/swarm/) is 10 years in development and it's still, they say it's working, it's live. Haven't tested it. I have tested [IPFS](https://ipfs.tech/) a lot and every time I test it, it's sort of working, but it's slow and it's simply not a great user experience.

**[11:06](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=666s) Bob Summerwill:** Yeah, I mean, I think a lot of tech has been an awful lot more work than we anticipated. Another one pops to mind for me, there is [Status](https://status.im/). So [Status](https://status.im/) kind of trying to do a similar thing, right. Here's the everything app on mobile, running a node. But then they had to make their own node, so that's [Nimbus](https://nimbus.team/). And then they were doing stuff with [Whisper](/articles/whisper/) and [Whisper](/articles/whisper/) didn't really work out. So it's onto [Waku](https://waku.org/). And you can have a situation where people are dependent on pieces which are still not there. They're better than they were, but it's still an ongoing process. But I think ZKs are really going to help though, because you're not having to do the full execution if you're just doing proofs. I think that's a great path to lighter models.

<h3 id="how-alex-joined-ethdev">How Alex Joined ETHDEV</h3>

**[12:01](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=721s) Alex van de Sande:** You were talking about a presentation I gave in October. To give context, I was hired, I think, in September of 2014, from [the Foundation](/articles/stiftung-ethereum/).

**[12:10](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=730s) Bob Summerwill:** And how did that happen?

**[12:12](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=732s) Alex van de Sande:** So I started following Ethereum. I probably read the white paper. I was fascinated by it. I couldn't think of anything else. I downloaded the only piece of graphical user interface called [AlethZero](/articles/aleth-zero/) and it was like, it felt like driving a plane, like trying to land a plane. And I made a better version of that, which I thought was a better version, sent it on the [Reddit](https://www.reddit.com/) and then got [Gav](/people/gavin-wood/) and [Jeff](/people/jeff-wilcke/) wanting to talk to me. And [Gav](/people/gavin-wood/) told me, I don't think you're thinking about this enough, right. I think you didn't go far enough. And let me tell you about [Web3](https://www.web3.foundation/). And that's when they started telling me about how they wanted to run a browser and I could be like the lead developer for that browser.

{% include content-embed.html
  src="https://www.youtube.com/embed/vXGH6q43i_k"
  title="Joel's First Time Using the Ethereum AlethZero Client"
  site="https://www.youtube.com"
  author="EtherCasts"
  date="March 28, 2014"
  description="Joel Dietz and Joris Bontje explore the AlethZero Ethereum Client (C++ Proof of Concept v3.11)."
%}

So I flew into Berlin in November, I think, for [DEVCON0](/articles/devcon0/) and I gave a presentation on what I thought what we could do with this browser called [Mist](/articles/mist/). And one funny thing I find about the presentation is that there is one slide where I'm presenting the dapp store. The idea is that we are going to take everything that you are talking about in theory, and we are going to just release it as dapps. And I was presenting a lot of things because in my mind it would be, look, you're going to download it from Ethereum. And I presented that, I thought, look, we are, of course we are going to launch Name Registration System. Of course they are going to be live. And of course it's going to take like maybe a month of development and then we're done. And then we have all those cool things that we can probably do every month, we do a new contract and dapp and people can download, can share it. It's going to be cool. You can do a hackathon and then you can do a prediction market, you do another hackathon, then you have a multisig.

<h3 id="the-dapp-store-dream-and-ens">The Dapp Store Dream and ENS</h3>

And then looking back at that, I can tell you that every single one of those things that I pointed as a quick thing that would take a month, they are today, or at least were at some point, a company worth hundreds of millions of dollars developing for the best part of 10 years. [ENS](https://ens.domains/), for example, I ended up launching [ENS](https://ens.domains/) as a feature. I just thought like [Nick](/people/nick-johnson/). I met Nick Johnson at [the Foundation](/articles/stiftung-ethereum/). I wanted to do a name registration. He had a few ideas, we got together, we launched it and I was like, yeah, great, I can go back to work on what I care about, browser. And he came, kept developing on [ENS](https://ens.domains/). [ENS](https://ens.domains/) now is a whole DAO with 10 teams working on them full time. It handles at least like half a billion dollars in tokens and in assets and treasuries. That was supposed to be just a feature and then that became like a half a billion dollar ecosystem on its own. And I think that tells you about the difficulty of building those things because...

<h3 id="ten-lines-of-code-and-five-minute-daos">Ten Lines of Code and Five-Minute DAOs</h3>

**[15:28](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=928s) Bob Summerwill:** I think I remember seeing an example for that is saying, oh, look, you can do DNS in 10 lines. Do you remember that? It's just like, yep, there's this thing and you can set or you could read and it's like, this will be trivial.

**[15:42](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=942s) Alex van de Sande:** So we used to have shirts and on the back of the shirts, conference shirts, I used to have them. I was using them the other day. On the back of the shirt there will be code saying, look, you can run DNS in 10 lines of code. You can run a democracy in 100 lines of code, you can make your own money in 50 lines of code. And I loved giving that presentation. I would give a presentation in which I would go on mainnet, put five Ether, deploy a live contract, a democracy, a DAO, put five Ether, make a vote somewhere and just spit it all live during five minutes in a presentation. I bet if you look at my history, there are probably a few DAOs forgotten with five Ether on them. Because back then it was like just a couple bucks, right? And I love the presentation and to be fair, I still like the idea that you can just deploy code and it works better than many governments do.

![Early Ethereum team photo](/images/x.com/2025.09.07/TaylorGerring/status/1514072285258387459/1514072285258387459_1.jpg)

*“One of the very first Ethereum shirts” – Taylor Gerring, [Apr 12, 2022](https://twitter.com/TaylorGerring/status/1514072285258387459)*

**[16:43](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1003s) Bob Summerwill:** Yeah, yeah, absolutely. So yeah, I mean, I remember those code T-shirts, I saw them first at that [Toronto Bitcoin Expo](/articles/bitcoin-expo/), which was in April of 2014. So there's some famous photos of it on [Vitalik](/people/vitalik-buterin/)'s back. And people looking at it, though you look at that code, it wasn't Solidity. I don't know if it was [Mutan](/articles/mutan/). It might have been even pre-Mutan. Etherscript was what they called it very originally, but yeah.  So you weren't working in Berlin or in Amsterdam yourself, were you? You were working remotely. And was it primarily with [Jeff](/people/jeff-wilcke/)'s team that you had those interactions or I guess [Gav](/people/gavin-wood/) more earlier?

*(Bob - on further inspection, the code on this T-shirt was written in [Serpent](https://github.com/ethereum/serpent), which was yet another early smart contract language, in addition to LLL and Mutan.  Serpent was created by [Vitalik](/people/vitalik-buterin))*

<h3 id="remote-teams-gavin-and-the-spaceship">Remote Teams, Gavin, and the Spaceship</h3>

**[17:34](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1054s) Alex van de Sande:** No, it was primarily with [Jeff](/people/jeff-wilcke/)'s team. I was the third employee. When I joined the [Geth](/articles/geth/) team, it was me, [Felix](/people/felix-lange/) and [Viktor](/people/viktor-tron/) and I did some work with [Gavin](/people/gavin-wood/) and what we did is we would work mostly remotely and once or twice per year we would go meet everyone together. And whenever I was, I remember one time I went in Berlin, I went to Amsterdam and then [Gavin](/people/gavin-wood/) knew that and he made me do a detour to London just to spend like two hours with him on a cafe where he mostly told me that you're doing everything wrong, you need to do this, this, this and that. And that was it, right? We used to do that. And sometimes I think after London I went to Zug and I also spent a week in the Spaceship.

![First Geth Team meeting](/images/personal/alex-van-de-sande/2026.04.24/telegram/geth-first-team-meeting.jpg)

*(Alex - First Geth Team meeting: [Jeff](/people/jeff-wilcke/), [Felix](/people/felix-lange/), [Viktor](/people/viktor-tron/) and me. I remember thinking: who are these weirdos?! How did I get here?)*

**[18:35](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1115s) Bob Summerwill:** So, yes, the Spaceship, a very famous place. So can you remember who was there, what the context was and what you were doing?

![Early Ethereum team photo](/images/x.com/2025.09.07/TaylorGerring/status/1499457254524964873/1499457254524964873_1.jpg)

*“Ethereum Spaceship before move-in” – Taylor Gerring, [Mar 3, 2022](https://twitter.com/TaylorGerring/status/1499457254524964873)*

**[18:45](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1125s) Alex van de Sande:** So I was on the Spaceship with Gavin Wood, [Fabian](/people/fabian-vogelsteller/) and a few other developers. I think [Jeff](/people/jeff-wilcke/) was there briefly also. I don't remember, to be honest, I don't remember the purpose of that. We are developing, we are developing stuff. We were there just trying out things. [Fabian](/people/fabian-vogelsteller/) was already there. That was probably mid-2015. We were testing out how the browser works, how does everything work together? And I think that's the same trip was when we were all together in Amsterdam, when we had a great presentation, a great demo in which we had built a browser and then [Viktor](/people/viktor-tron/) came and had built [Swarm](/articles/swarm/) and we were all playing around with a chat application running on [Swarm](/articles/swarm/) on a browser. And we'd look at that and we were like, it's happening. It's really like it's all going to work, right? It was fantastic. And it didn't, of course, work as we expected. Almost everything that they had to rebuild and some of those ports haven't been rebuilt yet. But I think that was the moment where we realized, yeah, this thing is going to happen and it's going to be a wild ride.

<h3 id="rebuilding-the-web">Rebuilding the Web</h3>

**[20:03](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1203s) Bob Summerwill:** Yeah, I mean, absolutely. So I was speaking to Christoph Jentzsch recently and he was saying, it was the breadth of the vision that really inspired him. It wasn't just, okay, here's Bitcoin with smart contracts. It's like we're going to rebuild the web and yeah, you're going to have this trinity, but also IDEs, we're building an IDE as well with [Mix](/articles/mix/) and yeah, you have got [AlethZero](/articles/aleth-zero/), this crazy kind of low level UI, but also [AlethOne](/articles/aleth-one/) GUI miner. It's like, yeah, we're just going to build these tools that are going to be very user facing. And it's going to be enabling anyone really to exercise this full set of tools. And yeah, we're going to make a new web.

{% include content-embed.html
  src="https://www.youtube.com/embed/YX-7bScTGDE"
  title="Ethereum Mist Wallet Demonstration"
  site="https://www.youtube.com"
  author="Armando Votan"
  date="February 9, 2016"
  description="Take you on a tour of the Ethereum Mist Wallet. Watch a transaction arrive, see the Smart Contract Platform, Multisignature Account Features, Tokens like VUNK...it's basically a decentralized financial node."
%}

**[21:00](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1260s) Alex van de Sande:** I think you have to put it in context, right. If you were around working on something in 2014, it probably meant that you saw software eating up music and turning it digital. You saw software eating up the desktop industry, you saw software eating up, starting to eat up the hotel industry and the taxi industry. All those were the things that were, that was the software is eating up the world time. And like, why would you expect that it will stop at money? Why do you think it will stop at governance and organization? So of course at some point software is going to eat money, software is going to eat enterprises, software is going to eat the very way that we interact with other people. And blockchain has its limitations. It cannot do a lot of things, but it can do money. And once you can pay people to do something, you can do almost anything, right.

*(Bob - this is referring to a famous essay by [Marc Andreessen](https://en.wikipedia.org/wiki/Marc_Andreessen) in 2011 - "[Software is Eating the World](https://a16z.com/why-software-is-eating-the-world/)")*

And we like right now, I think 10 years later, I think crypto has become such a boom. And it became, in a sense, crypto became a boom in financial terms, but it didn't impact the society as much as we hoped. And now we are living in a much more, let's say, cynic society where people look at tech firms and say, I don't trust them. Like I don't trust [Mark Zuckerberg](https://en.wikipedia.org/wiki/Mark_Zuckerberg), I don't trust [Sam Altman](https://en.wikipedia.org/wiki/Sam_Altman), right. And I think so it's a different context today than we were 10 years ago.

**[22:43](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1363s) Bob Summerwill:** Yeah. And I mean just thinking about timelines, so that kind of 2013 era where you were sort of cryptocurrency 2.0, right. You'd had a few years since Bitcoin had started. That was just over 10 years after the dot-com boom and bust. So look at these 10 year cycles. It's like the web was starting there in 1993, I think. So then you'd had 10 years of like, right, we can actually do things on the Internet and you'd have this big crash and burn. But then 10 years later, it's like that was mature. You'd had the [iPhone](https://en.wikipedia.org/wiki/IPhone) and [Facebook](https://en.wikipedia.org/wiki/Facebook) and a bunch of other things happening, and people were doing commerce, which 10 years before had been like, what? You're going to pay for something online with your credit card? Like, are you insane? But it had gone through that maturity and perhaps that's sort of where we are now, right, is everything that was trying to happen 10 years ago, it kind of works now.

<h3 id="governance-and-real-crypto-usage">Governance and Real Crypto Usage</h3>

**[23:56](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1436s) Alex van de Sande:** I like how if you went to a [DEVCON](https://devcon.org/) five years ago, it would be most would be people with some idea, some random idea that they want to build. And if you walk around every booth, someone will have an app that you can download that is ready, that has a sleek user interface and that's useful. I just paid for my breakfast using [Peanut](https://peanut.to/). It's an app that helps you pay when people don't accept crypto. And I have to admit, a little bit ashamed of myself. I don't remember when was the last time I used crypto to pay for something like normal. And to be honest, I don't think that is the way to define the success of crypto. Do you pay crypto for your coffee, right? I think a much more interesting measure, especially on Ethereum, is of how many organizations run transparently on chain, right. And I think that is, I still think that governance is one of the best use cases for Ethereum. It's one of the best success stories of Ethereum. We have billions of dollars that are currently managed online on chain through a process that doesn't involve banks and that nobody can sort of take the money away.

{% include content-embed.html
  url="https://peanut.me"
  img="/images/pbs.twimg.com/2026.04.22/profile_banners/1570429162959081473/1761095206_1080x360.jpg"
  title="Peanut.me - Global Cash, Local Feel"
  site="peanut.me"
%}

And I think an example, because before I give you the microphone, is I'm a founder of [ENS](https://ens.domains/). I can get together with [Nick](/people/nick-johnson/) today and we have a lot of votes and we still cannot move a single dollar out of [ENS](https://ens.domains/) treasury without going through the process of voting in a way that is transparent to anybody, right. There are like hundred million dollars with assets, half a billion dollars in token, in [ENS](https://ens.domains/) tokens. And we cannot still move a single dollar without going through the due process.

**[26:06](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1566s) Bob Summerwill:** Yeah, no, I mean that's just wonderful. And you can't do these things without this technology. So many of our institutions and processes and flows, they are just sort of opaque by design. By definition, they are some proprietary software that's getting run by somebody with a server admin and everyone is just a user. We've gone to a point where like nobody even wants to run software. I mean, I guess this was a challenge on the Mist side as well is nobody even wanted to run anything on their machine. You saw the growth of cloud. It's like, yeah, nobody wants to have a computer, nobody wants to have a server. But I think a lot of that is a convenience and a weight thing. And if you are getting new capabilities that are unavailable elsewhere, that's compelling. The UX and experience on apps, they have to be better than what they're doing or give you a new capability. And I kind of think, why somewhere like Argentina you do have so much use is the status quo is bad.

**[27:36](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1656s) Alex van de Sande:** Yeah, I think there's so much still to do, right. I think one of the things talking with other apps, I heard a lot of them saying, look, the market isn't where it used to be a few years ago, but right now we have more users than we had before, right. Even during the top of the last bubble, we have more users actually using and doing stuff than we had before. And I think that is already fantastic. There's still so much work to do. A few years ago I happened to be, somehow I was in a meeting with the mayor of my city and like one of the people there were like, okay, tell me, how can you use crypto right now to help the city? Can you help? How can you help it? And I was sort of like, you can do those theoretical things. And he's like, no, tell me, what are they doing that we can do right now? I was like, actually, I didn't have an answer, right. And I started looking for NGOs. I found some great NGOs using crypto. But my point is that I think we still have like long ways to go in that sense.

<h3 id="long-timelines-and-wrap-up">Long Timelines and Wrap-Up</h3>

**[28:52](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1732s) Bob Summerwill:** My wife says I'm always too optimistic, that my timelines are completely unrealistic. I repeatedly think, in about five years it'll all be solved and everything will be there. But yeah, I think it's a long term thing. But we are seeing big progress. I would say I'm kind of still excited.

**[29:17](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1757s) Alex van de Sande:** Oh, there's this famous quote that says that we overestimate the amount of change that happens in a few years, but we underestimate the amount of change that happens in 10 years and a decade. So I think I am still optimistic and I will probably die an optimistic man.

*(Bob - so it looks like this is a [Bill Gates quote](https://www.brainyquote.com/quotes/bill_gates_404193))*

**[29:41](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1781s) Bob Summerwill:** Absolutely. Well, thanks so much. We've got to wrap up. Great talking to you and where can people find you?

**[29:48](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1788s) Alex van de Sande:** So I'm AVSA in most networks. I [don't use Twitter anymore](https://x.com/avsa) a lot anymore. But you can probably find me also on [avsa.eth.xyz on Bluesky](https://bsky.app/profile/avsa.eth.xyz) and just ping me a message there.

**[30:04](https://www.youtube.com/watch?v=H0Ro-gSZch8&t=1804s) Bob Summerwill:** Okay, thanks so much. Bye bye.

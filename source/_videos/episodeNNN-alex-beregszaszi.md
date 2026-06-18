---
title: "Early Days of Ethereum - Episode NNN - Alex Beregszászi"
date: 2026-04-08
show: true
guests: ["Alex Beregszászi"]
hosts: ["Bob Summerwill"]
description: "Alex Beregszászi reflects on his path from FFmpeg and Bitcoin into Ethereum, where he helped build EthereumJS Wallet and ABI, contributed to Solidity, and spent years on Ewasm, Yul, EVM384, EVMX, and EOF research. He discusses Devcon memories from Shanghai onward, execution-environment debates, stateless Ethereum work, and what he learned from a decade of VM and protocol research."
img: /images/covers-for-conversations/episodeNNN-alex-beregszaszi.png
table_of_contents:
  - link: "#introduction"
    title: "Introduction"
  - link: "#pre-ethereum-open-source-bitcoin"
    title: "Pre-Ethereum: Open Source, Bitcoin, and Android Wallets"
  - link: "#discovering-ethereum-dublin-hackathon"
    title: "Discovering Ethereum at the 2015 Dublin Hackathon"
  - link: "#joining-solidity-ethereumjs"
    title: "Joining Solidity and EthereumJS"
  - link: "#mango-devcon2-shanghai"
    title: "Mango and Devcon 2 in Shanghai"
  - link: "#ewasm-yul-2017"
    title: "Ewasm, Yul, and the 2017 Shift"
  - link: "#execution-environments-beacon-chain-shards"
    title: "Execution Environments, Beacon Chain, and Shards"
  - link: "#evm-evolution-precompiles-stateless"
    title: "EVM Evolution, Precompiles, and Stateless Work"
  - link: "#evm384-evmx-eof"
    title: "EVM384, EVMX, and EOF"
  - link: "#looking-back-after-ten-years"
    title: "Looking Back After Ten Years"
  - link: "#security-cantina-what-next"
    title: "Security Work, Cantina, and What Comes Next"
  - link: "#closing"
    title: "Closing"
---

## Audio

<audio controls style="width: 100%; max-width: 600px;">
  <source src="/assets/audio/episodeNNN-alex-beregszaszi.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>


## Transcript

<!-- TABLE_OF_CONTENTS -->

<h3 id="introduction">Introduction</h3>

**[00:03] Bob Summerwill:** Hello and welcome to Early Days of Ethereum. So we're here today with Alex Beregszászi, who we both worked together for a short time on C++ team and he focused on Solidity and Ewasm and Team Ypsilon. So very good to have you. How are you doing?

**[00:28] Alex Beregszászi:** Thank you, Bob, for having me. Just adjusting the video a tiny bit. Doing well.

**[00:36] Bob Summerwill:** Good, good, good. So I mean, how did your Ethereum journey start? How did you get involved or what were you doing beforehand?

<h3 id="pre-ethereum-open-source-bitcoin">Pre-Ethereum: Open Source, Bitcoin, and Android Wallets</h3>

**[00:49] Alex Beregszászi:** Yeah, it goes back quite some time. So originally I've been involved with open source way before Ethereum in the multimedia sector. So I've been like an early contributor to MPlayer and FFmpeg. I'm pretty sure FFmpeg is something people still are familiar with, but MPlayer, it's a really old project.

So this happens quite some time ago and that was really interesting and successful and a lot of it was centered around optimizations. You had to make sure that given the hardware, everything actually works. So I think that kind of set me up towards being really interested in open source and optimizing things. Then I had corporate stints, et cetera. But I think the embedded line did stay for a long time. And then jumping forward, at some point I ended up looking into Bitcoin. So that was around like 2011, 2012.

**[01:57] Bob Summerwill:** Right, right.

**[01:59] Alex Beregszászi:** Well, funnily enough, or annoyingly enough, I did have friends who were checking it out right when it came out and I did try it not so long after, but I couldn't compile it because I was using like an early Mac and QT was just failing. So I just given up I think at the time.

Anyway, a few years later I did get into it and it was definitely very interesting. My first main project was creating a software wallet for Android which was using the Stratum Protocol and Bouncy Castle for the crypto side. And this kind of led me towards wanting to create a hardware wallet. So I had like a co-founder and we had a small startup, but it was really early, so this was like 2014-ish, so it was really early. We never actually released it. We had functioning prototypes and then we split up and my co-founder was in the Bitcoin space and he was doing hackathons and I joined his, I don't know, second hackathon, which was at the time the biggest crypto hackathon in Europe.

<h3 id="discovering-ethereum-dublin-hackathon">Discovering Ethereum at the 2015 Dublin Hackathon</h3>

**[03:22] Alex Beregszászi:** So it was 2015 and that's where I really learned about Ethereum. I mean, I think I did hear about it before and I was working on some Bitcoin ideas and at a hackathon we did like a crowdfunding platform on Ethereum. So we kind of hit all the problems — onboarding, on-ramping. And definitely the big question of can any of these contracts act on their own or they need to be triggered. That was like a key problem. And also getting data into like oracles. So they had all the pain points.

And this also made me realize that I was trying to build on Bitcoin and I needed to build pretty much all of this infra. So I shifted to Ethereum and tried to build the project I wanted on Ethereum.

So we're speaking like November 2015, October, November 2015. So I ended up building infra on Ethereum for building my dapp. And that meant I wrote EthereumJS Wallet and ABI and yeah, I think these two at that time. But basically all the JavaScript tools beyond the VM. So EthereumJS VM existed, but not much beyond that. So I wrote the wallet stuff, which ended up being used later by MetaMask and a bunch of other projects. And I made these open source from the get-go because that was the ethos, the predominant ethos at the time.

So I ended up voluntarily contributing to EthereumJS. And for my project I also wrote Solidity contracts and I found big bugs in the compiler at the time. So it was like 0.1, 1.1, 1.2 or something like that. The one big bug I remember because it took me — it was really annoying to figure out. So I needed to convert an address to like a hexadecimal string and you would just have a for loop going from the beginning. And I can't recall the complete bug in extreme detail, but the problem was if you looped forward and were writing, it was overwriting the previous character as well. So the workaround was to loop backwards.

And I got my stuff working, but I kept filing bugs on Solidity and at the time it was really just like a person or person and a half working on it. So nobody actually fixed those bugs. And I ended up trying to fix them myself. And these two, reporting the bugs to Solidity and contributing EthereumJS, kind of led me towards being invited to just join both of those teams and this was like early 2016 when I ended up basically going full time in contributing to both.

<h3 id="joining-solidity-ethereumjs">Joining Solidity and EthereumJS</h3>

**[06:42] Bob Summerwill:** So I was looking and it was January 2016 was your start date there.

**[06:50] Alex Beregszászi:** Well, yeah, I think it's a bit more complicated. I think like end of 2015 I pushed those Ethereum things as a volunteer.

**[06:59] Bob Summerwill:** I see. Yeah, yeah, this was in terms of the EF, I mean.

**[07:04] Alex Beregszászi:** Yeah, I think officially I've started — it was actually June or something, but in practice I worked with and it was on me, but I was basically just a volunteer. Full-time volunteer until that point, but working with both teams. The teams were just like one or two people each.

**[07:27] Bob Summerwill:** So you had Christian, right, Reitwiessner leading — well, both the Solidity and the other C++ parts. It was all kind of a bit mangled together. And yeah, like we've been saying, Lef Harris had been doing earlier work on Solidity and there's another guy and it's really bugging me now who was doing some work. He was actually working for like Eris/Monax and they kind of lent him in. I will find his name later. Where was the hackathon?

**[08:21] Alex Beregszászi:** That was in Dublin.

**[08:22] Bob Summerwill:** That was Dublin. What was that one called? Can you remember what it was called?

**[08:29] Alex Beregszászi:** No, I mean I could look it up but I don't know. But hackathons were really popular at the time and in the same building prior to it there have been other kind of hackathons, including hardware hackathons.

**[08:51] Bob Summerwill:** Right.

**[08:53] Alex Beregszászi:** And I think the year leading to the crypto hackathon there, like year and a half, I participated in pretty much every single one of those. That was good fun. Yeah, it was the hack of building.

**[09:07] Bob Summerwill:** And on that JavaScript side, so was it just Martin Becze or were there others working on that as well?

**[09:17] Alex Beregszászi:** Good question. I think it was like a really — it was kind of turbulent. Martin was the maintainer and he started like most of it. But then you had Yuri Matthias working on the — well, it had a different name at the time.

**[09:40] Bob Summerwill:** Right.

**[09:41] Alex Beregszászi:** Basically just like an RPC server, like a simulator. Maybe EtherSim was the name or something like that. And then later there were the — what was the prediction market, the first one, Augur or — yeah. I mean, I'm not sure whether Gnosis or Augur were first, but the Augur guys, Jack, I believe they also had like an RPC client and there were some disagreements around this. So I think Yuri at some point dropped out and those became — eventually that codebase became Truffle.

So that was like one codebase and then a lot of the other, I think initially was a monorepo and then EthereumJS was a monorepo with the VM and some of the RLP stuff, and it got split into its own org and it ended up with like 50 or 100 repositories for each of the different parts. A lot of the other parts regarding the — like Web3.js, well, I don't think it was Web3.js at the time, but an alternative, because the Web3.js came from the Mist team, if I remember correctly. But there was an alternative version which was basically worked on by the MetaMask people.

**[11:14] Bob Summerwill:** Yeah, I think the earliest Web3.js was Fabian Vogelsteller, who built that one out.

**[11:25] Alex Beregszászi:** So this wasn't Web3.js, but similar functionality within EthereumJS and Kumavis and Dan were working on that. So I think backtracking, I would say it was maybe this community of 4 to 6-ish people on EthereumJS, Martin mostly on the VM and the core sections. And then you had the MetaMask team and Yuri and Augur. So it was like maybe the set of contributors. And then I was contributing as well. Oh, and one more person, Nick Dodson, was also doing a bunch of different smaller projects there. Well, actually he had a wallet before I wrote one, but I think I found something confusing in it, so I wrote my own.

And I think generally, I contributed to both in parallel. And I think on EthereumJS at some point we kind of moved on to Ewasm research. So that kind of took a lot of my time. And next to it, Solidity was also taking place. I would say it's hard to remember, but I would say mostly like a 50/50 split between the two, but probably some weeks maybe a much higher preference for one or the other.

<h3 id="mango-devcon2-shanghai">Mango and Devcon 2 in Shanghai</h3>

**[13:03] Bob Summerwill:** And I was just looking back through Devcon talks that you'd given. So the first one was in Shanghai for Devcon 2, which was about Mango, and that was a very interesting project.

**[13:21] Alex Beregszászi:** Yeah, yeah. I don't remember how that came about. But obviously I was tracking a lot of the projects in the space. And I think the EthereumJS team was pretty close to Protocol Labs. I'm not sure if it was called Protocol Labs at the time, but basically IPFS. Like the entire JavaScript Ethereum ecosystem was really interconnected. And I also kept an eye on Swarm. And Swarm was still part of Go Ethereum at the time.

And it just seemed natural that why do we use a centralized service when we have all of these building blocks? So I did a quick prototype and I wasn't the first one with the idea of having a decentralized Git. I mean Git by design is kind of distributed and decentralized, but we ended up putting it onto a centralized service. But I do remember when working on Mango, like one of the prior existing solutions were putting it into Torrent, there was like a Git Torrent version.

**[14:49] Bob Summerwill:** Mango — I don't know how you describe it. Is that a plugin for Git that allowed you to push to IPFS or Swarm? Is it a plugin? How would you describe it?

**[15:04] Alex Beregszászi:** Yeah, I mean as I said, Git has been designed from the get-go to be kind of distributed, decentralized and even the command line tools are kind of extensible. So when you choose a transport medium, which has been mostly SSH with like GitHub, then the Git CLI selects the right tool and if you use a different transport medium — and that's decided by the URL you put in — you can just install your own tool. So I had like a Mango tool and if you use a URL for Git with Mango colon, then it just hooked it up. And those tools have only the responsibility to push and pull. Everything else still remains in Git.

**[15:54] Bob Summerwill:** Right.

**[15:55] Alex Beregszászi:** So it's really lightweight.

**[16:00] Bob Summerwill:** And what are your memories of Devcon 2?

**[16:06] Alex Beregszászi:** Yeah, I mean, maybe for the audience — we talked with Mango and Git and it's not clear what the hell it is, but the idea was to basically use Ethereum and Swarm to replace GitHub. And the way it worked, there was a contract. You basically just push the contract and an instance of the contract and the repository URL was the address of the contract. And this was before ENS. After ENS you could just use domains for it.

And on the contract the only thing it did on the pull side, it just read the last hash from the contract and then got all the actual data from Swarm or IPFS, but I believe maybe the first version or the only version I did just used Swarm. I think both. I mean the repository is public. And on the push side the only cost you had to bear is just push a hash to the contract. So it was fairly cheap.

And yeah, I think this was before pinning existed. So you really had to make sure that the data actually is accessible, because the only thing on the chain is just a hash. And I had a lot more ideas towards actually replacing or providing functionality similar to GitHub but I was in lack of time and ended up working on Ewasm and Solidity. But then this idea — I mean not Mango specifically, but this problem set has been picked up by multiple projects over the years.

Yeah, I think in terms of Devcon 2, it felt crazy because the main room was like a thousand people, like 1,200. And I actually had a talk with Mango there in front of 1,200 people. And I did watch Devcon 1 and I did have the opportunity to go because I had some people I met at the hackathon going. But I felt like I would be an imposter.

**[18:36] Bob Summerwill:** Right.

**[18:37] Alex Beregszászi:** I only learned about it — I mean Devcon 1 was a week after the hackathon or so. And I only really done stuff on Ethereum like a week prior to Devcon 1. So I didn't go. But I did watch like most of the talks. And compared to that, Devcon 2 has been on a way different scale in terms of attendance. And by the time of Devcon 2, I worked in the ecosystem like closer to a year. Devcon 2 was in September and all of it has been remote. So it was definitely a lot of fun meeting all the people I worked with during those nine plus months.

And everybody was super excited. The entire ecosystem was really excited, despite the challenges we had during the year and then the big challenge we had during Devcon — the Shanghai attacks. So that's definitely one memorable memory. The like half of the EF and the client devs basically just being smashed in a boardroom in the same building where Devcon was held. There was like a giant atrium and one side of the atrium was the conference hall. The other side was basically a hotel and maybe like four floors above where the boardroom was. And so from the room it overlooked the atrium. So from the room, people were hacking and trying to fix the network. You could see that the conference down there. And you were so close, but yet so far.

**[20:25] Bob Summerwill:** Yeah, because that was on the first morning, right, just before things were starting. I was looking at the video of that opening session, and so Ming just got started and it was like, Vitalik will be coming soon and she's starting and he runs on a little bit later. But yeah, that was the Shanghai attacks of the network being denial-of-service attacked and we — earlier that year you'd had the DAO and the DAO fork as well. That was all fairly fresh coming into that conference.

**[21:11] Alex Beregszászi:** Yeah, exactly. I mean that year kind of set you up to expect anything and everything, the worst times. Yeah, it was an eventful year.

**[21:27] Bob Summerwill:** That's right. And that was my first time in Shanghai and in China in general. I don't know if that was the same for you as well.

**[21:35] Alex Beregszászi:** Yeah, it was the first, yeah. I mean, I discussed it with a number of people and friends. The question always comes up, which is your favorite Devcon. And I just cannot — I've been thinking about it, but I cannot really point towards a single one. Each of them had their own interesting parts to it. But yeah, Devcon Shanghai definitely has to be up there with all of that happening.

<h3 id="ewasm-yul-2017">Ewasm, Yul, and the 2017 Shift</h3>

**[22:10] Bob Summerwill:** Absolutely. So I mean, looking forward again at your Devcon 3 talks in — so that was in Cancún, the following year — there was a panel called Evolving the EVM. And you also had a talk about Julia, which later became Yul.

**[22:39] Alex Beregszászi:** So.

**[22:40] Bob Summerwill:** Yeah. How did things evolve over that year for you in terms of your focus?

**[22:50] Alex Beregszászi:** Yeah, I think in EthereumJS, we kind of, as I mentioned, shifted focus towards something called Ewasm, which basically — I mean, up until that point, EVM and still to date, EVM has been the virtual machine. But Martin has been looking into WebAssembly and how it could be applied. And I think he started looking into that even like end of 2015, pretty soon after WebAssembly was more than an idea.

And I think during that year — I think August, let me check, because this bothers me now. I think August 2016. So before Devcon, we already worked on Ewasm. I mean, Martin definitely did, but me as well. I'm just looking at one of the repositories.

**[24:01] Bob Summerwill:** Yeah, I mean, I think certainly through 2016. So I remember also some discussion about looking at other alternatives as well, like the JVM as a potential. And maybe even RISC-V possibly as far back as then I think it was beginning. But certainly WebAssembly took the lead quite quickly.

**[24:35] Alex Beregszászi:** Yeah, I think JVM was definitely looked into. I mean all of these different systems. WebAssembly had a good reasoning. So I think at the time — yeah, I mean I have this repository called Hera which was basically the VM which plugged into cpp-ethereum, the — well, was it called Aleth at the time? But in any case, I think it went back.

**[25:06] Bob Summerwill:** Yeah, it went back to Aleth later I think.

**[25:11] Alex Beregszászi:** I think eventually — oh yeah, I think it was Aleth when it was abandoned. So yeah, by Shanghai I was already working on the Ewasm stuff and I do remember that the — ETC which was called EDCON at the time, which was probably April, March, April 2017. We had a presentation about Ewasm and I think at Devcon 2, Martin had one about Ewasm as well, or maybe both of us, I can't remember.

But we had a good reasoning why WebAssembly was a good contender, which was WebAssembly was supposed to be in the browsers, which it is. And people were really excited about light clients at the time already. So all of the light client protocol stuff was operational and operational to an extent. And the vision we had with the WebAssembly stuff is that you would have a light client on your phone so you wouldn't rely on any of the third parties. You would just have everything there. And WebAssembly would be native to your phone because the browsers have it. I think this was the core motivation for doing it.

And there were other points which became more contentious and more debated. Whether you want full control over the VM or you want to rely on someone else and then by relying on some others also invite a much broader community into that. So WebAssembly would be something where a much broader community contributes to. And we don't need to do everything, we just need to do our part. And this idea became contentious at some point, that we do want to control everything. And that's why I suppose the EVM remained in charge. But yeah, this battle of the VMs has been ongoing. I guess it's kind of on a pause now, or maybe in a different direction, but it has been ongoing since 2015, 2016.

**[27:46] Bob Summerwill:** Yeah, I was looking for your Devcon talk — sorry, EDCON talk. So that was March 2017 you gave that talk and then Devcon 3 was November. So that'll be another seven months later.

**[28:04] Alex Beregszászi:** Yeah, so I would say 2017 has been spent mostly in the theme of WebAssembly on both sides. On the Solidity side, you mentioned Yul, which originally was called Julia with a J and then Julia with an I. And then Yul eventually — one story. Was it there or was it Prague? Because I think it was maybe renamed after Prague. No, it's — yeah, it has been such a long time, but I think it maybe has been Cancún, where the talk was with Yulia and one of the contributors, or maybe core authors to the Julia or Julia language was also attending. Or maybe just a person who used it, I don't remember. And they asked, so have you heard about Julia? And why do you want to name it the same? And I was aware, but in the team we had to come to an agreement what the name should be.

**[29:14] Bob Summerwill:** That's another programming language, is it?

**[29:17] Alex Beregszászi:** Yeah. The reason for Yul, I think at least two main reasons. One, the way the compiler has been built prior to that, which is still the case, is it's really a single piece of code and not much separation exists between the stages, which was good enough for a prototype, but became pretty big of a burden over time in terms of extending it, optimizing it, et cetera. And even bigger of a hindrance to target different bytecodes, to target WebAssembly. In the original architecture of the compiler, it was pretty much impossible.

On a high level, how compilers operate, you can separate three different stages, but obviously in practice this can become way more complex and you can have many more layers and some layers overlap and you can have big arguments. But in general you would have something called the front end, then like a middle end or middleware, and then a back end. The main purpose of the front end is to parse the language, the source code you provided, and build up something of internal representation, which could be many different things. In many cases it's something called an AST, abstract syntax tree, which is just an internal representation of what you have typed. On the middle where you could then do a lot of type checking, resolutions, imports, doing transformations. You could even transform it into a different language or multiple representations. The backend would be the last stage where you actually target the machine you're looking at. So in our case, the EVM. And you could also do optimizations specific to the EVM at that stage.

The Solidity compiler kind of had the middleware, the middle end and the back end mixed into a single one. And it was okay for EVM, but it was really limiting us. And Yul became — or the goal of the Yul language was to be kind of like this middleware or it's called an intermediate representation. And you could have many different intermediate representations geared towards different goals, but Solidity only had one. And I mentioned that Solidity, the compiler still has the old ways. We added Yul and we just call it the IR, via IR. So both options still exist in the compiler. We did have Yul targeting Ewasm and all of this was operational. That has been removed for quite some time now. But 2017 has been the year of a lot of the work on Yul and these improvements on Solidity as well as the Ewasm.

I don't remember whether it took us a lot to convince people of it. As I said I was on both sides. I was talking to end users, like frameworks. What was the name of the — I mean Hardhat was one of them at the time. Truffle was another one. And going down to the VM. So from basically the VM upwards, every single layer attached. And I also worked on hobby dapps, so I think I was in a good position to kind of have an understanding of what the pain points are. And yeah, I think that was my turn in 2017.

<h3 id="execution-environments-beacon-chain-shards">Execution Environments, Beacon Chain, and Shards</h3>

**[36:24] Bob Summerwill:** Yeah. So coming into 2017 there and I guess saying about the Ewasm — at that point it was Eth 2.0, right. Was this the thought that you were going to have multiple shards and then each of those could have different execution environments?

**[36:51] Alex Beregszászi:** So I think that was later. It was 2018 or maybe — yeah, I don't fully remember because at some point I think the Ewasm stuff wasn't Eth 2.0 to begin with. The idea was to have it parallel to EVM. And then — well, the core idea in 2016 was to replace the EVM and have a translator which translates EVM to Ewasm. And we actually had this tool. Initially it was just a tool and then we compiled a VM to Wasm and you could just run an EVM within Wasm itself. So that was the original idea, just replace EVM fully. And that didn't happen. And then parallel to that, at some point the work on proof of stake started.

**[38:01] Bob Summerwill:** Yeah. And something I remember, sorry, from Devcon 3, is that you had this panel with yourself, Greg, Martin and Christian. I think it was just the four of you. And the thing I remember specifically is you'd got Greg had his talk about EVM 1.5, making it raw with the cars or what have you. And then you had Martin, I think, talking about Ewasm, but both of them were already out of the EF. It wasn't announced but both of them had actually already left at the point of Devcon 3. So it certainly felt to me at that point, you've got this real lack of certainty about what was going to be next on that execution side. I remember the panel felt very disorganized as well, as though none of you talked to each other before.

**[39:06] Alex Beregszászi:** Yeah.

**[39:07] Bob Summerwill:** I mean, before that things would go—

**[39:09] Alex Beregszászi:** Yeah. I mean, in terms of the panel itself, we definitely each of us knew each other and we worked together and I mean—

**[39:17] Bob Summerwill:** In terms of saying what you were going to be talking about on the day, it felt like you'd got very different thoughts or visions of what might be next.

**[39:25] Alex Beregszászi:** Yeah, I don't think we even had a moderator. And certainly no pre-discussed questions, but that was the way things went then. And I don't — was that the one where we were sitting like on the—

**[39:40] Bob Summerwill:** Yeah, yeah. Just squatting down, sitting down on the steps.

**[39:44] Alex Beregszászi:** I think that was because we didn't have enough chairs for the number of people and we didn't want anybody to just stand. Yeah, it just gives you an insight into how things were kind of operating. Even though you had so many attendees and the ecosystem was quite big already, it was still kind of like a small — I don't know, you could say like a small friend group or — but more like a hacker space or something. Not much structure.

And yeah, the EVM 1.5 stuff from Greg was trying to basically put more structure into the EVM control flow. And at the time, Martin and I — and I think even Solidity was more towards — I mean, it still kind of felt like maybe WebAssembly is going to happen. But parallel to that, Greg was working on his version of the EVM changes. And Devcon 3 was the one in Cancún, right?

**[40:59] Bob Summerwill:** Yeah.

**[40:59] Alex Beregszászi:** And as you said, it was kind of — there was kind of a limbo of who's even going to work on any of these. But it was the time we kind of reassembled the Wasm team and we started like early 2018 with a much bigger team having the single goal of actually shipping.

So that was the team for 2018 and I think the proof of stake work already took place in 2017, but 2018 when it got like rocket fuel and the proof of stake research team became bigger. Initially there was like a contract and they were in Vyper maybe and there was some Python client and there was no Beacon Chain. It was just something on mainnet. And then at some point it kind of moved towards this separate network called Beacon Chain due to some technical constraints, I believe. And maybe once a decision was made, then there was a lot more freedom to design stuff, once it's a separate chain. And given that freedom, I think that's when the sharding ideas came in and that's when the discussion shifted from maybe we shouldn't try to replace the EVM and patch Wasm onto the mainnet — rather, why not create this new execution environment.

They were called execution environments on the Beacon Chain. Maybe it was called Eth 2.0 as you said at the time, and not the Beacon Chain. And Beacon Chain came later. But yeah, we had so many names.

**[43:05] Bob Summerwill:** I mean the versions, like they were just all over the place. But yeah, I think at that time it was sort of like 1.5 was just an EVM evolution and then 2 was — well, there's various different things. I think I was looking back, Ethereum 2.0 was actually on a whiteboard before the foundation even existed. Back in 2014 it was like, right, we're gonna have Ethereum 1 is the minimal shipped version. And then it was like, right, then we're going to have a working Mist was maybe a definition of a 2.0 — was kind of a full stack thing. But yeah, it changed an awful lot over the time.

**[43:56] Alex Beregszászi:** Yeah. What was the 2.0 at the time? More in towards this trinity of — well, it was Ethereum. Maybe it wasn't called Swarm, but maybe it was, and then—

**[44:09] Bob Summerwill:** No, it was Swarm and Whisper from the very start. But the other thing that you had in terms of those names were Frontier, Homestead, Metropolis and Serenity. Those were names that you had from really quite early. And I think on that timeline the Metropolis was like Mist and visual tooling. And then I think Serenity was proof of stake and everything else.

**[44:49] Alex Beregszászi:** Right, yeah. I think it was still called Serenity as well when the proof of stake stuff — when it was discussed during those years, I think people kept the name Serenity. And then at some point someone came up with the Beacon Chain naming idea and that's when it shifted. But I think initially, the idea once it was this separate chain and then having shards, that one of the shards or Shard Zero would be mainnet and that's the only place where EVM would live. And then you could have Wasm and other stuff elsewhere. It would be more like heterogeneous and you could have anything you wanted. At some point that shifted towards it has to be homogeneous shards. Everything has to be the same. So let's do Wasm.

We also did some research in there to — I think one of the challenges was like scheduling even between the shards. So one research we had is on — I don't remember the terms, but maybe it was called the Beacon Chain and the shards would be separate, but in this core element which would manage scheduling, that we would put Wasm there. And that's the only place we have any kind of execution. And the rest is up to whoever runs the shard. And these ideas of what DAS today is, these ideas were around that all of these shards you wouldn't actually need to store and provide everything. You would just have kind of like proofs and you could reconstitute.

And then obviously, if you look back at history, this execution and shards, they didn't actually happen. I do remember — there was Osaka, but maybe one other project around the time. Maybe this was 2018. Yeah, just backtracking. So in 2015, 2016, you had the state channels, right? Like Raiden. And then at some point, I think that was maybe 2018, something called Plasma came about. Like State Channels 2.0. And I think the Optimism team, which wasn't called Optimism — maybe it wasn't called that at the time — they worked on Plasma. And then I do remember they had — maybe it was Osaka, but that's where they had this new version. And I think after that was roughly the time when this discussion of L2s started, as opposed to having shards.

**[48:08] Bob Summerwill:** Right, right.

**[48:09] Alex Beregszászi:** And once that got a foothold, I think that was the point where execution on the Beacon Chain was kind of not a discussion anymore.

<h3 id="evm-evolution-precompiles-stateless">EVM Evolution, Precompiles, and Stateless Work</h3>

**[48:20] Bob Summerwill:** Right, right. I mean, I'm looking back here at Devcon 4. So Devcon 4 was in Prague in 2018. So there was a talk, just Ewasm, Ethereum Flavored WebAssembly and Ethereum 2.0. And there's a gigantic list of speakers here. So there's yourself, Guillaume Ballet, Pavel, Hugo De la Cruz, who I don't think I've ever heard of, Casey Detrio, Paul Dworzanski, Jake Lang, Lane Rettig and Jared Wasinger. Huge list of people.

**[49:01] Alex Beregszászi:** Yeah, I think we kind of had like maybe a two or three hour slot, kind of like you could call it a sub-conference where we had a bunch of related topics. Greg was also there. There was also a panel, some other people working on EJSON stuff. So it wasn't just the Wasm team, but topics around execution, I would say.

I think at that time EVM as a thing has been kind of in the background. Nobody did much nor discussed much about it. I don't think it was that year, but maybe the year following it. No, it was after Osaka. But yeah, there was another shift in all of these discussions when the topic of stateless execution started.

**[50:04] Bob Summerwill:** Right, right. So yeah, I mean, I guess all through these years the EVM itself was really not changing significantly or at all.

**[50:17] Alex Beregszászi:** I think the only changes were mostly driven — I mean there were big changes, but they were mostly driven by outside reasons, not for improving execution itself per se. There have been constant pushes towards precompiles, like features needed, which people felt the EVM — I mean, there's like two cases for — back then there were two cases of precompiles, three. One case is you could do it on the EVM, but it just takes too much gas and you want something cheaper. Case number two is you couldn't even implement it because the EVM lacks certain functionality. Or maybe you could, but it would be extremely out of bounds — like you would have to spend on one of those more than what's the block limit. And the first category, I said it's just too expensive. And by that I mean maybe you could still do it and people did it, but it's just not economical, because maybe you have to pay like 20 bucks for something which would cost less than a dollar. Category two is something which technically you could implement in the EVM, but it just costs more than what's allowed. And category three is something which you cannot even implement because it needs access to data or something which is not available to the EVM.

And I think at the time, during those years, the first two categories were the precompile types which people kept proposing. And some of those got in and some of those me or my team have been pushing back strongly against because we felt like maybe they weren't the best choice. And fortunately some of those ended up being not used at all. But they have been there.

And one of the arguments for the Ewasm work also was that it would be more optimal and you wouldn't need to actually have these precompiles because you could just write it in WebAssembly. And we actually worked a lot over the years to prove or disprove this point in terms of benchmarking. And there we can also talk about that.

So this was like one category of changes to the EVM which took place. And the second category is external changes like for the Beacon Chain and you needed new functionality, those obviously got in. And the third one is again around gas. There were a lot of net gas metering or constant changes for the gas, either for the opcodes or security risks or just making stuff cheaper because people felt like it's overpriced. These have always been happening. But other kind of functionality, like small functionality to the VM — the only functional change which got in was the transient storage, which you could argue is less so. Again, about the VM itself rather than — it's not like pure execution, it's rather the state itself, even though it's a temporary state.

But I guess in our group we kind of separated VM work in two parts. One which is purely VM work and the second which is it may have an effect or a change in the VM itself, but it's more towards the state itself, whether that's storage, whether that's transactions or communication across contracts, or whether that's transient storage. That's obviously bigger than just changing stuff in the VM itself. It has much bigger implications. But those are the areas. These bigger implication areas is the ones which actually took place, mostly not by our team. Like this net gas metering — it wasn't proposed by us — or transient storage, but we definitely did research and analysis on all of these and put in our points.

So the EVM was evolving, but not towards being more efficient in executing. I guess I can argue for this because the number of precompiles haven't stopped. Over those years new precompiles have been constantly added, which I guess can prove the point that the performance hasn't been improved. But repricings have been a constant change.

**[55:08] Bob Summerwill:** Right, right. And so I was looking — so Devcon 5 in Osaka, 4 panels. Your render looks like that's talking there about Ewasm 2.0, state execution in Eth 2.0 and there was a minimal execution AMA at that point as well. So I guess it was heading more into 2020-2021 where Ewasm kind of came to a close. I mean, was Ypsilon — Team Ypsilon will have been formed prior to that.

**[55:56] Alex Beregszászi:** So the team has been formed after Cancún. So really kicked off in 2018. And Ypsilon was just a rebrand because by the time we rebranded, I think the year prior to that, we really just worked on EVM. And it obviously created confusion. The team is called Ewasm and even when there was a time when we did both EVM and WebAssembly, but we just rebranded because people got confused of what is this team even doing if there's no WebAssembly.

Yeah, as I said there was a big argument whether it would be faster than EVM. And so we spent significant amount of time on benchmarking and the main premise — it started out like the main reason the claim was made that it would be faster because the EVM has word size of 256. Even if you write a single digit, it takes up 256 bits. Small calculations which fit 64 bits, which is the native size of the machines we use today, it would still need to take place in 256 bits. And the EVM itself has no types. So every single word is the full 256 bits.

Now this makes a lot of sense for some of the work which needs to be done in the EVM which is any kind of hashing or signature related work because those are 256 bits or at least were 256 bits. But then we got into the ZK era and BLS and that actually is bigger. Like 384 bits or like 2048 and then hashes.

Yeah, I think for that it works. Maybe a small detour. The reason the EVM is 256 bits is the Bitcoin VM. So all of this came from the Bitcoin VM directly.

**[58:23] Bob Summerwill:** Right.

**[58:25] Alex Beregszászi:** And so because there's no types and you can only just do this full word size and looking at the contracts at the time in 2015, 2016 — obviously you don't always just do that, and oh yeah, it should be faster if you do native word size. So this is where it started. And at some point we did all these benchmarks and I don't remember which year. Obviously it depends on the workload, on what kind of workload you're dealing with. It would be faster or slower.

We did end up actually adding a 256-bit native API to Wasm. So another — things just come back now. But another good reasoning for Wasm was that it's extensible so you could add — without changing the VM because the idea was that we rely on the browser and so we wouldn't be able to actually make any non-standard changes. But Wasm does have a way to import features which you could actually think about importing precompiles. That's kind of the equivalent and the EVM — I mean obviously has the precompile stuff.

So we added an API for dealing with 256-bit numbers. So you could say we had the 256-bit precompiles for Wasm and with those I think it kind of matched the speed on those workloads and exceeded on other workloads. So it was actually faster but at the time we got there this was like 2018. In any case it was at least two and a half years post launch and I think before that we already had the gas token debate. So there were these contracts and trick where you could basically buy and store value when the gas was cheaper and release that value when the gas was more expensive. This is the idea of the gas token and there were some refund — and this operated on the refund logic and there was a big EVM change changing that refund logic. And the reason for that was, as far as I remember, there's a significant percentage of the traffic on the network took place around gas tokens and so people wanted to get rid of this.

**[01:01:19] Bob Summerwill:** That happened on Ethereum Classic as well and on — well it was POA chain at the time but now Gnosis Chain — both of these two got really absolutely spammed up the wazoo. I guess the thought with that refund mechanism would be that people would be kind of like cleaning up after themselves, that would be an incentive that people would be using, but then that did not prove to be the case. So on ETC it was just like, here's a massive transaction which is all like zeros.

**[01:02:02] Alex Beregszászi:** Yeah, yeah, exactly.

**[01:02:03] Bob Summerwill:** Empty, empty crap just to get the token.

**[01:02:09] Alex Beregszászi:** Yeah, I think there were multiple versions of them and using different methods and some of them kind of remained operational post the change as well, just less efficient. But yeah, this gas token stuff already took place and some other bigger changes which kind of left a sentiment that changing anything — the sentiment was there's just so many contracts already. It would be a really big inconvenience if you would swap a VM. Even if the benchmarks were kind of good in many areas or matching, there definitely wasn't really the appetite anymore.

<h3 id="evm384-evmx-eof">EVM384, EVMX, and EOF</h3>

**[01:03:03] Alex Beregszászi:** But the precompiles as an idea they were still around. So we kind of pivoted to okay, what if we could actually put an end to this precompile question. And as I said we already had this big number 256-bit API in Wasm and this was around the time, first time the BLS precompiles were proposed whenever that was. And so we wrote them in Wasm, benchmarks, etc. And then I don't remember why and how, but we ended up creating a version on the EVM — so creating an EVM extension for the same goal which was called EVM384.

**[01:08:05] Bob Summerwill:** Right, right.

**[01:08:08] Alex Beregszászi:** And I think that was probably like a six-month long project debate on All Core Devs to provide benchmarks and can it meet the speed of the native implementation, etc. And all of this then — and I think that was a point where Ewasm just fizzled out because the interest from All Core Devs was extremely lacking. And the EVM384 was kind of like a light in terms of maybe we can put an end to this precompile mess. And I think that was the point where we kind of really pivoted back to okay, let's improve the EVM at least with this EVM384 which later evolved into something called EVMX.

EVM384 was a fixed 384-bit extension. It's basically — I mean there were multiple versions, but the most basic version is just three instructions added to the EVM. Then with a few helpers it always has been less than 10 instructions. With 384 you could implement most of the BLS and elliptic curve precompiles and functionality desired by the users or more like developers, but also arithmetic hashing functions. So we had — I don't think it was Poseidon, but it was MiMC. So MiMC was used before Poseidon in Ethereum and we had implementations for those as well. And it was faster than — well, it was cheaper because one must put a — it's a different question whether something is faster versus it's cheaper in gas, because as I said the gas stuff is kind of always a battle how well something reflects the actual execution time. And you can never have it 100% reflected because you have different machines running the clients.

But the EVM384 stuff — we had gas, actual execution time wise and gas wise, it was — for the MiMC was better and for the BLS it was competitive. And the EVM Max iteration was to extend it beyond 384 bits and so you could replace also the modexp, support something like RSA. And STARKs was a goal. And yeah, I think then that was our maybe 2020 just focusing on this instruction set.

**[01:11:04] Bob Summerwill:** Right, right. And then EOF came along as well.

**[01:11:10] Alex Beregszászi:** Yeah, there was during this work — so initially it was just a few instructions and still operated on — so we still operated on the regular EVM stack. And then it turned out if all of these were just kind of small experiments and MVPs and as you iterated you realize that okay, what if we don't actually have to have the overhead of dealing with the stack like pushing, popping a lot of this stuff, moving them around, and each of these — because it's an interpreted — most of the VMs are interpreters, so each of these steps they check whether it's out of bounds, etc. So what if you can just skip that and put the actual value part of the instruction — and we call these immediates.

So in a stack machine, a pure stack machine, you really have just instructions which operate on the stack. Push something to the stack, or pop something from the stack. And you may have a few special — and these also include the memory operations. They move between the memory and the stack. And then you can have a few special instructions which push a value to the stack itself. So some of these are constants — pushing like a 1 or pushing a 0 is something which is present in many stack machines. And then also pushing constants where you encode the constant value as part of the instruction. And EVM has these, has 32 of these — PUSH1 to PUSH32 — but has no other instruction which has an immediate value.

This is actually also a big debated topic because the EVM has a special requirement. This is not because it is a stack machine, it's just a requirement it has — that they have a special instruction called the JUMPDEST, which is set for jump destination. The special requirement we have is that a jump instruction cannot jump to a location which is not a JUMPDEST. And this means if this — I think it's 5B is the hex value of the JUMPDEST — and if this value would be as part of a constant, that would be an invalid jump because you would be jumping to data. And if you can jump to data, then you can create very interesting code. And it becomes much harder to verify what that code ever would do. And that's the main reason for the JUMPDEST. But it's not something a stack machine needs. EVM does have it.

Because of this requirement, it is kind of challenging to introduce new instructions with immediate values. And going back to why this discussion even started is that we realized if we get rid of the stack for the EVMX and we start using immediate values, we get a significant speedup. So we started looking into ways how can we introduce immediate values. And this eventually led to basically EOF.

EOF itself — the first version hasn't been — I mean, it wasn't something extremely complicated and it wasn't something without any prior history to it. As far as I remember, the first version of EOF really just tried to address three features. One, create a small structure, separate data and code, have versioning. So be able to decide what kind of bytecode you're looking at. Yeah, I think these were the first two points really, because with these two you could start to introduce new instructions which would have immediates, etc., etc. And this code and data separation — that has been proposed prior to EOF. There have been multiple versions and ways to do that and the versioning was also proposed in multiple ways. But the EOF was this small proposal which combined a bunch of these small features into one and it would have helped EVMX or at least these immediate values.

It wasn't the only solution to immediate values. So there are multiple ways to hack them in — you can have a fake push and then you have the instruction. And I think there is — and this goes into the territory of multi-byte instructions which also have been proposed several times. And I think the unlimited swap/dup, the current version of that proposal I think also is multi-byte. So this problem persists even though EOF never went live.

But the first version was really simple and I think we worked on both in parallel. So this EVM Max work and the EOF work. And the EOF work then expanded over time. And yeah, I think there was one more era we had maybe parallel or before that with the stateless Ethereum work which was I think early 2020 when stateless really kicked off. So we did a lot of work on that as well. And the main point of stateless Ethereum is that a transaction — I mean one of the end goals would be that you don't really need to store all of this data and a transaction would supply whatever proof they need for a given transaction to take place. Now, the stateless Ethereum as a topic still exists today and it has definitely evolved over time and with ZK VMs it goes into a different direction. But these core problems I think are still there. And those ideas have been discussed back then and we contributed to the code chunking, which is basically a way to split up the bytecode into smaller chunks. And so you would only provide the given chunks which are needed to a given execution because you likely don't exercise every single code path in every single transaction. All of these were really on the EVM level and EOF — it's not something which was needed for it. But also EOF was designed to be compatible and work with it.

**[01:18:48] Bob Summerwill:** Were those the EOF functions? Is that the chunking? Is that the same thing?

**[01:18:55] Alex Beregszászi:** No. So the functions — you could say it's like a different version or iteration of the EVM 1.5 idea. But it really comes from the point of the jumps. The EVM doesn't really have — the structure of the EVM is really loose, it's really simple and it's really permissive. And it only has something called dynamic jumps, which means it takes the address you're trying to jump to from the stack. That's why it also has this JUMPDEST idea I explained, that at runtime it takes the location we are going to and then it checks whether that location is actually data or code.

And the functions came from the need to have static jumps. And a static jump is where you don't take the destination from the stack. The destination is encoded into the instruction itself, so it's an immediate value. This basically removes all of the runtime checks. You can check this at load time, you can check this at deploy time. And that's what we actually ended up doing. We had a verification phase at deploy time — when a contract is created, it would be validated against a large set of rules, including whether these jumps are valid. And the deployment would be rejected if it didn't succeed this validation. But the benefit is that at runtime you don't really need to do anything. You just execute. There's nothing to check. And this would provide significant speedup.

But you also — I mean it's an improvement, but you can further improve it with something like functions where you can have these reusable blocks with their own rules. So some of these came from Solidity as a need. I mean not specifically Solidity team asked for it, but rather how you would use a language. And in Solidity the compiler itself — it's called the calling convention. How do you operate between different functions, and different compilers can use different calling conventions. In Solidity it would push on the stack the return address where you want to return to after the function is finished. And then you would have the arguments. Then in the function you operate on this. You also likely want to return some values from the function. So that also goes into the stack. As far as I remember the stack layout, you have the return address first, then you have the input arguments, then you go into the function, in the function you operate on those inputs, you remove them at the end and if there's a return value, you put the return value there. But then you also need to swap that and get the return address, because that's where you need to jump to.

Functions remove all of this complexity because you don't need a return address or anything. The VM knows it because you jump into a function and then you return from a function. This actually — functions also exist in regular CPUs. Even in x86, you have a call and you have a jump and the call has a return opcode. You can return to the caller. This also works in interrupts, which has its own RETI, or is it IRET? None of these ideas are brand new or we didn't invent a brand new branch of computation here. We just took standard features which have been invented over the past 50, 70 years. So yeah, that's what functions are. And the EOF had a bunch of other features over time because there's always someone coming in, oh, I would need this feature. And yeah, I gotta stop here. But there's more in the EOF.

**[01:23:24] Bob Summerwill:** Yeah, I mean it always seemed to swing between okay, let's do something small. And then it's like, oh, well that's not enough benefits, so why would we do this? Or to something larger and comprehensive. And then, oh, that's big and scary.

**[01:23:41] Alex Beregszászi:** Exactly.

**[01:23:41] Bob Summerwill:** Can't win.

**[01:23:43] Alex Beregszászi:** Yeah, I think there were two different discussions. One of them, we really wanted it to be incremental updates and that's why we had separate EIPs to begin with. And for the first one, it's really just a structure. And then the second one was maybe the static jumps. And maybe the third one was functions, I don't remember, or validation. But then there was an argument — if each of these have their own version numbers, then all clients need to support all these different VM versions. So let's mesh them together. So this was one set of arguments.

But at some point, I think in 2022, early 2022, there was a request — okay, from All Core Devs, what if we could make it ban introspection, which means — so in the EVM today, even though you cannot execute code, you can still introspect your code. And even contract deployment is kind of weird because the way contract deployment works — there's in Solidity we call it a constructor. On the EVM, it's more called an initializer. But contract deployment is that you run a piece of code which then returns bytecode which becomes the deployed code. This piece of code which runs has full access to the state, as much as a regular contract has. But it has full access to everything, has the code it wants to deploy in memory, it can modify that code and then eventually it gets returned and deployed — by deployment, I mean it gets stored in the state. And there's basically no restriction of what happens here. One can construct bytecode on the fly from random data in the state, or random inputs or whatnot.

And the idea behind banning introspection is that if you remove that, then you could over time replace the code in the state. If there's a new version of the EOF, you could transpile that into a new version, which renders versions pointless because you always have a single, the latest version in the state. So VMs only need to implement a single version. And this transpilation actually is the same idea what we had with Wasm, transpiling EVM to Wasm. And as I said, it never actually played out.

The Ypsilon team didn't propose banning the introspection, but we were open to research this and we came up with versions which supported this. But there was one more reason which is more on hand — ZK VMs. It helps ZK VMs if you ban this because as I said, the current EVM can introspect and there's instructions which can read the code, etc. It's called CODECOPY and EXTCODECOPY. You can read other code as well in the state. And in ZK VMs, in many cases the code is transformed. So at runtime the ZK VMs don't actually execute EVM code, they have a transformed version. But because of these opcodes, they also need to store the verbatim EVM code. So it just puts extra stress on the ZK VMs. So if you ban this, there's a benefit to the ZK VMs.

So these were the reasons. And yeah, it was really fun research and there was a much more complex version of EOF which banned code introspection. And it also banned gas introspection, which is another set of work. I'm more fan of the banning gas introspection because that kind of removes all of this risk around gas because you can just change them on the fly as you want. And the only — the main problem today with changing gas is some of these gas values can be hard coded and in fact are hard coded in many contracts. And by any change there, there's a lot of analysis going on on All Core Devs — oh, which contract is going to break and are they important, et cetera. And with banning it, this question goes away. And the way EOF accomplished it, there's a single place where you can control gas, which is on a transaction level. And whatever you supply, if gas has been changed — like individual costs for different instructions has changed — you just have to supply more at the transaction level but nothing else changes. So I think that is a really good feature.

But obviously by having all these static jumps, functions, different swaps and an exchange instruction and then you have banning gas introspection and then banning code introspection, it definitely becomes something much bigger. And that's where it ended. It was deemed too big, not beneficial enough, etc.

<h3 id="looking-back-after-ten-years">Looking Back After Ten Years</h3>

**[01:29:59] Bob Summerwill:** So yeah, looking back on your sort of 10 years or so of work there, you had a lot of stuff which did not make it in, eh. I mean that must be quite frustrating.

**[01:30:13] Alex Beregszászi:** Well at the same time I got a lot of stuff in as well. I don't know the exact numbers, but it's maybe like an EIP every second hard fork or something. But yeah, there's definitely improvements we got in either me personally or as a team and a lot of research is still relevant today and is being used by others. But obviously it's annoying that the VM changes never actually happen.

But it's one of these things where you can research it to the end of time and you can always have a claim that yeah, you see, we spent two more years and now it's much better than it was before and oh, if we went with the version two years prior that may not have been as optimal. But then you never do anything.

So I think we probably would have been better off having a version of any of these things at some point of time and maybe not have newer versions. But at this point we are where we don't have any of it. So on one side it's frustrating to an extent, but I think it was more frustrating last year when it was canceled. I don't really think much about it anymore but I'm definitely grateful for everything we learned. And yeah, it was definitely exciting and interesting to go through all of this. But yeah, as you say, it would be nicer if some of this would have gone live. But it is what it is.

**[01:31:56] Bob Summerwill:** So looking back to that time when you were first using Ethereum, what can you remember what your thoughts at that time might have been on where things might have got to in five or 10 years? Is this future similar to what you were thinking or something quite different?

**[01:32:28] Alex Beregszászi:** I think it's maybe a 50/50. So I actually did from time to time go back in and try to create a dapp. So from an engineering point of view, not much has improved. What improvement is really Foundry or any of these frameworks. It's really nice, it's way more easy than it was back then. But the interaction and the wallets and all of that stuff, that hasn't significantly changed. I would say the functionality and the features we use on them — I mean some stuff I wanted back then has been accomplished mostly around the payments area, but not fully.

But I think everything else outside of that which had more of a potential — at least people working on it, like collaboration tools and any of those — I mean obviously some of it exists but nothing really has usage. And I don't think anybody really thinks about those anymore. And maybe the privacy stuff, which has always been there but never really been — maybe it only had the negative topics around privacy.

So I think the financial part, most of the stuff I wanted on the financial part has been accomplished or is being shipped or being worked on and those are nice. But everything outside of the financial aspect, I don't think over the years there have been like different versions of things and explorations, but yeah, that definitely is lacking. And prediction markets, I would put more towards the financial aspect here.

<h3 id="security-cantina-what-next">Security Work, Cantina, and What Comes Next</h3>

**[01:34:38] Bob Summerwill:** Yeah, yeah. Okay. So what are you doing with yourself these days?

**[01:34:44] Alex Beregszászi:** Yeah, I've been taking — I mean after all of this research, I was also heavily involved in security, smart contract security mostly. So co-founded a company called Spearbit which later we also had a brand Cantina which is the main brand as of today, but both of the brands exist. And I worked a couple of years on that, but I'm out of both that and the EF research.

I've been taking a break for the past few months and observing. Obviously a lot of excitement is around AI and even last year as a team, we have been working quite a bit on AI-assisted engineering. At this point it's — I don't know if it's human-assisted AI engineering or human-observed AI engineering. But yeah, I'm just observing at the moment and enjoying a little break but definitely keeping an eye on where the ecosystem goes because I spent so much time here and I do want it to succeed.

<h3 id="closing">Closing</h3>

**[01:36:15] Bob Summerwill:** All right, well I think that's a great point to end. So thank you very much.

**[01:36:20] Alex Beregszászi:** Thank you. It was a pleasure.

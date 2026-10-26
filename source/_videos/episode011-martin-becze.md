---
title: "Early Days of Ethereum - Episode 11 - Martin Becze"
date: 2026-01-28
show: true
guests: ["Martin Becze"]
hosts: ["Bob Summerwill"]
description: "Martin Becze recounts moving from Occupy Wall Street, Bitcoin, BitTorrent, and Namecoin-inspired ideas into Ethereum in early 2014, where he built the JavaScript client and EthereumJS tooling. He discusses meeting Vitalik, working remotely for ETHDEV, the realities of syncing a JavaScript full node, DEVCON0 and DEVCON1, reusable EthereumJS modules like `ethereumjs-tx`, and how many early Ethereum ideas were technically sound but far earlier than the stack was ready for."
img: /images/covers-for-conversations/episode011-martin-becze.png
table_of_contents:
  - link: "#introduction"
    title: "Introduction"
  - link: "#before-ethereum-occupy-bitcoin-and-namecoin"
    title: "Before Ethereum: Occupy, Bitcoin, and Namecoin"
  - link: "#discovering-ethereum-and-building-in-javascript"
    title: "Discovering Ethereum and building in JavaScript"
  - link: "#meeting-vitalik-and-joining-ethdev"
    title: "Meeting Vitalik and joining ETHDEV"
  - link: "#ripple-ryan-fugger-and-early-crypto-context"
    title: "Ripple, Ryan Fugger, and early crypto context"
  - link: "#collaborators-and-the-javascript-full-node"
    title: "Collaborators and the JavaScript full node"
  - link: "#devcon0-and-the-early-community"
    title: "DEVCON0 and the early community"
  - link: "#skype-2015-and-ethereumjs-architecture"
    title: "Skype, 2015, and EthereumJS architecture"
  - link: "#launch-day-and-devcon1"
    title: "Launch day and DEVCON1"
  - link: "#layers-light-clients-and-interplanetary-os"
    title: "Layers, light clients, and Interplanetary OS"
  - link: "#wrap-up"
    title: "Wrap-up"
---

## Transcript

<!-- TABLE_OF_CONTENTS -->

<h3 id="introduction">Introduction</h3>

**[00:02] Bob Summerwill:** Test. Hello, can you hear me?

**[00:05] Martin Becze:** Hello? Hello?

**[00:13] Bob Summerwill:** We good? We're both good, yeah. So, hello, I'm Bob Summerwill here with Early Days of Ethereum and talking to Martin Becze. Hello. Or is it Becze?

**[00:29] Martin Becze:** We say "betse," but "becze" works. Yeah, Becze, that works.

**[00:34] Bob Summerwill:** Okay. So yeah, thanks for talking to us. You are a very OG. You are more OG than I am by a couple of years maybe. Even so, I mean, what were you doing prior to Ethereum that led you to Ethereum?

<h3 id="before-ethereum-occupy-bitcoin-and-namecoin">Before Ethereum: Occupy, Bitcoin, and Namecoin</h3>

**[00:54] Martin Becze:** Yeah, that's a good question. So prior to Ethereum, I had gotten into Bitcoin for a bit. So I was actually at Occupy Wall Street and I set up the Bitcoin donation address for OWS and started doing some development, just regular Web2 development.

But as my projects developed, I started wondering how to decentralize them, as you naturally do if you've played around with crypto. And I was highly influenced by Bitcoin and BitTorrent, and this is around the time Namecoin also.

**[01:45] Bob Summerwill:** Right, right.

**[01:47] Martin Becze:** So I sort of wanted to extend the concepts of Namecoin for my own project, which at the time was a geospatial map thing that displayed what was happening around you. And it was supposed to be federated and I wanted to have a DNS system that we could resolve a location to these servers, so called it GoDNS.

And I was looking at how Namecoin implemented it, I was like, ah, this is going to be a pain. I'm going to have to fork it, rebuild everything, get people to mine it. This is a lot of work. And then as you naturally do, you're like, well, this could just be generalized. Right, right, yeah.

So this is around the time that Vitalik had written some articles, I believe in Bitcoin Magazine, but maybe not, on DAOs and DAXs. Yes, I was very interested in that too. And I was following that work. And then yeah, I saw the white paper drop and as soon as I saw the white paper drop I was like, yeah, that's what I need. That makes a lot of sense. So then I started hacking on it because that was before any code was really operable.

**[03:16] Bob Summerwill:** Right.

<h3 id="discovering-ethereum-and-building-in-javascript">Discovering Ethereum and building in JavaScript</h3>

**[03:17] Martin Becze:** And I wanted to get my hands onto it. I think Aleth was up, but it was really rough. Yeah, it was up on GitHub. And I was a JavaScript programmer, right. So I was like, well, I better implement this in JavaScript, because that's what I know and I really just wanted to get my hands on it and really understand how it worked.

**[03:41] Bob Summerwill:** Right, right. So yeah, we were just looking at some first commit dates. So we saw that Joseph Chow had a first commit on Node Ethereum in February. And then we found March 2014 is probably the first commit on your side. So yeah, the white paper had come out in November of the previous year, but I was looking, the C++ and Go clients started in very late December. But so yeah, a couple of months in, as you say, it's all going to be a bit rough.

**[04:22] Martin Becze:** Yeah.

**[04:24] Bob Summerwill:** And yeah, I mean it wasn't until April that you had the yellow paper. That came a little later, I think. I think maybe April-ish was when Geth and cpp-ethereum were maybe kind of working.

**[04:42] Martin Becze:** Talking to each other.

**[04:43] Bob Summerwill:** Yes. Yeah, yeah, yeah. I'll have to find the date. There is that. I did see maybe a tweet of when that was and I think it was Charles sent a transaction to Gav or the other way around.

**[04:58] Martin Becze:** Was it Gavcoin maybe? Well, here's an interesting thing. Gavcoin came later.

**[05:04] Bob Summerwill:** Well, there was a meetup in London in October 2014 where both Gav and Jeff were basically doing, hey, here's the status of Ethereum and roadmap kind of thing. An hour long, big thorough thing. But what they did at that was Gav had got Gavcoin, which was written in LLL.

**[05:26] Martin Becze:** Yeah.

**[05:27] Bob Summerwill:** And Jeff had JeffCoin, which was written in Mutan, and they had an on-chain DEX. It was an on-chain order book. Really clunky, like here I'm offering three Gavcoin for 10 JeffCoin or what have you. But they demonstrated it there and did a transaction to put an offer into the order book and then Jeff's pressing the button to mine a block and the exchange happened.

**[05:57] Martin Becze:** That's really funny.

<h3 id="meeting-vitalik-and-joining-ethdev">Meeting Vitalik and joining ETHDEV</h3>

**[06:00] Bob Summerwill:** But so, I mean, were there many people where you were living that were regularly having meetups and being involved with Ethereum?

**[06:10] Martin Becze:** No, not at all. I was living in Indiana, so very rural and it was just completely... I only connected online.

**[06:20] Bob Summerwill:** Right, right.

**[06:21] Martin Becze:** And I remained that way for some time.

**[06:25] Bob Summerwill:** Right.

**[06:28] Martin Becze:** And it wasn't till, I don't know, a few months later, I was trying to get a job at Ripple.

**[06:36] Bob Summerwill:** Oh yes.

**[06:39] Martin Becze:** Ripple also. So they had a, I don't remember what it was called, but they were working on a VM.

**[06:46] Bob Summerwill:** Yeah. I can't remember. Codex or something. It wasn't like that.

**[06:52] Martin Becze:** Maybe.

**[06:53] Bob Summerwill:** Yeah, well.

**[06:56] Martin Becze:** So I was interested in that. And I had been working on implementing the Ethereum Virtual Machine in JavaScript, so they thought that was pretty cool. And they flew me out for an interview at their office. And that is when I met Vitalik, because...

**[07:18] Bob Summerwill:** Right.

**[07:18] Martin Becze:** Not at Ripple.

**[07:20] Bob Summerwill:** Yes.

**[07:20] Martin Becze:** He just happened to be in San Francisco at the same time.

**[07:22] Bob Summerwill:** Right.

**[07:22] Martin Becze:** And also Joseph Chow for the first time.

**[07:26] Bob Summerwill:** Do you know when that might have been?

**[07:28] Martin Becze:** Unfortunately, no. I'm really bad at this. But it was maybe, it was definitely past March, sometime in the summer. And then that's when I met up with everyone proper. And Vitalik's like, nah, just come work on Ethereum.

**[07:44] Bob Summerwill:** Right.

**[07:45] Martin Becze:** So yeah, that's what I did.

**[07:48] Bob Summerwill:** So was that working for ETH Dev as a contractor?

**[07:53] Martin Becze:** So yes, I was working for ETH Dev as a contractor at that point.

**[07:58] Bob Summerwill:** Right, right. And yeah, Vitalik notoriously also nearly worked for Ripple but could not get his work permit. So yeah, the world might have looked very, very different if Vitalik had joined Ripple as an intern back then.

**[08:17] Martin Becze:** Sort of like they failed to get everyone, but if they had, Ripple also may have looked a lot different.

<h3 id="ripple-ryan-fugger-and-early-crypto-context">Ripple, Ryan Fugger, and early crypto context</h3>

**[08:24] Bob Summerwill:** Yeah, yeah, yeah. Well, some of my very earliest meetups I went to at the start of 2014, it was like, here's a demo of Ripple, because it really was a lot less of a tribal setup. Right. Like, everyone was bitcoiners, because that's all there was. And then it's like, oh, there are these other things appearing and oh yeah, it's a different form of consensus. Here's a different flavor.

**[08:45] Martin Becze:** And I was actually interested in, there was an early version of Ripple made by this guy in Canada.

**[08:53] Bob Summerwill:** Yeah, Ryan Fugger.

**[08:54] Martin Becze:** Yes.

**[08:55] Bob Summerwill:** Yeah. Who lives in Vancouver, same as me.

**[08:58] Martin Becze:** Oh, nice.

**[08:58] Bob Summerwill:** I've not met him ever, though.

**[09:00] Martin Becze:** So I was interested in that version. You were able to, yeah, I'm not sure if I'm going to be able to actually recall, but it was like debt. You were able to open debt lines to various people.

**[09:14] Bob Summerwill:** Yeah.

**[09:15] Martin Becze:** And then debt would flow through the people.

**[09:17] Bob Summerwill:** That's right. It would ripple through.

**[09:19] Martin Becze:** Yeah, ripple through. And this was pre-blockchain. It was built in PHP. They had a demo in PHP. I had signed up on it. I was playing around. I was offering my services on it.

**[09:33] Bob Summerwill:** Right, right.

**[09:34] Martin Becze:** But yeah, then that's how I got interested in Ripple. But yeah, then they ended up moving in a slightly different direction.

**[09:42] Bob Summerwill:** Slightly different, yes. I think it was 2004, Ryan's work. Yeah, around then.

**[09:47] Martin Becze:** Very early.

<h3 id="collaborators-and-the-javascript-full-node">Collaborators and the JavaScript full node</h3>

**[09:48] Bob Summerwill:** Absolutely. So when you were then working full time on Ethereum, did you have many collaborators? Were many people working on the code together with you?

**[10:02] Martin Becze:** It was me and Joseph Chow to start with. And then Joseph Chow eventually went off and he started working on BTC Relay.

**[10:14] Bob Summerwill:** Yeah, that's a very interesting project.

**[10:17] Martin Becze:** Yeah. So he did that next. But yeah, there was a bunch of people that came in and out. Kumavis Davis.

**[10:26] Bob Summerwill:** Right.

**[10:26] Martin Becze:** He helped out quite a bit.

**[10:28] Bob Summerwill:** Right.

**[10:30] Martin Becze:** I was actually looking through the commits and saw he actually committed quite a few things. And then Alex Beregszaszi became involved and there were several other people that I don't remember anymore, but those I think were the main characters back then.

**[10:47] Bob Summerwill:** Yeah, yeah. So I mean, for Kumavis, was that before he was doing MetaMask?

**[10:54] Martin Becze:** Yeah, yeah. So we met. I met Kumavis at like, it was MailChimp, may have been MailChimp at a party in SF or hangout. And he started just asking me a ton of questions about Ethereum and we ended up chatting for a very long time. And then yeah, he was very proficient in JavaScript as well. So he started hacking a bit on EthereumJS.

**[11:26] Bob Summerwill:** Right, right. Something I think some people have asked and I didn't know the answer to is, was there ever a fully syncing JavaScript node? Were you able to keep up at any point?

**[11:43] Martin Becze:** Yes. So yes, we did have a syncing full node that worked for a little bit, but yeah, it was difficult. I still think it's doable today.

**[11:59] Bob Summerwill:** Right.

**[12:00] Martin Becze:** It's actually not that bad. I think the thing that didn't become our focus though, because it was just not a huge demand for that.

**[12:15] Bob Summerwill:** Right.

**[12:16] Martin Becze:** Everything else is going to go a lot faster. We were interested at the time in trying to embed a client in a browser.

**[12:27] Bob Summerwill:** Yeah, yeah.

**[12:29] Martin Becze:** Which is now possible.

**[12:30] Bob Summerwill:** Right.

**[12:30] Martin Becze:** But through the Helios project.

**[12:33] Bob Summerwill:** Right, yeah. So what's that? I'm sorry, I don't know about Helios.

**[12:38] Martin Becze:** Oh, it's a light client from a16z.

**[12:42] Bob Summerwill:** Oh, right. Right.

**[12:43] Martin Becze:** They founded it. It's in Rust.

**[12:44] Bob Summerwill:** Okay.

**[12:45] Martin Becze:** And they compile it to Wasm.

**[12:47] Bob Summerwill:** Right.

**[12:49] Martin Becze:** And it kind of cheats, right. It just makes RPC requests, but it verifies the Merkle proofs and it verifies consensus.

**[12:58] Bob Summerwill:** Right, right, right.

**[12:58] Martin Becze:** So yeah, it doesn't do the full thing, right. But since, I would say it's a light client, it's definitely a light client where you have proof that the consensus is correct. And then you pull state that's verified from third party RPCs.

**[13:21] Bob Summerwill:** Right.

**[13:21] Martin Becze:** It's all right.

<h3 id="devcon0-and-the-early-community">DEVCON0 and the early community</h3>

**[13:22] Bob Summerwill:** Yeah, yeah, yeah. And so you attended Devcon 0 in Berlin in November 2014.

**[13:30] Martin Becze:** Yes. Yeah.

**[13:31] Bob Summerwill:** So how was that?

**[13:32] Martin Becze:** That was really cool. It was my first time leaving the US. No, not quite. It was my first time flying over the ocean.

**[13:40] Bob Summerwill:** Right.

**[13:41] Martin Becze:** I'd been to Canada.

**[13:42] Bob Summerwill:** Oh, yes, nice.

**[13:44] Martin Becze:** Right. And saw the Niagara Falls and stuff. But yeah, so it's first time in Europe, so it was super exciting. And yeah, I stayed in a big Airbnb with Juan Benet and Vitalik.

**[13:58] Bob Summerwill:** Right.

**[13:59] Martin Becze:** I think Vlad was in the Airbnb as well. It was super cool. Just see everyone for the first time.

**[14:06] Bob Summerwill:** Right.

**[14:06] Martin Becze:** Meet up and yeah.

**[14:10] Bob Summerwill:** Because there are a good chunk of people there. I was trying to count, I think 40 to 50 is about the number that were there. Pretty much everyone who was working on things. I was looking through. I don't think I could spot really anyone who was still involved who wasn't there, with maybe the... Yeah, Anthony Di Iorio wasn't there and he didn't technically leave until the end of 2015, but he was little involved.

**[14:44] Martin Becze:** Yeah, I don't have... Well, actually I had a small contact with Anthony, but yeah, I never met him. I don't think I've ever met him in real life. I know what he looks like though, right?

**[14:54] Bob Summerwill:** Yeah, I have a few times. Hoping to talk to him soon.

**[14:57] Martin Becze:** Oh, nice.

**[14:59] Bob Summerwill:** But yeah, from... There are missing videos from Devcon 0, which I'm still looking for. There's 10 of them on the playlist on YouTube. There's one further which didn't go in the playlist, but is on there. But there seemed to be about 10 missing sessions in there. Can you remember, did you talk at Devcon 0?

**[15:22] Martin Becze:** Was there a... I did, yeah. And I gave a big presentation. Had my slides printed off. I gave a talk on EthereumJS and how I architected it. Yeah.

**[15:39] Bob Summerwill:** So I think that that video is currently lost and I hope to recover it.

**[15:44] Martin Becze:** May have never got recorded. I don't know.

**[15:46] Bob Summerwill:** I think they all did.

**[15:48] Martin Becze:** Okay.

**[15:49] Bob Summerwill:** And the other thing Taylor was saying was that he did interviews with nearly everyone as well. Can you remember, did you talk to Taylor? Did he go off into some back room and do an interview with him?

**[15:59] Martin Becze:** I do not remember that.

**[16:01] Bob Summerwill:** No.

**[16:02] Martin Becze:** I remember Taylor though. Yeah. And he's still around.

**[16:05] Bob Summerwill:** Absolutely. Yeah. So yeah, he was one of the earlier interviewees. Yeah, I've known Taylor for a long time and it was funny because he had the water cooler channel. The Skype water cooler.

**[16:18] Martin Becze:** Yes.

**[16:19] Bob Summerwill:** So when I joined the EF, I joined the EF channel and the water cooler and I thought they were both foundation things, but it wasn't. It's basically Taylor's control room. So then you got a bunch of sort of ex or people outside. It was a broader group. Skype are about to delete all their data, by the way.

**[16:44] Martin Becze:** Okay.

**[16:45] Bob Summerwill:** But you can request a download. So if you want to do that, do it fast.

<h3 id="skype-2015-and-ethereumjs-architecture">Skype, 2015, and EthereumJS architecture</h3>

**[16:51] Martin Becze:** I don't have access to my Skype account anymore.

**[16:55] Bob Summerwill:** Well, I didn't. I mean, you can just log in and do a password recovery thing and then you can request it anyway. So I'm hoping to recover mine and maybe there's some interesting tidbits in that water cooler channel.

**[17:09] Martin Becze:** Yeah, definitely. That'd be interesting.

**[17:11] Bob Summerwill:** Yeah. So then, I guess on into 2015 and through all the POCs, were you generally just continuing to maintain that as new features and changes came in through the POCs?

**[17:28] Martin Becze:** Yeah, so we did. A lot of time was spent on the virtual machine, as you can imagine, that's sort of one of the larger components. I also was working on networking.

**[17:42] Bob Summerwill:** Right.

**[17:42] Martin Becze:** So EthereumJS was a smaller team than everyone else.

**[17:46] Bob Summerwill:** Yes.

**[17:47] Martin Becze:** So we always lagged behind a bit. But yep, the networking protocols, RLPx went through several iterations and then the virtual machine went through several iterations. We contributed to the testing.

**[18:08] Bob Summerwill:** Right.

**[18:11] Martin Becze:** And yeah, that was our main focus.

**[18:16] Bob Summerwill:** Right. So yeah, more about tooling use versus straight consensus client. Because there are many EthereumJS repos and components.

**[18:30] Martin Becze:** Yeah. So the original architecture, and it doesn't exist this way anymore, it's been merged into a monorepo. But originally it was a bunch of small modules. It still is a bunch of small modules, but it's a monorepo. Yes, it's much more sensible.

**[18:44] Bob Summerwill:** Yes, yes.

**[18:45] Martin Becze:** But at that time, yeah, small repos for everything. And yeah, the focus was on building reusable components. So the most widely used component or most widely used module was EthereumJS TX.

**[19:04] Bob Summerwill:** Right.

**[19:04] Martin Becze:** Used for creating and signing transactions.

**[19:07] Bob Summerwill:** Right.

**[19:08] Martin Becze:** So wallets such as MetaMask would use that internally to construct and sign a transaction. Then we had everything broken out. So RLP for serialization, the networking libraries, the virtual machine proper, some of the high level ones.

The fun thing about EthereumJS was that I tried to make these modules very approachable and easy to use. So people did stuff like write a DHT scraper with it to see all the nodes, see what version they're running and things of that nature.

<h3 id="launch-day-and-devcon1">Launch day and DEVCON1</h3>

**[19:54] Bob Summerwill:** Yeah, great, great. So do you have memories of launch day? Where were you on that day? How did that play out?

**[20:05] Martin Becze:** Yeah, that was just like, I think I was hacking away somewhere. I don't think I was anywhere special though. It was just sort of another day for me.

**[20:13] Bob Summerwill:** Right. You weren't in a room with people watching the screen with bated breath?

**[20:19] Martin Becze:** No, no, I wasn't. Yeah, I was just like, yeah, I'll just keep coding type of thing.

**[20:25] Bob Summerwill:** Because there were a bunch of them in the Berlin office together. There's a few photos of that.

**[20:31] Martin Becze:** Yeah, I wasn't there in the Berlin office for that, unfortunately. I don't remember where I was, but yeah.

**[20:38] Bob Summerwill:** Did you do any mining at any point?

**[20:44] Martin Becze:** No. I was too nomadic. No, man.

**[20:47] Bob Summerwill:** Right. You haven't got the place to put the hardware.

**[20:50] Martin Becze:** Yes. I never had a storage place for that.

**[20:54] Bob Summerwill:** No, no. So then I guess through 2015, probably the next big piece was Devcon 1. Did you attend Devcon 1 in London?

**[21:03] Martin Becze:** Yeah, London. I slept in a closet.

**[21:05] Bob Summerwill:** That's my big Harry Potter.

**[21:07] Martin Becze:** Yeah. Memory from Devcon 1. I also gave a talk at Devcon 1.

**[21:14] Bob Summerwill:** Right.

**[21:15] Martin Becze:** Also on EthereumJS, surprisingly.

**[21:17] Bob Summerwill:** Right. So I mean, something somebody pointed out recently was like, if you look at the talks at Devcon 1, it's like everything. There were so many different talks on so many different ideas and concepts, many of which foreshadowing things which are pretty big today, but probably nearly all of it was like 10 years too early.

**[21:39] Martin Becze:** Yeah, exactly. We had a lot of... There's just so many layers that needed to be built. Obviously when you start off, you see this thing, I can do this. You don't fully understand all the layers that need to be created for that. That's a hard problem though. And I think we're still probably catching up to some of the original use cases that were envisioned.

**[22:03] Bob Summerwill:** I was mentioning this to someone last night and he was saying, I think it's maybe another five or ten years from here before all of this stuff is in a viable kind of state. It's a lot more work than perhaps we envisaged at the start.

**[22:23] Martin Becze:** Yeah, it sounds so easy when you start, but yeah, it is hard.

<h3 id="layers-light-clients-and-interplanetary-os">Layers, light clients, and Interplanetary OS</h3>

**[22:27] Bob Summerwill:** Zsolt was saying, I think when he joined the Geth team, he was thinking this would be 6 months, 12 months kind of thing to work on, slightly longer I guess. And yeah, he asked Jeff, so how long do you think for all of these pieces, Aleth and Mix and Mist and proof of stake and sharding. And Jeff said, maybe about seven months or a little more.

**[23:00] Martin Becze:** That's hilarious.

**[23:01] Bob Summerwill:** So it was a little more.

**[23:03] Martin Becze:** Yeah, slightly. A little bit more.

**[23:06] Bob Summerwill:** I mean I had that same delusion because the very first thing I was doing was doing ARM Linux cross builds of the C++ client to try and run it on my smartwatch. Really with the thought that light client was close. Right. So just do the porting of the full clients and then the LES support will drop in in a few months and we can run a full node or a good enough light node on a watch or everywhere. It's just like this is going to be everywhere, right? Every computing device, every router, it'll just pop in. It'll just be another protocol like TCP/IP. It'll be in the Linux kernel, just be another thing, another service.

**[23:50] Martin Becze:** It definitely has a ways to go before Linus merges that.

**[23:54] Bob Summerwill:** Yes, yes, I think. Yep.

**[23:58] Martin Becze:** So I would still like, I think it would be really cool though if someone built a file system interface for Ethereum where you could CD into a folder with all the blocks and CD into a particular block and see a list of transactions, etc. Kind of like a Plan 9 like...

**[24:26] Bob Summerwill:** So you did a talk on this theme in Seattle. There was a meetup with yourselves, like Kenny Rowe, some of the DappSys people. I think Kumavis as well.

**[24:41] Martin Becze:** Yeah, I think Kumavis was there. Juan from IPFS was definitely there.

**[24:46] Bob Summerwill:** Yes, he was.

**[24:46] Martin Becze:** I think David Dias was there.

**[24:49] Bob Summerwill:** Yeah, "Into the Merkle Forest" was one of the talks. And I think yours was like Planetary OS.

**[24:54] Martin Becze:** Yeah, Interplanetary Operating System.

**[24:58] Bob Summerwill:** There we go. There we go.

**[24:59] Martin Becze:** It was a fun talk.

**[25:01] Bob Summerwill:** That's it. Merkle Computing.

**[25:02] Martin Becze:** Yeah.

**[25:02] Bob Summerwill:** Can still happen.

**[25:04] Martin Becze:** Yeah, yeah. And there's no technical reason you can't do those things. It's just layers. Layers need to be built.

<h3 id="wrap-up">Wrap-up</h3>

**[25:15] Bob Summerwill:** Yeah, absolutely. So we're getting the Oscars style music coming on. I'm going to have to wrap up. I did intend to talk about eWASM and things, but maybe that's for another time.

**[25:28] Martin Becze:** Sounds good.

**[25:29] Bob Summerwill:** Okay, so yeah, we're up to the end of 2015.

**[25:32] Martin Becze:** Nice.

**[25:33] Bob Summerwill:** Thanks so much, man.

**[25:34] Martin Becze:** Yep. Thank you, Bob.

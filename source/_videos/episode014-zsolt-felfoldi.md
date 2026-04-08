---
title: "Early Days of Ethereum - Episode 14 - Zsolt Felföldi"
date: 2026-04-08
show: false
guests: ["Zsolt Felföldi"]
hosts: ["Bob Summerwill"]
description: "Zsolt Felföldi reflects on joining Ethereum in early 2015 after initial work on Swarm, then being redirected by Jeff Wilcke onto the Geth light client. He discusses ETHDEV's informal hiring culture, the Amsterdam and Berlin years, lessons from Mist, LES, and decentralized infrastructure, and how Ethereum's scaling path evolved from early trinity-era assumptions to today's multi-client and layer-2 reality."
img: /images/covers-for-conversations/episode014-zsolt-felfoldi.png
table_of_contents:
  - link: "#introduction"
    title: "Introduction"
  - link: "#pre-ethereum-background"
    title: "Pre-Ethereum Background"
  - link: "#discovering-ethereum-and-swarm"
    title: "Discovering Ethereum and Swarm"
  - link: "#joining-ethdev-and-the-go-team"
    title: "Joining ETHDEV and the Go Team"
  - link: "#amsterdam-berlin-and-jeff-wilcke"
    title: "Amsterdam, Berlin, and Jeff Wilcke"
  - link: "#the-light-client-and-the-failed-local-first-vision"
    title: "The Light Client and the Failed Local-First Vision"
  - link: "#state-scaling-and-storage"
    title: "State, Scaling, and Storage"
  - link: "#geth-team-and-multi-client-coordination"
    title: "Geth Team and Multi-Client Coordination"
  - link: "#looking-back-after-ten-years"
    title: "Looking Back After Ten Years"
  - link: "#wrap-up"
    title: "Wrap-up"
---

## Audio

<audio controls style="width: 100%; max-width: 600px;">
  <source src="/assets/audio/episode014-zsolt-felfoldi.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>


## Transcript

<!-- TABLE_OF_CONTENTS -->

<h3 id="introduction">Introduction</h3>

**[00:02] Bob Summerwill:** So, hello and welcome to ETHDenver 2026. So here recording for Early Days of Ethereum with Zsolt Felföldi. How do you pronounce your name?

**[00:14] Zsolt Felföldi:** Zsolt Felföldi.

**[00:16] Bob Summerwill:** There you go. Anyway, so yeah, I was working out when we recently reconnected at DevConnect and I was working out that you're the third longest person at the Ethereum Foundation. Right. You've got Vitalik and then Felix and then you.

**[00:38] Zsolt Felföldi:** Yeah, I haven't really checked this fact yet, but honestly, yeah, it sounds great.

**[00:46] Bob Summerwill:** That's it. So, I mean, you're a very long time member of the Geth team.

**[00:52] Zsolt Felföldi:** Yes.

**[00:52] Bob Summerwill:** But what were you doing before you started at the foundation? What was your background? How did you find your way into the blockchain world?

<h3 id="pre-ethereum-background">Pre-Ethereum Background</h3>

**[01:02] Zsolt Felföldi:** Well, before Ethereum, I was working on really different types of projects. So I first started at a Hungarian software company, like really classic software company. We actually sold software in boxes like put on a shelf, like floppy disks. Put in a box on a shelf and you can buy the software. Like this type of classic, classic software.

**[01:35] Bob Summerwill:** Five and a quarter inch floppies.

**[01:38] Zsolt Felföldi:** Yeah, yeah, actually three and a half.

**[01:42] Bob Summerwill:** Oh, okay. Three and a half. We're on to modern floppies.

**[01:46] Zsolt Felföldi:** Yeah, but maybe also like, I started in '97, so maybe I was exaggerating a little. So by that time it was mostly CDs. We still used a lot of floppies anyway.

So at that company I did things related to, first things related to computer graphics. Like I wrote a ray tracing engine for some architectural software. And then I also did a lot of work on electronic circuit simulation and circuit design.

**[02:20] Bob Summerwill:** Right.

**[02:21] Zsolt Felföldi:** So yeah, really different things. And it was around 2011 when I first heard about Bitcoin and around 2012 when I started to realize that as weird as it sounds, it really is probably a big thing. Actually I first heard about Ethereum early 2014, a few months after the initial paper has been published.

**[02:53] Bob Summerwill:** Yeah.

**[02:54] Zsolt Felföldi:** And yeah, started contributing I think around November and officially joined EF in 2015, March. So yeah.

**[03:05] Bob Summerwill:** And did you hear about it, you think, through like Danny and Viktor or some other way?

<h3 id="discovering-ethereum-and-swarm">Discovering Ethereum and Swarm</h3>

**[03:14] Zsolt Felföldi:** Well, I did hear about it from like Danny and Viktor's friend circle.

**[03:22] Bob Summerwill:** Right.

**[03:22] Zsolt Felföldi:** Yeah, but then Viktor was already. Actually I never didn't know Viktor before. So I heard about this thing through one of Danny's friends and then Viktor was also in that wider circle and he came to Hungary and said, oh, I'm already working on this.

And then I started with my ideas and started to explain to him why this thing probably will never work. And he was like, okay, you seem to have a good understanding of this. Why don't you come to work?

**[03:52] Bob Summerwill:** Right, right. And was I right in thinking that you said it was Swarm that you started with?

**[04:00] Zsolt Felföldi:** Well, yeah. So Swarm was part of this initial trinity of base technologies of Ethereum. So was supposed to be the storage layer for dapps. Yeah, I mean it was kind of a naive way of how people imagined the decentralized applications back then. But honestly it made sense at the time.

So I will say that, yeah, nothing ever turned out exactly the way that people imagined it. But we are still making a lot of progress. So yeah, Swarm was how we initially imagined this storage layer for Ethereum. And I mean this project still has merits, but yeah, this whole problem space is just a bit more complex.

But yeah, so I started contributing to Swarm first and actually I brought the first 500 lines of Swarm.

**[05:02] Bob Summerwill:** There you go. Yeah, I mean I think if I remember rightly that Viktor mentioned around May 2014 was when he first heard the trinity, this concept that you could have Ethereum as your sort of your compute, an expensive database, Swarm as your decentralized storage, and then Whisper as your messaging. Was that famous diagram, right, with the, there's like a circle and the things coming in and Whisper going around the edge and there's another one of those. But yeah, I mean, I guess it was Devcon 0 where Danny really presented a sort of a fleshed out vision of what that decentralized storage.

**[05:54] Zsolt Felföldi:** Yes, that's correct. I wasn't there at Devcon 0 yet. So I've heard about this idea even before I heard about Ethereum. So Danny Oradeesh told me about this idea that he wants to do these kinds of hash-based chunk storage. And yeah, so it made total sense that he just pitched that.

**[06:14] Bob Summerwill:** That can fit in.

**[06:16] Zsolt Felföldi:** Yeah, at the time it was a perfect fit. So he pitched this idea at Devcon 0 and when they accepted it and hired Danny, then he called me and said, because he already knew that I know of this project, yeah, then let's do it together.

<h3 id="joining-ethdev-and-the-go-team">Joining ETHDEV and the Go Team</h3>

**[06:38] Bob Summerwill:** There you go. And then so you were hired into ETH Dev? I did have a date for that. I've forgotten. I guess it was shortly after Devcon 0, right, that you started there?

**[06:51] Zsolt Felföldi:** Yes, correct.

**[06:53] Bob Summerwill:** Did you go to Berlin or Amsterdam? When did you first meet other people? How did...

**[07:01] Zsolt Felföldi:** It was Amsterdam in February '15.

**[07:05] Bob Summerwill:** Right.

**[07:06] Zsolt Felföldi:** That's where I met Jeffrey Wilcke, the creator of Go Ethereum and the Go Ethereum team. Back then, I don't say Geth because Geth was like this abbreviation was invented later. So yeah, that's where I met the Go Ethereum people.

And I already had these contributions to Swarm and it was kind of an implied thing that maybe I might be hired, but there was really no official hiring process back then. Yeah, it was really just Jeff was this really laid back guy and he just said, okay, okay man, I saw your contributions and let's talk sometime this week. And I waited the whole week and waited for some serious interview. Like it was a dream job for me.

Yeah, but by that time I was really enthusiastic about this whole thing and I felt like, so even though I felt that this whole initial design was, yeah, I really couldn't imagine how it would scale and everything. And it is a hard problem. So yeah, it was true, but it was still worth starting it and I was really enthusiastic and I really wanted to get hired. And yeah, the whole week I just waited. And at the end of the week, like last half an hour before we all left home, Jeff just said, oh yeah, man, I wanted to talk to you. You're hired. Okay, that's a good talk. So yeah, this is how the hiring process went back then.

**[08:50] Bob Summerwill:** Excellent. Well, that's easy. We like that. And so you, that was before you went to Amsterdam, I assume. I assume you went to Amsterdam after you had been hired.

**[09:04] Zsolt Felföldi:** No, no, no, it happened in Amsterdam.

**[09:06] Bob Summerwill:** Oh, you, I see. So you were there unhired, on site.

**[09:10] Zsolt Felföldi:** Yeah, so like Jeff agreed that if, I mean, I bought my own plane ticket but I could stay at the Airbnb the team stayed and yeah, I just worked with them and showed my contributions. And so I went to Amsterdam unhired.

**[09:27] Bob Summerwill:** Right, right.

**[09:29] Zsolt Felföldi:** That plane ticket was a good investment.

<h3 id="amsterdam-berlin-and-jeff-wilcke">Amsterdam, Berlin, and Jeff Wilcke</h3>

**[09:31] Bob Summerwill:** Yeah. So did they not have office space at that point even?

**[09:36] Zsolt Felföldi:** Well, they did actually. Back then there was an Amsterdam office.

**[09:40] Bob Summerwill:** Right.

**[09:41] Zsolt Felföldi:** It was mostly for Jeff because Jeff lived in Amsterdam. But when Jeff left EF, or maybe before that, I'm not sure exactly, but this office was closed and actually it was a really small office. Last time I checked, now I think it's a dentist that works there. So yeah, it doesn't exist, but it was really just a small, small place.

But later I went to Berlin a lot. So after I was hired, yeah, it was for the Geth team, it was really centered in somehow in Berlin.

**[10:24] Bob Summerwill:** Right, right. Because yeah, I mean, I guess as well as Jeff, you've got Bas. Right. He was another Amsterdam person, right? Bas van Kervel. But then maybe most of the other team members weren't in Amsterdam, I mean.

**[10:43] Zsolt Felföldi:** Yeah, yeah. No one else was in Amsterdam. Bas was there for a short time, relatively short time. And Jeffrey also left after a while and started his own company. Developed games or something. Yeah.

**[11:01] Bob Summerwill:** Though he did have... oh, ETH Labs was another one. Do you know anything about ETH Labs? Because when Jeff worked with JP Morgan to do Quorum, that was announced under the label ETH Labs. Never heard of that.

**[11:18] Zsolt Felföldi:** Yeah, I think I heard the name, but I didn't really know what it does. But yeah, this is something I knew that Jeff started working with JP Morgan. In that time big banks really, really wanted to just talk to us at every Devcon and we were always invited to fancy dinners by some bank people. So banks really wanted to learn about the technology. So Jeff went for a while to work on Quorum. Yes.

**[11:52] Bob Summerwill:** Yeah. I mean, unless I can somehow get in contact with Jeff, I guess it's a little bit of a mystery what exactly ETH Labs was. Though I suspect it might be a little bit like Ethersphere, of just sort of being a name, a banner for activities rather than a legal entity. And another thing I don't know there, but I suspect is I don't think Jeff told Ming that he was doing that stuff with JPM. I suspect that he completely just did that on his own without any communication with Ming or with the EF. It's just he went and did it.

**[12:35] Zsolt Felföldi:** He never really told a lot to us about that, so we knew that yeah, he's working with JP Morgan, but probably it's a big bank, probably he had to sign contracts, non-disclosure agreements. So he probably couldn't share all the details.

**[12:51] Bob Summerwill:** No, no. I mean, I remember at some point and I can't remember the context, him saying he found it interesting because the consensus for that was on chain. Like the consensus for that was happening as smart contracts. So it was kind of almost like this pluggable consensus, but consensus pulled up into the app layer. So he found that quite interesting that the initial Quorum consensus, it didn't last long, but I think Gav also was doing that sort of stuff on the C++ side that he did some proof of authority stuff before that happened.

On the Geth side before Clique, there was this. Okay, well, he actually made a different C++ client, so you've got eth, but he made another one that was called Fluidity or something which was pulling all the libraries in the same, but it was with a proof of authority consensus. But that was one of the last things he did before he went out to Parity. So I think both him and Jeff were interested at that thought of, well, how can you formulate these pieces in different ways for those kind of use cases? Interesting. But yeah, he left. I think it was, I think it was probably very early in 2017. I did find a period, but it was certainly ahead of Devcon 3. Let me see if I can find the date.

**[14:42] Zsolt Felföldi:** Yeah, I don't remember the exact date and actually there was maybe there wasn't even a really exact date when Jeff left because basically a month after I joined, Peter Szilágyi joined and he was the team lead for a very long time. So Jeff basically kind of handed it over to Peter and for a while he was officially still team lead, but not really. We haven't seen him on the calls for a while.

**[15:14] Bob Summerwill:** No. So the date I found there was February 2017. But I think I got that from GitHub. I think that was like his final commit. But he probably tailed off a long time before that.

**[15:28] Zsolt Felföldi:** He already started focusing on other stuff like this Quorum stuff and his own things sometime in '16.

**[15:35] Bob Summerwill:** Yeah, yeah. So started a company called Grid Games with his brother building a particular game, though that also seems to have ceased. So yeah, he's unknown off in the world somewhere.

**[15:51] Zsolt Felföldi:** Yeah, that's pretty much all I know about him. We tried to invite him a few times to just come to some event and meet up. But yeah, I think for some reason he really had enough of maybe not us, but things going on in the EF.

**[16:13] Bob Summerwill:** Yeah, I mean, yeah, I think that would be the case that when Ming came in, she both did legal tidy up, but also cut the spending a lot. You know that you'd had the crowd sale in July, August, September 2014, but coming up to the mainnet release a year later, like nearly all the money was gone. Yes, they spent it very fast.

**[16:40] Zsolt Felföldi:** Yeah. So Devcon 1 in London was really this low budget thing. We really didn't have money and everyone was aware of that and that yeah, there was a big need to become much more cost efficient in things and basically go into this austerity mode.

<h3 id="the-light-client-and-the-failed-local-first-vision">The Light Client and the Failed Local-First Vision</h3>

**[16:40] Bob Summerwill:** And then I remember for some people in the C++ team it was kind of two stages of layoffs because I think C++ got cut in half at the time of London and then later in the year and they were kind of down to bare bones. But yeah. So I mean from your side and you touched on there that initially you were working on Swarm and then Jeff kind of repurposed you onto Light Client. So how did that play out? I mean, how far along was Light Client as a concept and who else was working on that?

**[17:26] Zsolt Felföldi:** Well, so Light Client was a thing that was always there from the beginning. Like people knew that okay, it would be nice to run nodes on mobile devices and on every possible thing.

But back then everyone had this assumption that yeah, and maybe in like a year or max two years everyone has these full nodes embedded in every possible device. Actually back then we also kind of assumed that the chain itself will not grow much bigger because everything else, like storage and communication and all the scalable stuff will be offloaded to Swarm and Whisper.

And yeah, so Light Client was this thing that was always there but somehow everyone assumed that it is just a temporary thing until everyone can run a full node. And then it turned out that no, it was not just like a temporary thing.

So I did start designing this Light Client protocol and as every problem in Ethereum, it looked easy at first and then it was not. So it was kind of a longer process to really find a decent way to do it.

**[18:43] Bob Summerwill:** Right. Though one thing that's kind of different there from, let's say, the current production chain is you don't have the complete history of all the state transitions because of how things are represented in the history of Ethereum. But because if you are running a node at that point, there isn't pruning, right? There isn't, you know, before all the blocks you would keep would be full blocks and the recent state would be kept in memory and you could replay the chain but you didn't have like full snapshots back from earlier on. Or how did that go?

**[19:20] Zsolt Felföldi:** Well, for Light Clients we didn't really care because the whole point was that the Light Client receives only the current state values as Merkle proofs and doesn't really care about the historical values. So if the proving node is able to still access some historical value through archives then it could also prove those. But that wasn't really the point.

So for the Light Client, the point was always that you can run an application that is about the current state and current balances and current contracts and you don't really need all the history.

**[19:57] Bob Summerwill:** Right, right. And I mean one thing that has, I guess, become much more visible now is just how large the state becomes and how the state itself is an issue. There was so much focus for years on throughput, like how many transactions per second and the amount of data in blocks, but the state itself became a really big problem.

**[20:26] Zsolt Felföldi:** Yes, exactly. So it was really like this thing that at the beginning we imagined, okay, blocks get bigger and bigger and then maybe this data can somehow be stored elsewhere. But it turned out that the real difficulty is not the blocks, it's the state.

And the state is not just a big static data set. It's like a huge random access data set that keeps changing all the time and keeps changing at completely random places and it's not as easy a task to distribute it. So actually it's getting harder to even synchronize it between full nodes storing the entire stuff.

**[21:08] Bob Summerwill:** Right. So I mean if you look at where things are now, with all the discussions around statelessness, state expiry, Verkle, alternative storage approaches and so on, how do you think about this?

<h3 id="state-scaling-and-storage">State, Scaling, and Storage</h3>

**[21:23] Zsolt Felföldi:** Oh, so yeah, these are all different aspects of the same fundamental issue. So statelessness is definitely useful. It helps with scaling. But it is not a silver bullet.

The state tree still has to be processed and maintained by someone and especially if most of the nodes have no incentive to process it. And yeah, now we are talking about 100x and 1000x scaling, then even if we also do state expiry, which is currently imagined in a way that we basically reset the state tree every year or something and have multiple state trees. So yeah, that helps somewhat.

But if we scale a thousand x then it will be a huge infrastructural centralization issue.

**[22:18] Bob Summerwill:** Right.

**[22:19] Zsolt Felföldi:** And yeah, by the way, this thing is not an unsolvable problem. I mean the state as it works today, unfortunately somehow makes it really hard to do any fundamental improvements over these properties.

But people are considering different storage architectures. Of course we have to keep the existing contracts workable because that was our main promise from the beginning that we will not just shut down anything. Everything has 100% uptime. But it is a viable way to come up with more efficient storage methods and use it as an opt-in alternative that will over time be available for much less and new contracts can be designed using those more efficient storage architectures.

**[23:07] Bob Summerwill:** Yeah, because Verkle trees seem to be the first sort of thought on that. But then that's kind of come and gone and maybe it's a binary tree.

**[23:16] Zsolt Felföldi:** Or actually it does either.

**[23:19] Bob Summerwill:** You don't think it's so important either.

**[23:21] Zsolt Felföldi:** I mean, both are better than the Merkle Patricia tree but in some ways. But they don't solve this fundamental issue by themselves. So still the thing is that the state is a permanent key-value store and in order to avoid it growing forever, yeah, there's all these ideas about state expiry but still it's going to be a huge data set and the method of hashing or consensus protocol representation doesn't fundamentally change this.

So Verkle was supposed to provide more efficient Merkle proofs but also I guess somewhat more expensive state processing because it's like more expensive cryptography. Also if I'm correct, it's not quantum secure. And that was also a thing that I always felt like yeah, I'm not sure if it's a good idea to start working from now and I just saw it in front of my eyes how it's going to be canceled.

**[24:27] Bob Summerwill:** Yeah, yeah. I mean I guess for running nodes in general, there's not a lot of incentive for people to run any kind of node software themselves unless they are a validator or you're running an exchange or a business and you need your node backend to that. I guess the vision that there was at the start of like, well yeah, everyone will be running their own node and you've got Mist on top of it and it's local apps. And then that can have Swarm for the smart contracts and it's almost like you won't have server architecture because everyone's running a server stack and then yeah...

**[25:01] Zsolt Felföldi:** That did not happen. Actually, that's, so that's why we are also stuck with the JSON-RPC API which doesn't provide proofs except for eth_getProof but doesn't provide proofs for a lot of things because it was never meant to be used remotely. It was always imagined that it's used locally in a trusted setup on your own machine.

And yeah, I remember all those good old days when I just synced up a full node. It was a few gigabytes of disk space and ran Mist on top of it. And yeah, it's magic. But yeah, unfortunately it didn't scale.

**[25:34] Bob Summerwill:** No, no. At the Museum of Ethereum here I've got laptops running Geth 1.3.6, so Homestead Geth. And I mined Homestead back to life. So any hard fork that happens, the old one doesn't go away, right? It doesn't disappear. It's just people don't associate any economic value with it and it kind of gets abandoned.

But yeah, what I've done is first GPU and then down to CPU mined that Homestead difficulty down to the level that you can CPU mine it again. So I do, I have got Mist running on those so we can go and transact, we can send a transaction between those and it should be possible to run Aleph Zero and Aleph One and Mix on that as well. I haven't had time to do that. And ERC-20 tokens existed. You could have DAO tokens or Mist Coin at that time.

But yeah, the assumption that people would run their own node and it would all be self-sovereign local apps certainly did not come to fruition.

**[26:38] Zsolt Felföldi:** Well, yeah, that's when the Light Client came in and then we assumed that okay, then we do the Light Client and then it will be all solved.

**[26:45] Bob Summerwill:** But that's what I was thinking is like right, I've got a full node running on my smartwatch that works and I'll just wait for you and the other guys to sort out Light Client and just turn that on and there we go.

**[26:59] Zsolt Felföldi:** Well, actually the Light Client protocol worked fine. It's just, yeah, I spent like a really crazy amount of time figuring out how it could be decently incentivized in a truly decentralized way.

Because yeah, I remember this. There was this idealism that yeah, now we are almost done with everything so we just have to find a real proper way for incentivizing things. But not in a way that there's a few companies where you can buy tokens but through truly in a decentralized way, which is much harder because yeah, then we have to somehow build decentralized trust and figure out market mechanisms that work without initial trust.

So yeah, this is something I spent years with and honestly I think I came up with some nice theoretical models and a lot of really complex code. But yeah, it's just again was like the wrong approach, maybe also at the wrong time. So we were just not there really.

**[28:10] Bob Summerwill:** Yeah, because I mean BitTorrent has obviously worked for distributing content for many, many years. But then you do have this tragedy of the commons, right? The latest Hollywood movie, someone has ripped it off and people want that. So that's going to get shared around, no problem. But things which are only of interest to a smaller number of people without incentives, it's just a leeching problem.

Right, full node runners would contribute, they'd turn on LES as well. Right. They would help supply that. But the incentives and economics of that, not easy.

**[28:47] Zsolt Felföldi:** Yeah. Actually with BitTorrent it also usually, if you really want to use it, it requires trackers where you buy some priority access. So there are these private trackers and everything. And this is also not completely decentralized, but actually it does work. So it's definitely better than nothing.

But for LES it wasn't really this easy because this whole service, like downloading movies, was an application that everyone understood that everybody used. And somehow with Ethereum it was always this, yeah, everyone felt the importance, but if you're nowhere near close to a really mature ecosystem. And so it was just, I don't think there would have been a big enough market really for these services to really work out in a market-based way.

But as we scale and accessing the whole data set becomes more and more difficult, at a certain point I think we are going to have something like I imagined several years ago. So yeah, it's just both like timing and specifics. Yeah, I was right about everything except timing and specifics.

**[30:06] Bob Summerwill:** Yes, yes. Yeah. I mean there's a number of things that seemed like they would be easy and quick and obvious and have taken so many years. I mean like proof of stake, the, it was in the white paper, there was an assumption later in 2015 that it will happen within six months, maybe three, six months. And then it's eight years before it actually went live.

And yeah, I mean on storage, so Filecoin, their first white paper was in 2014 as well. Filecoin was not a new thing and IPFS was around before Ethereum as well. And then yeah, Whisper kind of went for a while and then now there's Waku and you've had Status driving a lot of those techs for a lot of those years as well. Jarrad Hope and team who were also doing Android version of the Java client, same kind of time as I was looking at smartwatches.

**[31:08] Zsolt Felföldi:** Jarrad Hope was also very eagerly waiting for a fully functional Light Client.

**[31:14] Bob Summerwill:** Yeah, well yeah, because they were building kind of decentralized WeChat super app but I guess kind of a competitor to Mist really, similar kind of thing wanting to have a container for running dapps in sitting on top of a local client, again having this completely self-sovereign kind of server app stack. But not easy. I can't remember who it was that was telling me when they first saw MetaMask, which was at Devcon 1, that was one of the grantee winners was MetaMask. Them thinking no, that's not what we want. We don't want some browser extension thing talking to a trusted endpoint. That's absolutely the opposite. What are these guys doing? And then that's become the standard flow, right?

**[32:01] Zsolt Felföldi:** Well yeah, so this is still kind of an unsolved problem to access everything in a truly decentralized way but I think we are getting there over time. It's just nothing is as simple as we initially imagined and also there's a time for everything and I think true decentralized infrastructure will be forced by scaling. And things sometimes just don't happen if they are not forced by some circumstance, some external factor. So as long as it works in a lazy way to just connect MetaMask to Infura, until then it's the standard way.

**[32:39] Bob Summerwill:** Yeah, yeah. So I think I found two different talks of yours at Devcons talking really about Light Client. Do you remember? Did you talk in London or was Shanghai your first?

**[32:51] Zsolt Felföldi:** No, I talked at London, also Shanghai and also in Cancún. Yeah, so those were the first two Devcons were mostly about the Light Client. So actually the first release of the Light Client protocol was in '16, so it was around that time. And later I already started to invent all the next chapters of decentralized technology.

And yeah, it was really naive of me but I also had this project back then where I started to try to make logs provable efficiently. And yeah, that was the initial attempt for that was in 2017 and now I'm back at it. Now I also have this trustless log index project. And yeah, so this old approach of 2017, that was just a more efficient way to organize the bloom filters but it didn't really solve the problem of the bloom filters not adapting to the number of events and also I never even proposed putting it into consensus which would have allowed actual trustless proofs through the chain.

**[34:14] Bob Summerwill:** Right.

**[34:15] Zsolt Felföldi:** So yeah, that also proved to be a hard problem. But yeah, this is one of the things what I presented in Cancún.

**[34:25] Bob Summerwill:** Right, right, right.

**[34:27] Zsolt Felföldi:** And also some kind of my ideas of state channels. So back then we didn't have like L2s in a way. So actually back then layer 2 just meant something that happens off chain, not necessarily another blockchain.

And yeah, so I had these ideas about individual nodes running their own blockchains, somehow organizing some off-chain calculations through that. But yeah, it also assumed a lot about how nodes would operate and probably would have never worked in retrospect.

**[35:05] Bob Summerwill:** Yeah, I mean we had state channels and then we had Plasma and then eventually coming into optimistic rollups and then ZK later. Just many, many different attempts. Hello. See you sir.

**[35:19] Zsolt Felföldi:** Great to see you.

<h3 id="geth-team-and-multi-client-coordination">Geth Team and Multi-Client Coordination</h3>

**[35:22] Bob Summerwill:** So, so yeah, I mean I guess there's an awful lot of learning, right. Ten years worth of lots of people trying lots of different things. So I mean in terms of the Geth team, has that been similar over the years or have you had larger and smaller amounts of people? Has it been a similar kind of flow through that time?

**[35:48] Zsolt Felföldi:** I would say it was pretty consistently around 10 people throughout all these years, sometimes 8, 9, sometimes 11, 12. But really like in this range.

We did improve our internal processes during the years. So yeah, now we do have all this issue and pull request triages and yeah. But really it's been mostly, that team was also always small enough so that we didn't need a lot of processes. Honestly, the team culture, yeah, it did obviously change, especially with certain people coming and going. But I would say it was always a good team culture. I always liked the Geth team. That's also why I never really looked into moving to other teams or other projects because I felt that the team is the best place to do meaningful things.

**[36:57] Bob Summerwill:** Yeah, I mean it's funny because from the very start of Ethereum, the intention was to have multiple clients. Right. That was a very basic decision of saying we want a separation between the specification and the implementation. Right. Because we don't want it to be like Bitcoin where you've got one code base and then there's no competition, there's no...

**[37:20] Zsolt Felföldi:** Well yeah, for Bitcoin's complexity that approach worked, but for Ethereum's complexity I would say this was one of the best decisions. Yeah, it also contributed to almost running out of money by the time we launched mainnet. But I would say it was money well wasted.

**[37:40] Bob Summerwill:** So yes, no, I would agree it was not efficient, but the outcome was very much worthwhile.

**[37:48] Zsolt Felföldi:** Yeah. And when we switched to proof of stake we again successfully applied this pattern by funding multiple CL implementations and then testing every EL against every CL and then running testnets with all the five.

**[38:09] Bob Summerwill:** Is it five? Five different primary consensus clients. There are, I think it's five. And yeah, notably none of those were within the foundation either. They were all independent companies and teams. So I mean on the execution side there have been a good number of different alternative execution clients over the years. So I mean how have you tended to work and interact in that kind of environment where you've got all these different, I guess starting with Parity and then Besu and Nethermind, Erigon. So how do you work with other teams?

**[38:53] Zsolt Felföldi:** Well. Now we have all the ACD calls and testing calls. So mostly, I mean we all do have working clients all the time. So by default we don't need to interact a lot. We have to interact when we are testing out new features. There are the prepared forums for that.

And it's also some people keep more contacts outside of the Geth team, some people are more turning inwards and then just focusing on Geth issues. But actually I think in the first years communication was really not organized well so we really just tried to figure out things and some people knew some people from the other teams. But actually these days we have much better processes for this.

Also it's a much, much bigger challenge because there are so many more people. Actually this is also something I realized during the time we really started working on proof of stake. So in 2017 was the first time ether price went to several thousand dollars and yeah, the foundation had money to hire new teams and fund external teams.

And I remember that until 2017 I mostly met non-Go Ethereum people mostly at Devcons.

**[40:37] Bob Summerwill:** Right? Yeah.

**[40:37] Zsolt Felföldi:** And maybe those people who lived in Berlin or one of those cities where there were multiple people, they met more people. But I was mainly in Hungary and worked remotely and yeah, I mostly met most of the people at Devcons.

But around, I think it was 2018, where so many researchers were hired and there were also the Seattle teams. And I remember Devcon 4 in Prague. Yeah, so until then it was mostly, I don't know how many people exactly but I do remember it's maybe 30, 40 people. I don't know, after every Devcon we stood up at the main stage and did a group photo.

**[41:28] Bob Summerwill:** Oh yeah, yeah.

**[41:28] Zsolt Felföldi:** We are the Ethereum Foundation.

**[41:30] Bob Summerwill:** Yes.

**[41:30] Zsolt Felföldi:** Like it was that many people. And in '18 I just, I was just shocked. Like who the hell are all these people? All Ethereum Foundation. So yeah, it became a much bigger challenge. But also now we do have all these official forums and also I try to go to more events, not just Devcons. So yeah, in order to keep all the context live.

<h3 id="looking-back-after-ten-years">Looking Back After Ten Years</h3>

**[42:00] Bob Summerwill:** Yeah, yeah. So I mean looking back to when you first started working on Ethereum, did you have any kind of thought or vision of what things might have looked like 10 years later? Like has it worked out as you expected or differently or what's your looking back on these 10 years? What's your thought?

**[42:25] Zsolt Felföldi:** I always had a lot of visions. Yeah, maybe I was too focused on visions sometimes. So the thing is that we all kind of have to imagine the future at every point even though we know we can't imagine it as it will turn out.

So it never turns out exactly the way we want but we always have to have some kind of direction and we have to just have ideas of how things can turn out.

So yeah, around like 2017 I also realized that scaling will not happen just with L1. So I also had this, as I mentioned, had these ideas about how we could solve problems more efficiently with not even rollups, just application-specific state channels and stuff like that. But it also, there was this really great project. Oh, okay. I don't... Yeah.

**[43:34] Bob Summerwill:** Raiden.

**[43:35] Zsolt Felföldi:** Raiden. Yeah. Thank you. So yeah, they properly implemented the protocol and everything. Yeah, I think it has always struggled with like not many people using it. So there's a problem. It's a pain that the transactions are expensive, but still somehow maybe we just missed some organizing force to really move to some kind of layer 2 solutions and it was just...

**[44:10] Bob Summerwill:** Yeah, well it was meant to be Lightning for Ethereum, right? That was the thought.

**[44:16] Zsolt Felföldi:** Well yeah, it was pretty much that idea.

**[44:18] Bob Summerwill:** But then Lightning's kind of failed so maybe not surprising if an Ethereum version of that's not really got. Because you've got routing issues. Right. It's really complicated that channels seem to work great for consistent static topographies. If you want to do merchant to merchants, channels work great.

**[44:46] Zsolt Felföldi:** Yeah. But opening those channels is still costly and non-trivial and yeah, it's just. I also never really, I installed it, I tried it, okay, this is interesting but I never really made a payment through Raiden because there was just no occasion where the other party really wanted a Raiden transfer.

<h3 id="wrap-up">Wrap-up</h3>

**[45:14] Bob Summerwill:** No. No. Well, thank you very much. I think we can wrap it up there. So thanks for your time and thanks for all of your work on Geth over these very many years. Geth has always really been the backbone of Ethereum. New clients come and go, but Geth remains. So thank you.

**[45:39] Zsolt Felföldi:** Thank you for having me here.

**[45:40] Bob Summerwill:** Thank you so much.

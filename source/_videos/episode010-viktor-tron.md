---
title: "Early Days of Ethereum - Episode 10 - Viktor Trón"
date: 2026-01-21
show: true
guests: ["Viktor Trón"]
hosts: ["Bob Summerwill"]
description: "Viktor Trón was among the first employees of the Ethereum Foundation in 2014, working on the Geth client before founding the Swarm project. He discusses early London meetups, the Web3 vision, decentralized storage architecture, and Swarm's journey to independence."
img: /images/covers-for-conversations/episode010-viktor-tron.png
embed:
  url: https://www.youtube.com/embed/470q6U-TEMI
table_of_contents:
  - link: "#introduction"
    title: "Introduction"
  - link: "#pre-ethereum-bbc-and-bitcoin"
    title: "Pre-Ethereum: BBC News Labs and Bitcoin"
  - link: "#anarchism-and-austrian-economics"
    title: "Anarchism and Austrian economics"
  - link: "#early-ethereum-meetups"
    title: "Early Ethereum meetups and joining the team"
  - link: "#go-ethereum-development"
    title: "Go-Ethereum development"
  - link: "#early-2014-skype-and-collaboration"
    title: "Early 2014: Skype groups and collaboration"
  - link: "#yellow-paper-and-client-development"
    title: "Yellow Paper and multi-client development"
  - link: "#devcon0"
    title: "DEVCON0 (Berlin 2014)"
  - link: "#web3-and-swarm-origins"
    title: "Web3 vision and Swarm origins"
  - link: "#swarm-technical-architecture"
    title: "Swarm technical architecture (DPA, Kademlia, SWAP)"
  - link: "#ethereum-foundation-austerity"
    title: "Ethereum Foundation austerity (2015)"
  - link: "#devcon1"
    title: "DEVCON1 (London 2015)"
  - link: "#swarm-foundation-independence"
    title: "Swarm Foundation and independence"
  - link: "#swarm-today"
    title: "Swarm today: features and comparison"
  - link: "#reflections"
    title: "Reflections on 10 years of Ethereum"
---

## Audio

<audio controls style="width: 100%; max-width: 600px;">
  <source src="/assets/audio/episode010-viktor-tron.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>


## Transcript

<!-- TABLE_OF_CONTENTS -->

<h3 id="introduction">Introduction</h3>

[[00:06]](https://www.youtube.com/watch?v=470q6U-TEMI&t=6s) **Bob Summerwill:** So hello, I am Bob Summerwill and this is Early Days of Ethereum with my good friend Viktor Trón. So hi Viktor, how are you?

[[00:17]](https://www.youtube.com/watch?v=470q6U-TEMI&t=17s) **Viktor Trón:** Very, very well, thank you. Hello [Bob](/people/bob-summerwill/). Thank you for inviting me to the show. It's wonderful to reminisce.

[[00:25]](https://www.youtube.com/watch?v=470q6U-TEMI&t=25s) **Bob Summerwill:** Well, great to have you here. So yeah, we bumped into each other in Buenos Aires for [Devconnect](https://devconnect.org/) and had hoped to record there but for one reason or another that never happened. So good to connect with you online instead. So talking about early days of Ethereum, you were very early in Ethereum. So I mean what were you doing in your life prior to that that led you to the project?

<h3 id="pre-ethereum-bbc-and-bitcoin">Pre-Ethereum: BBC News Labs and Bitcoin</h3>

[[01:01]](https://www.youtube.com/watch?v=470q6U-TEMI&t=61s) **Viktor Trón:** Work wise? I was not exactly, I wouldn't say I was exactly very close to the crypto scene to be honest. I was working on a project with [BBC News Labs](https://www.bbc.co.uk/rdnewslabs), [The Juicer](https://www.bbc.co.uk/rdnewslabs/projects/juicer) project. It was trying to kind of ingest a lot of news sources like from old photo archives, video archives and everything and kind of use it, like basically work through the speech recognition and everything and categorize it and made it searchable in a very nice way. I mean of course it's one of these kind of [BBC](https://www.bbc.co.uk) sponsored projects no one really needed and it was never really used, but it was a nice project to work on. And anyway, so I kind of left, left the job.

[[01:55]](https://www.youtube.com/watch?v=470q6U-TEMI&t=115s) **Bob Summerwill:** At that time you were in London, you were living in London?

[[01:59]](https://www.youtube.com/watch?v=470q6U-TEMI&t=119s) **Viktor Trón:** Yeah, I was in London. I was living in London and I left the job because I found Ethereum. I was very excited right away. So when, I guess it was when [Gavin](/people/gavin-wood/) visited this kind of new web meetup of some sort, I think it was a new web meetup and then presented Ethereum, I was absolutely taken aback and I found it was amazing and game changer.

*(Bob - It was actually a [Coinscrum "Alternative Stage"](https://web.archive.org/web/20140405100113/http://www.iamsatoshi.com/coinscrum-alternative-stage-london) meetup on Monday 3rd February 2014.  Viktor spoke to [Gav](/people/gavin-wood/) at the event and emailed him that same night.  This was only 10 days after [Vitalik](/people/vitalik-buterin/)'s Miami presentation)*

{% include video-embed.html
  name="Gavin Wood - Ethereum - Live - Coinscrum - Alternative Stage - London"
%}

And I mean what led me to it to be honest was I was already quite a bit into Bitcoin which is kind of interesting because Bitcoin came into my life through a friend who I knew from an anarchist club or like Facebook group basically. So it's kind of, he introduced me to it on ideological grounds but of course I was very interested in tech as well. But it took me quite a while to understand what is blockchain, how all these things come together.

But by that time I was kind of solid in understanding of the blockchain and my understanding was solid enough so that I could, I was questioning [Gavin](/people/gavin-wood/) and [Vitalik](/people/vitalik-buterin/) and that it's absolutely not going to work obviously because of this sharding problem. And you know, bit by bit when I understood that they all had answers to every question that I can ever think of, then that's when I got to admit that they are probably the geniuses I really want to look up to and have in my environment to learn from. It was a very, very, very great start.

And so when [Gavin](/people/gavin-wood/) presented the Ethereum I was, next day I was already hacking on the C++ code base actually and my first PR in. We kind of met in a cafe in [Dalston](https://en.wikipedia.org/wiki/Dalston) I think. And I remember it was quite impressive that I learned that [Gavin](/people/gavin-wood/) used Mac but actually was running it on Linux on it. That was very impressive.

<h3 id="anarchism-and-austrian-economics">Anarchism and Austrian economics</h3>

[[04:29]](https://www.youtube.com/watch?v=470q6U-TEMI&t=269s) **Bob Summerwill:** And so you know, you mentioned your anarchist group there. So had Bitcoin earlier been interesting to you from that kind of monetary, you know, anarchist, libertarian?

[[04:51]](https://www.youtube.com/watch?v=470q6U-TEMI&t=291s) **Viktor Trón:** I mean when Bitcoin came, this was the time when I even kind of learned what money was really. I mean before I didn't even grasp this notion. And it was very important times in my life. It was really a game changer to kind of have a framework in which I can totally identify myself with. Yeah, I don't know if it's the right word, but freedom seeking individual and I really like this kind of Austrian view of economy and have understood what, how money was used and what inflation was, never really understood before. That was okay, I came late to the game, let's say that. But yeah, and then it was all very, it was history after.

[[05:51]](https://www.youtube.com/watch?v=470q6U-TEMI&t=351s) **Bob Summerwill:** And the new web meeting that you mentioned, was that like a recurring meetup that you were going to or were you regularly going to kind of web meetups?

[[06:04]](https://www.youtube.com/watch?v=470q6U-TEMI&t=364s) **Viktor Trón:** Yes, but this one particularly I sought out because I saw [Vitalik](/people/vitalik-buterin/)'s presentation I think in Miami and so that really got me interested. So I knew what I was in for when I showed up on that meeting in [Hoxton Square](https://en.wikipedia.org/wiki/Hoxton_Square). I think it was that meeting.

[[06:25]](https://www.youtube.com/watch?v=470q6U-TEMI&t=385s) **Bob Summerwill:** Sorry, you said [Vitalik](/people/vitalik-buterin/)'s presentation, was that the one that he'd given in Miami?

[[06:31]](https://www.youtube.com/watch?v=470q6U-TEMI&t=391s) **Viktor Trón:** Yes, exactly. And there was a, so kind of, I knew already what I expect from it, but of course I never really understood and [Gavin](/people/gavin-wood/) helped me quite a bit to understand it. So it was really great.

[[06:47]](https://www.youtube.com/watch?v=470q6U-TEMI&t=407s) **Bob Summerwill:** Had you, were you watching a variety of like Bitcoin conference talks? Was that a sort of a regular thing that you were doing at that point? Watching?

[[06:57]](https://www.youtube.com/watch?v=470q6U-TEMI&t=417s) **Viktor Trón:** Yeah, watching YouTube? Yes, and I was very, very interested and very much into these things. I mean, you know, I was hoping that you know, changes related to this kind of technologies would come a lot earlier. Was already kind of part of the hype a bit or contributed to it myself in a way.

[[07:21]](https://www.youtube.com/watch?v=470q6U-TEMI&t=441s) **Bob Summerwill:** Yeah, had you been sort of following along with things like [Mastercoin](https://www.omnilayer.org/) and [Colored Coins](https://en.bitcoin.it/wiki/Colored_Coins) and other sort of Bitcoin 2.0 projects?

[[07:34]](https://www.youtube.com/watch?v=470q6U-TEMI&t=454s) **Viktor Trón:** Yes, actually I did. Yeah. It was kind of, I think it was [BitShares](https://bitshares.org/) at the point.

[[07:41]](https://www.youtube.com/watch?v=470q6U-TEMI&t=461s) **Bob Summerwill:** I'm sorry?

[[07:41]](https://www.youtube.com/watch?v=470q6U-TEMI&t=461s) **Viktor Trón:** And there was [BitShares](https://bitshares.org/), I think.

[[07:43]](https://www.youtube.com/watch?v=470q6U-TEMI&t=463s) **Bob Summerwill:** Oh yeah, yeah, yeah.

[[07:45]](https://www.youtube.com/watch?v=470q6U-TEMI&t=465s) **Viktor Trón:** And there was this kind of, and then Open Transactions which was very close to kind of [Gavin](/people/gavin-wood/)'s heart, I think. Worked together and yeah, I don't know what came out of that afterwards, but interesting. And then so after I left the BBC and ready that winter which I spent in Thailand, half in retreat and then in my spare time I was working on the Yellow Paper and worked my way through the really hard notation that [Gavin](/people/gavin-wood/) had put on paper.

[[08:25]](https://www.youtube.com/watch?v=470q6U-TEMI&t=505s) **Bob Summerwill:** Yes. A lot of people struggled with that sort of math heavy notation. And so you, so you went to [Gav](/people/gavin-wood/)'s presentation which was, would have been very early February. So I mean that was only like a week or so after [Vitalik](/people/vitalik-buterin/)'s presentation in Miami. It would have been very, very close.

[[08:52]](https://www.youtube.com/watch?v=470q6U-TEMI&t=532s) **Viktor Trón:** Correct.

[[08:54]](https://www.youtube.com/watch?v=470q6U-TEMI&t=534s) **Bob Summerwill:** So you spoke to [Gav](/people/gavin-wood/) there and then you exchanged emails, did you?

[[08:59]](https://www.youtube.com/watch?v=470q6U-TEMI&t=539s) **Viktor Trón:** Yes, basically we exchanged emails. He put me on [Skype](https://www.skype.com/) group. There was a [Skype](https://www.skype.com/) group at the time, I think it was 20 odd people on it. Really not a big crowd and yeah, that's how it all started. So very nice in the beginning too. This kind of grandiose ideas and chat and be part of it. I'm super proud and very happy that I managed to be at the forefront of it. Many, or anyone, it's kind of a lucky move to be honest.

<h3 id="early-ethereum-meetups">Early Ethereum meetups and joining the team</h3>

[[09:37]](https://www.youtube.com/watch?v=470q6U-TEMI&t=577s) **Bob Summerwill:** So was it a fair bit later in that year that you started working with [Dani](/people/daniel-nagy) on Swarm? Were you doing?

[[09:49]](https://www.youtube.com/watch?v=470q6U-TEMI&t=589s) **Viktor Trón:** Yeah. Then it came a little bit later. So yes, first of all, first of all in the spring started working on the Yellow Paper and then a bit on the, yeah, as I said, bit on the C++. Not a lot. And then I think it was in March or sometime that I showed up on the first Ethereum meetup. Maybe not the first. I think you told me it was not the first but the second one in London.

[[10:14]](https://www.youtube.com/watch?v=470q6U-TEMI&t=614s) **Bob Summerwill:** This is?

[[10:15]](https://www.youtube.com/watch?v=470q6U-TEMI&t=615s) **Viktor Trón:** Yes, yes, yes, yes.

[[10:16]](https://www.youtube.com/watch?v=470q6U-TEMI&t=616s) **Bob Summerwill:** So this was organized by [Stephan Tual](/people/stephan-tual/).

[[10:21]](https://www.youtube.com/watch?v=470q6U-TEMI&t=621s) **Viktor Trón:** There was a [Mihai](/people/mihai-alisie/) there who later kind of I think. And then.

[[10:31]](https://www.youtube.com/watch?v=470q6U-TEMI&t=631s) **Bob Summerwill:** Sorry, [Mihai Alisie](/people/mihai-alisie/). Was that right?

[[10:34]](https://www.youtube.com/watch?v=470q6U-TEMI&t=634s) **Viktor Trón:** Yes, yes. And I think who I talked to quite a lot was [Jack du Rose](/people/jack-du-rose/), who then.

[[10:40]](https://www.youtube.com/watch?v=470q6U-TEMI&t=640s) **Bob Summerwill:** Yeah, of Colony.

[[10:42]](https://www.youtube.com/watch?v=470q6U-TEMI&t=642s) **Viktor Trón:** Colony fame. Exactly. So and then, and then there is when I met [Jeff](/people/jeff-wilcke/) first. So [Jeff](/people/jeff-wilcke/) became my boss later.

[[10:51]](https://www.youtube.com/watch?v=470q6U-TEMI&t=651s) **Bob Summerwill:** He came to London for that meetup.

[[10:53]](https://www.youtube.com/watch?v=470q6U-TEMI&t=653s) **Viktor Trón:** Yes, yes, he did.

[[10:54]](https://www.youtube.com/watch?v=470q6U-TEMI&t=654s) **Bob Summerwill:** Right.

[[10:55]](https://www.youtube.com/watch?v=470q6U-TEMI&t=655s) **Viktor Trón:** And that's why I kind of saw that it's quite an international crowd and from all over the world kind of doing this thing. So I kind of started to take it very seriously. As I said, I kind of left my job and joined the ranks and I kind of started contributing to the Go code. And so after that I kind of, I was really into the Golang. That's where I contributed most and became part of the go-ethereum team after [Jeff](/people/jeff-wilcke/) offered me the job around, it was September, October that year when the foundation was already actively paying out some salaries or like recruiting people on the teams.

<h3 id="go-ethereum-development">Go-Ethereum development</h3>

[[11:45]](https://www.youtube.com/watch?v=470q6U-TEMI&t=705s) **Bob Summerwill:** Yeah, so I mean I was looking at the timing on that. So the Ethereum Foundation was founded in July of 2014 and then the crowdsale was going through July, August, September. And then, yeah, the hiring, that first wave of we've actually got some money to hire people was sort of, you know, September, October.

[[12:15]](https://www.youtube.com/watch?v=470q6U-TEMI&t=735s) **Viktor Trón:** In October again, I was negotiating with [Aeron Buchanan](/people/aeron-buchanan/), I remember right, my contact then. And then I don't know when the Amsterdam office in Wustraat was actually founded, but I already visited [Jeff](/people/jeff-wilcke/), I think later in that year there.

So and then, so when I first kind of joined, I was talking to my, semi with my friends in Hungary. Some of them related to this Facebook group and among them like [Dani](/people/daniel-nagy/), [Felföldi](/people/zsolt-felfoldi/). And there was another person who's like very close to Swarm later but never actually entered the scene officially. Let's let him be unnamed.

And so there was some thinking that maybe the four of us kind of can form a group and we can just join as a kind of sub dev team or something. They all fell, I mean, it never happened. So we were hired, at times just hired individually. And then, and then, so yes, around later that year, there was the DEVCON0. Is that correct?

<h3 id="early-2014-skype-and-collaboration">Early 2014: Skype groups and collaboration</h3>

[[13:25]](https://www.youtube.com/watch?v=470q6U-TEMI&t=805s) **Bob Summerwill:** Yeah, yeah. I mean if we just pop back a little bit. So could you, so through 2014, you know, prior to the sale and so on, I mean, so how were things working early in 2014? I mean, you mentioned a [Skype](https://www.skype.com/) group. Were most people kind of working through [Skype](https://www.skype.com/)?

[[13:53]](https://www.youtube.com/watch?v=470q6U-TEMI&t=833s) **Viktor Trón:** Yes, yes, yes, it was really mainly, mainly everything was done by basically by [Gavin](/people/gavin-wood/), [Jeff](/people/jeff-wilcke/) and [Vitalik](/people/vitalik-buterin/). The rest of us were just sherpas on the way at that time and then kind of just you know, just helping out. I mean I'm talking about the technical stuff. I'm really not sure about the admin and the foundation stuff so hope no offense is taken from anyone but yeah for the tech stuff it's, yeah.

So I think it was actually in July that [Jeff](/people/jeff-wilcke/) shared a kind of go-ethereum to-do with me and introduced me into the intricacies of the then aspiring devp2p protocol. And so I think I was, that was my first project. I think that was really kind of in the code base that was then later scraped and completely rewritten by [Felix](/people/felix-lange/) and the other guys. But that was my first attempt. I think that was the networking layer at the time.

Was kind of trying to say really crazy ideas to [Jeff](/people/jeff-wilcke/) about some developer tooling, some like you know, contract verification kind of like staging and like fake blockchain environment and stuff. And he was adamant that there are other things to do and he was focusing on like maybe the end user applications like the, at the time was the [eth-go](/articles/geth/). I think it was under [eth-go](/articles/geth/) but actually later the Mist browser basically, right. It was a browser and so he was kind of trying to talk me out of it and said that the other group, the C++ team is assigned to that anyway so let me not tread unwanted paths. And so he kind of brought me back to.

[[16:17]](https://www.youtube.com/watch?v=470q6U-TEMI&t=977s) **Bob Summerwill:** Yeah, well I mean the other, the other piece there is that AlethZero. You had AlethZero I guess was an earlier kind of incarnation of that.

[[16:28]](https://www.youtube.com/watch?v=470q6U-TEMI&t=988s) **Viktor Trón:** Yeah, that's good. And then, but there was some not so glorious tasks as well that I refactored logging and things like this. I remember in the early days but there was also a time when I was learning [Golang](https://go.dev/) because there was also not a super popular language, I think a lot of learning to do.

<h3 id="yellow-paper-and-client-development">Yellow Paper and multi-client development</h3>

[[16:55]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1015s) **Bob Summerwill:** I mean it was relatively new at that point, Go. So you'd mentioned the Yellow Paper. So in those very early months of 2014 [Gav](/people/gavin-wood/) in particular seemed to be like incredibly productive in terms of what he was getting through with the C++ client and that Yellow Paper. I mean was it usually the code that was leading and then the Yellow Paper was being kind of modeled after that?

[[17:31]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1051s) **Viktor Trón:** It's hard for me to say if they really were that kind of hand in hand developing. I think I can't really say. Maybe it's better to ask him to be honest. But yes the productivity and then, and actually the speed that he was churning out code was absolutely stunning. So it's like already a few months after some of these clients already worked. But yeah, to be honest, I mean [Jeff](/people/jeff-wilcke/) was the same and [Jeff](/people/jeff-wilcke/) was also incredible in his productivity. These people were really, really nice examples in front of us. So it was really happy to learn from them in a way.

[[18:15]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1095s) **Bob Summerwill:** And I mean I think that that triangulation was so important right of having multiple clients and the spec and you had the Python client though not really to that production status but you know those three groups all, you know.

[[18:32]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1112s) **Viktor Trón:** It's a kind of inglorious statement that Ethereum always was very proud of that like this multi-client development was leading to very, very solid specs. It's actually true. But of course that was not the reason. But the reason was that all these brilliant individuals just followed their own favorite language and just wanted their own clients to build. But you know, ultimately what came out of it is amazing. Like the specification.

I just remember just a few times that the specification had to be changed. There's like kind of one case when there's like a modular operation that was not exactly, I think it was minus number exactly. Not sure exactly. There was another one, I think it was around Easter 2015, whereas before in the year leading to the launch. And I think that was when it's kind of a problem that the uncle, two uncles had the same timestamp I think and that led to a fork. Remember I wrote up a kind of blog post about this and never, never published it. So interesting.

[[19:57]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1197s) **Bob Summerwill:** Talking to [Jakob Czepluch](/people/jacob-czepluch/). So he was an intern at the Berlin office in 2015 but he was telling me about a hard fork that had happened on the mainnet around two weeks or so after launching, which I was completely unaware of. But then looking back, you know, there was a sort of a security announcement by [Jutta](/people/jutta-steiner/), was a patching of the Geth client. And while I've been doing stuff myself in terms of like running old clients, I saw that as well. If you run Geth 1.0.0 or Geth 1.0.1, it gets stuck. It can't go through Frontier blocks. So it was actually a hard fork.

[[20:56]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1256s) **Viktor Trón:** Do you remember what it was related to? It was not that, it's interesting that you remember.

[[21:02]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1262s) **Bob Summerwill:** I mean it was some kind of gas counting or something, you know, just some kind of little bug. But that was funny. That was a thing that I, you know, I was not aware about because I, you know, so it was a hard fork but it was never given a name because it was just an accident.

[[21:25]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1285s) **Viktor Trón:** Yes, sure.

<h3 id="devcon0">DEVCON0 (Berlin 2014)</h3>

[[21:26]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1286s) **Bob Summerwill:** And you know, you wonder how many more of these little things there were that happened that sort of forgotten in the mists of time. Yes, but yeah, so I mean through that early 2014 year you were working initially on the C++ and then later on the Go. I mean how many people were working on Go in 2014?

[[22:03]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1323s) **Viktor Trón:** I mean it was really just a few people around. [Jeff](/people/jeff-wilcke/) I think was mainly designer and designer [Alex Van de Sande](/people/alex-van-de-sande/) from Brazil and. Yeah, and who after him.

[[22:23]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1343s) **Bob Summerwill:** But you were the second team member then, is that right?

[[22:27]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1347s) **Viktor Trón:** Correct. Just about. Or maybe actually the first officially, I'm not sure. The first paid one, I'm not sure but I mean we came roughly at the same time with [Alex](/people/alex-leverington/) and with, I think with [Felix Lange](/people/felix-lange/), definitely.

[[22:40]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1360s) **Bob Summerwill:** Right, yeah. In terms of employment. Yeah but I meant when you were working earlier, you know, when you started there, I mean, were there other people working on that go-ethereum ahead of your joining in with him?

[[22:56]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1376s) **Viktor Trón:** Not really. Not really. So he was, that was pretty much among ones that contributed the code as far as I remember. And I mean there was quite a vibrant ecosystem of, yeah, like ecosystem, community of people there. Like you know, the guy who later became Slock.it, there was like [Nick Savers](/people/nick-savers/) around like super tall dude and we were going together to the Bitcoin conference, I think it was in April.

[[23:30]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1410s) **Bob Summerwill:** Oh, you went to Toronto?

[[23:32]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1412s) **Viktor Trón:** No, no, it was Amsterdam.

[[23:34]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1414s) **Bob Summerwill:** Oh, okay.

[[23:36]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1416s) **Viktor Trón:** And that's when I had the chance to really talk to [Vitalik](/people/vitalik-buterin/) quite a bit. It was very nice and I got a big surprise as well. So nice, nice time.

[[23:55]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1435s) **Bob Summerwill:** [Nick Savers](/people/nick-savers/) is a name that I've seen a lot of times and I've never really met or spoken to him. I guess he was around a lot early and then maybe kind of disappeared out and maybe he's a little bit of an anon guy that doesn't, you know, show face.

[[24:16]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1456s) **Viktor Trón:** Yeah, I mean he never joined. He was never, I don't think he was ever like officially part of it, but he was always like, yeah, around and helping us. I think he was employed by some bank.

[[24:33]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1473s) **Bob Summerwill:** But I saw he and some others did the first continuous integration, you know, they were doing the build system and then he did work on the Java client as well.

[[24:47]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1487s) **Viktor Trón:** That is true. And Java client was mainly led by what was his name? [Roman Mandeleil](/people/roman-mandeleil/), who kind of mysteriously disappeared after. I'm not sure what happened to him.

[[25:06]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1506s) **Bob Summerwill:** I did see him on Facebook for quite a time. He seems to have either disappeared or something since.

[[25:13]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1513s) **Viktor Trón:** But I remember at the London DEVCON1 it was definitely around there with the whole EthereumJ team. Yeah, I don't know what their name was.

[[25:24]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1524s) **Bob Summerwill:** Ether.Camp.

[[25:27]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1527s) **Viktor Trón:** That's correct. Thanks for reminding us. Well, nostalgia, all these phrases.

[[25:35]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1535s) **Bob Summerwill:** So yeah, it was early, sort of early 2017 I think that he kind of disappeared. They did Hack.Gold and you know this, some kind of like hackathon that there was some controversy about. It looked like the team kind of like bought votes or something but were paid out anyway. And then yeah, he sort of disappeared with some people thinking he'd exit scammed but I'm not convinced he did because if he did it was the worst like exit scam ever because it was so early, you know, like wasn't like anyone had got any kind of big amount of money or anything at that point. Sort of a very poor scam.

[[26:24]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1584s) **Viktor Trón:** He's definitely an amiable and also committed guy.

[[26:32]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1592s) **Bob Summerwill:** So maybe, so you'd mentioned about your sort of collaborative sub team. So that's Ethersphere.

[[26:45]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1605s) **Viktor Trón:** Well, it's kind of, it was wishful thinking that it might be Ethersphere but on the other hand I kind of, I did register that as an organization on GitHub at least and even I think it was pretty much one of the first Ethereum related brands in a way. I mean if I can call it a brand. I mean I think at the time it was only [Eris Industries](https://erisindustries.com/).

[[27:10]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1630s) **Bob Summerwill:** Right. Yeah. Eris.

[[27:13]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1633s) **Viktor Trón:** Who later became [Monax](https://monax.io/), this marmot thingy and they did some nice work by the way. But yeah, so Ethersphere was the home of maybe most of our work and then we kind of committing through that to the Ethereum code base.

[[27:35]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1655s) **Bob Summerwill:** So that was yourself? That was yourself, Daniel Nagy.

[[27:41]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1661s) **Viktor Trón:** Yes. And later [Zsolt Felföldi](/people/zsolt-felfoldi/), like already hired to work on the light client. I think it was in 2015 already. And yeah, because he was not on DEVCON0 but yeah, DEVCON0 was already kind of. I mean it is very, so [Dani](/people/daniel-nagy) and me joining by that time there was quite a bit of, yeah, quite a bit of past around with him I think.

<h3 id="web3-and-swarm-origins">Web3 vision and Swarm origins</h3>

[[28:11]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1691s) **Bob Summerwill:** So maybe could you say a bit about Swarm? Because my understanding is that some of the ideas went an awful long way back.

[[28:23]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1703s) **Viktor Trón:** Yeah. So I don't know if you remember there was in May, May 2014 there was a seminal, you know, triad of talks in I think it was in Whitechapel somewhere or somewhere in the East End. And in that talk that was the first appearance of Web3 in the Ethereum context. It was like always usually explained.

These founders really realized how decentralization can basically also be extended and logical to support the entire, be the back end of the entire web. And basically if you extend it to data, app data and then hosting and so basically put a data layer on top and then maybe the messaging, then you can conceive of it as the world computer with this holy trinity of, you can see them like the Ethereum blockchain as the world computer's CPU and disk would be Swarm and then Whisper would be the kind of messaging layer.

[[29:43]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1783s) **Bob Summerwill:** So you were mentioning Whitechapel. So that was again some meetups was it? That was happening there.

[[29:52]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1792s) **Viktor Trón:** And I think maybe Ethereum even had some sort of co-working or like some sort of hired office there, maybe a room or two because we often found [Vitalik](/people/vitalik-buterin/) there. So not entirely sure how this looks like. I don't want to say anything but yeah.

[[30:13]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1813s) **Bob Summerwill:** Would that have been when that kind of famous diagram would first have surfaced? You know the one with like the circle and the apps coming in at the side.

[[30:30]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1830s) **Viktor Trón:** Yes, that was just about that time.

[[30:32]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1832s) **Bob Summerwill:** Including QML I saw. So it was not just HTML, it was QML and Qt as other anticipated tech platforms.

[[30:48]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1848s) **Viktor Trón:** Yes, that's when Web3 was born. And it's kind of the crazy protocol names like after these, which is also the lettering in Icelandic.

[[31:07]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1867s) **Bob Summerwill:** Oh yeah, the thorn.

[[31:09]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1869s) **Viktor Trón:** Yes. And so that's when BZZ, SSH was invented. Also [Vitalik](/people/vitalik-buterin/)'s gimmicks.

[[31:20]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1880s) **Bob Summerwill:** Those Ethereum, well, the sub protocols. Right, sub protocols running on a common basis. But Ethereum was just one of many related protocols.

[[31:35]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1895s) **Viktor Trón:** And that's why I was very dedicated to this whole Ethereum at the time. I really kind of understood what it means to have the entire kind of Turing complete computation being secured on its own with the blockchain. And they kind of really envisioned quite a bit, quite a change in how the Internet works if you have Swarm and Whisper and all these things. So I quite like the idea.

And then later I kind of learned that, you know, not only did we socialize on [BitTorrent](https://www.bittorrent.com/) at the time and kind of wanted to improve, but actually some of us like [Dani](/people/daniel-nagy) operating a DC++ node had some legal troubles maybe, maybe even also kind of talk about this with him at some point. So that's kind of brought us, brought him quite directly in the kind of realm of implementing Swarm. This idea of a decentralized storage and incentivization, etc. And name resolution one, let me see, you connected.

<h3 id="swarm-technical-architecture">Swarm technical architecture (DPA, Kademlia, SWAP)</h3>

[[32:48]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1968s) **Bob Summerwill:** And [Zsolt](/people/zsolt-felfoldi/) had mentioned to me that he thought that the idea for Swarm had gone back to at least 2011.

[[33:03]](https://www.youtube.com/watch?v=470q6U-TEMI&t=1983s) **Viktor Trón:** Yeah, so. Yeah, so there was this idea, of course, I don't know about that, but it was mainly, mainly [Dani](/people/daniel-nagy)'s idea that, I mean he saw the amazing qualities of [BitTorrent](https://www.bittorrent.com/), but he also saw some drawbacks. So many historically it's best to derive the whole idea of Swarm from that.

And because BitTorrent was difficult like starting a download, there's all this kind of delays and throttling rules. And of course didn't have the proper incentives to keep the data. And also of course had the problem with the individual bits of the file not being addressable right away. You had to use a tracker to resolve them. And of course there's also a problem with the, with how, you know, how much the data is parallelized. Because I mean, as you remember, you know, for example, in Germany there was legal prosecution for people who used [BitTorrent](https://www.bittorrent.com/).

[[34:29]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2069s) **Bob Summerwill:** Oh, I didn't know that.

[[34:31]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2071s) **Viktor Trón:** And I mean, not at the time, but I mean much later, but yeah. So I think what [Dani](/people/daniel-nagy/) was trying to do is like came up with an idea of how to chunk things in a way, every chunk is kind of content addressable and also kind of that some of the placement of chunks is also part of the DHT.

So normally a DHT like a hash table is basically the idea that you put node IDs and then kind of chunk or IDs of content basically in the same space and somehow you get information, what's the location, like who to download it from, about these chunks from neighborhoods that have the same address or like similar address. So there's usually a metric on this. If you use the logarithmic distance like that, then you can work with Kademlia and its Kademlia networks. You kind of iterate through the peers like you keep a few peers connected and you go, so then you go closer, one to this guy, to this guy and the hash of Star Wars and you want to watch Star Wars and then you go to them and ultimately you see what, where the chunks are you can download from.

Obviously this is not very private. And then, and also kind of it's not very, as you know from the legal problems that it's also not very deniable. And if you have, if you have enforced certain chunks should reside, so you kind of enforce a kind of orange layer on top of it, then you can probably deny that you know anything about it, system that enforces that parts of the Star Wars story.

Basically it was [Dani](/people/daniel-nagy/)'s genius idea that I think we call it the DPA. DPHT, so distributed preimage archive. So basically an archive of preimages. There's a bit of data that the image of is the hash. Yet the preimage is what's before the hashing, the actual piece of the data. And so this idea of actually storing not the location but the actual data at the place in the DHT has direct DHT interpretation, was the DPA. And that was kind of a very important, very important notion that came and then became very important in Swarm.

And then yeah, and then a lot of other things came. So I remember that we were in 2004, fishing, 4th diameter and that winter day we were sitting in the Arena Plaza in Budapest, the three of us with [Fefe](/people/zsolt-felfoldi) talking about this and how to start implementing because there was a pressure to obviously implement the whole thing with using UDP as the networking stack because it was considered that like TCP is too heavy and too slow. But then obviously that at the time you already had the devp2p, it's very very easy to implement it and then try this protocol.

So I suggested that maybe instead of using UDP just use TCP but use it forwarding, keep alive some connections, phase one connections, phase one permanent connections with the peers and just use the Kademlia through the live connections that each forwarding, like each locally decided to forward to the closer node and ultimately move backward. Like you forward the request and you backward the chunk after all. And so it was, it seemed like very easy to implement. And we did exactly that.

Turned out to be one of the best and most interesting choices of Swarm. It turns out that that's what allows the kind of peer to peer accounting to be working. And also this kind of gives the privacy features that Swarm has basically, offuscates the originator of the request. If you think about it, no one knows that when someone downstream is asking you something, they want to watch the Star Wars or you know, or someone upstream wants to watch. And also kind of it directly solved the opportunistic caching problem, how to distribute automatically popular content. So the retrieval paths or the forwarding paths can just remember some of the chunks.

So it's very, very interesting how these, how these ideas like started and then basically kind of coalesced in 2016. Swarm I think, I think the first, the very first release surfaced in Geth 1.5. Second, so it was December 2016. Yes. The public pilot was released and I remember there was already kind of how we viewed video. We call it streaming, but it's actually not real time streaming. It's like just watch the video file. There was a nice tweet about that too.

<h3 id="ethereum-foundation-austerity">Ethereum Foundation austerity (2015)</h3>

[[40:53]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2453s) **Bob Summerwill:** And just to take a step back, so I mean my understanding of a primary thought that there was with Swarm was that because you could have this, you know, the holy trinity, right of sort of like decentralized compute database, the blockchain, Swarm for the decentralized file system and storage, and then Whisper for that decentralized messaging, that you could have this really nice kind of synergy of say a primary issue which is still really not solved of saying, well, how do you host the web front end to make a whole application?

Yes, you need your smart contracts and your transactions and things, but you need an application wrapping around that. So really the thought that if you had a decentralized storage mechanism that could store like the HTML and the JavaScript and so on, that you want like an incentive system so that that stuff is available if people want it. You know that you don't have a tragedy of the commons where only most popular content is available.

But also because if you are building on Ethereum, you've got the cryptocurrency to do the incentives, you've got the smart contract system that allows you to implement those incentive systems and all of these things can fit together into a holistic unstoppable whole of saying, well here you go, you've got your applications which cannot be stopped, but that's the full stack. And it seems even now that there's an awful lot of stuff which is dependent on centralized hosted services and it's very central.

[[42:54]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2574s) **Viktor Trón:** Yeah, yeah, I'm pretty sad about this, to be honest. I mean there's a lot of these things like I don't know if you remember this big, I don't know, was it [Bybit](https://www.bybit.com/)? That was the biggest crypto heist ever because of the, because of the Safe hack. If that had been using Swarm, then it was much more difficult to change all these kind of transactions under the hood because they had to, what they had to do is like they hacked the person, had the dev's account and then uploaded something through S3 which then the Safe wallet used.

And of course these are much more difficult to do if these things are, the content addresses are of course registered. This is how these things work. Like, you know, you start from the blockchain which that single source of truth like ENS or services as a name, you resolve it to content hash and then the content hash is retrieved from these decentralized stores.

[[44:09]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2649s) **Bob Summerwill:** And I mean again, that 2016 kind of era was when ENS was coming to life as well. So yeah, I mean that's another thing actually.

[[44:19]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2659s) **Viktor Trón:** [Nick Johnson](/people/nick-johnson/) was first part of the Swarm team, as part of the Swarm team. He developed the ENS and then later took off.

[[44:34]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2674s) **Bob Summerwill:** I didn't know he worked on Swarm. I knew he was part of the Geth team. But he did some Swarm as well, eh?

[[44:40]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2680s) **Viktor Trón:** Well, definitely, yeah, I recruited him to be honest.

[[44:44]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2684s) **Bob Summerwill:** Fantastic. Did you know him in London?

[[44:48]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2688s) **Viktor Trón:** No, no, no. I mean he was just part of the community. Valuable contributions to that after.

[[45:03]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2703s) **Bob Summerwill:** Yeah, let me just check the timeline. But I think he got hired like really pretty soon after me. I started in February 2016 and I think he was, he was maybe June, same kind of time as Hudson. Yeah, let's see. So yeah, I started in February, [Greg Colvin](/people/greg-colvin/) in March, [Everton Fraga](/people/everton-fraga/) in April.

[[45:35]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2735s) **Viktor Trón:** Yeah.

[[45:37]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2737s) **Bob Summerwill:** And yeah, June. Both [Hudson](/people/hudson-jameson/) and [Jamie Pitts](/people/jamie-pitts/) and [Nick Johnson](/people/nick-johnson/) all June 2016. What was I going to mention? So yeah, you talked about DEVCON0. So that was, that was November 2014 in Berlin. I imagine was that the first time that you will have met quite a number of these people?

[[46:13]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2773s) **Viktor Trón:** Especially special memory is my meeting with [Alex Leverington](/people/alex-leverington/). Oh yes, the peer to peer fame. Yeah, very interesting. We had lots of discussions. Yeah, very adamant on, very stubborn with his own way of thinking about the protocol. I have to say he was much more knowledgeable than I was at the time. So I was just trying to learn a lot from him. But at the same time was, okay, we're starting to be a bit more pragmatic and trying to, you know, savvy and then like have to simplify. I remember I first basically brought together the kind of specs for the devp2p protocol then and then, you know, that was not really followed just right.

[[47:09]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2829s) **Bob Summerwill:** Well, I mean the other piece there is that [libp2p](https://libp2p.io/) as part of the [Protocol Labs](https://protocol.ai/), [IPFS](https://ipfs.tech/) that already existed at that time. So that was kind of interesting, right? This whole devp2p, libp2p.

[[47:26]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2846s) **Viktor Trón:** I mean, you know how Ethereum kind of suffered like this kind of, what's the word for this?

[[47:34]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2854s) **Bob Summerwill:** Not invented here syndrome.

[[47:38]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2858s) **Viktor Trón:** Thank you. And like, you know, the [RLP](https://ethereum.org/en/developers/docs/data-structures-and-encoding/rlp/), [RLPx](https://github.com/ethereum/devp2p/blob/master/rlpx.md) stuff.

[[47:42]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2862s) **Bob Summerwill:** Right.

[[47:43]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2863s) **Viktor Trón:** Then we have their own serialization protocol, like the devp2p as well. I have to say that devp2p at some point was kind of a leaner protocol.

[[47:59]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2879s) **Bob Summerwill:** Right, excellent.

[[48:01]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2881s) **Viktor Trón:** For the purposes of, for including into Swarm, it's a lot less bloated. But of course it had a lot of problems in terms of maintenance. I mean it was just not appropriate to start and build everything from scratch. In a way it's like in retrospect it was probably not the best idea to be honest.

[[48:24]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2904s) **Bob Summerwill:** And I mean that's got, then that's got stuck in the execution clients forever. You know that the consensus clients now are using [libp2p](https://libp2p.io/) and aren't using [RLP](https://ethereum.org/en/developers/docs/data-structures-and-encoding/rlp/) anymore, but the execution client got stuck with devp2p forever.

And I mean I remember having discussions with various people on this in sort of 2016 of saying, well, could you have both protocols, you know, people looking at sort of could you do a bridge protocol so that some of the stuff could run over [libp2p](https://libp2p.io/) and you could have like relay nodes really with the thought that with [libp2p](https://libp2p.io/) you could run in a browser. Right, you know, devp2p you could never run in a browser.

And so like Kumar Arest was working with somebody from the Parity team, maybe Robert, around or maybe a little later, 2017, 2018 of trying to see, well, can we get a light client in browser, you know, talking to all of these things but never quite happened. Some of these decisions just last forever.

[[49:45]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2985s) **Viktor Trón:** It was only after we, after Swarm left the foundation is when we kind of switched to the [libp2p](https://libp2p.io/) as well, started the Bee client development.

[[49:55]](https://www.youtube.com/watch?v=470q6U-TEMI&t=2995s) **Bob Summerwill:** Right, right. I wasn't aware that that transition had happened. So I mean DEVCON0. So that was, you know, that was late 2014. But you know, things continued obviously through 2015 all the way up.

[[50:19]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3019s) **Viktor Trón:** Swarm was just an idea which was kind of mainly specked out or kind of started by [Dani](/people/daniel-nagy) who had this kind of very interesting past with decentralized storage and he actually presented his vision at DEVCON0, yeah, everyone watch it. Very good early capturing of this idea.

[[50:49]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3049s) **Bob Summerwill:** And at that point he got hired in and that became a real thread of official development within the Ethereum stack.

[[51:02]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3062s) **Viktor Trón:** Absolutely correct. And then later, then as time went by gathered around him and continued on churning out some code around, who? Sorry, yeah, about [Dani](/people/daniel-nagy). And then kind of slowly, slowly kind of organically became a little bit of a sub team after that. And yeah, and so after that like [Fefe](/people/zsolt-felfoldi) never really contributed the first bit which he, which was even, I think he was even programming on before it still.

[[51:35]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3095s) **Bob Summerwill:** Came. As you said he was telling me that, you know, he was thinking that was what he would be doing when he was hired in but then almost immediately [Jeff](/people/jeff-wilcke/) told him yeah, no you're not, you're just doing, you're just working on Geth.

[[51:51]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3111s) **Viktor Trón:** Yes, yes. I mean you signed for to develop the incentivized light client protocol he worked on for many, many years and it's a bit sad that it never took off to be honest, but there's been a lot of things.

[[52:10]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3130s) **Bob Summerwill:** Yeah, well I mean it's tough. I mean that's my interest in, that is where my own journey started because when I kind of got interested in Ethereum the first thing I wanted to do was, I was really into mobile and wearables at that time so I wanted to see can I run an Ethereum node on my smartwatch? So I was doing ARM Linux cross builds of cpp-ethereum and my thought at that time was okay, you know, light client is still getting worked out but I'll get a full client working on all these devices and then when light client comes out they'll just work, right?

So I can run a full client on a testnet, make sure it all works. But it's just a matter of time. Of course we'll have light clients and of course everything will scale and of course you can run all things on any devices, right? We're thinking every phone is, you're just going to have an Ethereum node running, every router, media box.

[[53:19]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3199s) **Viktor Trón:** We're still suffering the kind of RPC and centralized access, right? How unstoppable is that?

[[53:26]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3206s) **Bob Summerwill:** Yeah, it will just get, you know, it will just come with every Linux distro, you know, it'll just be like a service that's just part of the Linux distro, you know, just get shipped. You've just got this background service that you know, that is just talking Ethereum you know and it'd be the same as like having a network stack or an audio stack or whatever. It's just like yeah, you're going to have a consensus stack and you know, it'll just like run in the background and just work, like cheap and easy. Yeah, no, that didn't quite happen.

[[53:58]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3238s) **Viktor Trón:** And then 10 years in, I mean it's kind of, maybe things are starting like I don't know if you know the Dappboot project for example.

[[54:07]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3247s) **Bob Summerwill:** No. What's that?

[[54:09]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3249s) **Viktor Trón:** How to boot from Swarm basically. Yeah.

[[54:15]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3255s) **Bob Summerwill:** Booting from Swarm.

[[54:17]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3257s) **Viktor Trón:** Yes. I mean they're just building the UEFI client. It can bring up any operating system.

[[54:33]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3273s) **Bob Summerwill:** Wow. Okay. That's interesting.

[[54:36]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3276s) **Viktor Trón:** Yes, interesting. I mean it's not worked out fully yet but the guys.

[[54:45]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3285s) **Bob Summerwill:** I mean there's a fair bit of like networking stuff that would have to happen before you could even start. Right. Like that's having to have some kind of bootstrapping little mini OS or something.

[[55:00]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3300s) **Viktor Trón:** It seems that even before that you can do it just. Yeah, I mean they already have that kind of pattern. Kind of a small Linux-like environment is created and they move from that. That's interesting. And they can do it just with the metadata.

[[55:21]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3321s) **Bob Summerwill:** So I mean through those early years prior to mainnet launch you'd mentioned work on the Yellow Paper. So I mean how was it being determined what, you know, feature complete, what good enough looks like, you know, did you have a good idea of what you'd have to have before launch could happen?

[[55:52]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3352s) **Viktor Trón:** I mean, well, I didn't have a clear idea really because it took me a while to understand full systems. I'm very honest with you. It's like I think it's only [Jeff](/people/jeff-wilcke/) who really, really understood that, what was needed to be built and he was building massive things on his own single-handedly. It's really, really crazy. I remember one of the not so glorious stories, I was assigned the task of building the block pool which was supposed to be like, you know the one that takes the blocks from the other clients, builds up the header chain and kind of validates it, etc. And I was working a lot on that and I remember that at a time he had enough and said okay, I'll just build it and basically in one or two days it was done. Interesting experience.

[[56:57]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3417s) **Bob Summerwill:** And [Christoph Jentzsch](/people/christoph-jentzsch/) was building the cross client tests as well. Did you do work with those tests yourselves?

[[57:09]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3429s) **Viktor Trón:** I mean no, I did myself but yeah I remember it was always, he was always running and he found a lot of things through that work.

<h3 id="devcon1">DEVCON1 (London 2015)</h3>

[[57:27]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3447s) **Bob Summerwill:** So in sort of July 2015 we had the arrival of [Ming Chan](/people/ming-chan/) and shortly afterwards pretty serious budget cuts because within that year or so the foundation had managed to pretty much burn through the vast majority of the money.

[[57:52]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3472s) **Viktor Trón:** Austerities I think was the official name of that. Yeah I remember at the time when [Vitalik](/people/vitalik-buterin/) basically said that it's not going to be Swarm. What's going to be is maybe some, maybe we just kind of use [IPFS](https://ipfs.tech/) and let's try to work on the incentive system that we can put on that.

[[58:13]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3493s) **Bob Summerwill:** Okay.

[[58:15]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3495s) **Viktor Trón:** And I mean I remember that maybe it's not a secret anymore but [Jeff](/people/jeff-wilcke/) kind of let us keep working on Swarm throughout this period, so we did end very soon after kind of those were basically ready, the incentivization scheme for the bandwidth incentives.

It's also very interesting because Swarm seems to be one of the only, one of the only systems like decentralized storage systems that has a proper bandwidth incentive, a proper accounting system, like SWAP for that accounting and it seems like there's, it's quite, I don't know, it's probably conjectured but it doesn't look like there's any other proper way to do this.

Because if you think about bandwidth, first of all it's a kind of instant gratification thing. You either forward for someone, like you either serve a request or not. So it's not like the shady territory affair like a future promise, like storage you have to then record, record your deal on the chain and like some proof of availability etc. But bandwidth is just much more, yeah seems like easier.

SWAP, peer to peer accounting, that you know, I forward for you, you forward for me and we serve for each other and if there is a big tilt then some sort of conversation should happen but naturally, maybe not even has to be, some settlement around just. And then we kind of like this idea that's also kind of, that is genius, that came up in this kind of checkbook idea. It's a very early version of vacuum sort of payment channel like micropayment solution. And yeah so that bandwidth incentive was a very powerful one and lived on.

And I remember that kind of seemed that the incentivization for storage was much more difficult. The way to arrive at there was the negative incentives to solve the problem of sort of pricing and the growth and who's responsible for whom what and if everything is recorded on chain how to the privacy of things. It's very, very difficult. So it came much, much, much later and kind of worked out. Look at that part as well. It was only after even the token, the Swarm token was released 2021. Yeah. Anyway, so yeah, going back to the roots, the austerities.

[[1:01:30]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3690s) **Bob Summerwill:** So you were continuing to work through late 2015 even though it had supposedly been defunded?

[[1:01:38]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3698s) **Viktor Trón:** Yeah, yeah, kind of. Yes. I mean we were trying to figure out this incentive of course. And in that sense we were of course not really off track in a way. But I was also kind of working at the time on the go-ethereum client on many aspects of it. And by 2017 the kind of Swarm client was kind of integrated and was released within go-ethereum. It was in 2018 when this kind of proof of concept release was part of Geth. And it's kind of when the Swarm client was starting, you start the standalone Swarm.

[[1:02:46]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3766s) **Bob Summerwill:** Starting 2018, you said.

[[1:02:48]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3768s) **Viktor Trón:** Yeah. Proof of concept three.

[[1:02:55]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3775s) **Bob Summerwill:** So all the way through until that point you were continuing to work as a sort of Geth team member.

[[1:03:03]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3783s) **Viktor Trón:** Yes. I mean officially we were part of the, yes, the team. It's part of the [EF](/articles/stiftung-ethereum/) entity and kind of yeah, slowly kind of extending the team as the protocol got some movement. So yeah, it was interesting times because I remember in 2016 when after [Nick Johnson](/people/nick-johnson/) left, I hired some other people on the protocol and then yeah, that's what kind of, I emerged as the team leader at the time, kind of organically trying to pull together the threads.

<h3 id="swarm-foundation-independence">Swarm Foundation and independence</h3>

[[1:04:00]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3840s) **Bob Summerwill:** So with the Swarm Foundation, how and when did that happen and how did you come to leave the Geth team, I guess?

[[1:04:15]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3855s) **Viktor Trón:** Well, since 2018 autumn, actually 2018 summer, a person called [Albert Ni](/people/albert-ni/) started to offer help for Swarm. They were kind of asking what we need. They seemed very helpful.

[[1:04:39]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3879s) **Bob Summerwill:** And that's [Albert Ni](/people/albert-ni/), is this?

[[1:04:43]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3883s) **Viktor Trón:** Yes, I think so, yeah.

[[1:04:45]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3885s) **Bob Summerwill:** Who had basically joined the Ethereum Foundation at the same time as [Aya](/people/aya-miyaguchi/).

[[1:04:50]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3890s) **Viktor Trón:** Yeah, yeah, I am very, very, I mean, you know, to be honest, I'm on very good terms with [Ming](/people/ming-chan/) and before. So when [Aya](/people/aya-miyaguchi/) came she seemed very helpful and tried to solve some staffing problems and things. But there's your negotiations started and I'm free. And after that it seems that by Prague we kind of got into some serious discussions and then. And after that we kind of, I think it was right at the last day of the Prague DEVCON was submitting the proposal for funding and that was very interesting because I never really got any serious feedback on that and always a bit wondered like what could have happened. And then there was some issues went on with [Sean O'Connor](/people/sean-oconnor/), he was the point of contact delegated by [Aya](/people/aya-miyaguchi/).

[[1:05:54]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3954s) **Bob Summerwill:** Who?

[[1:05:55]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3955s) **Viktor Trón:** Sorry, [Sean O'Connor](/people/sean-oconnor/).

[[1:05:59]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3959s) **Bob Summerwill:** Right.

[[1:05:59]](https://www.youtube.com/watch?v=470q6U-TEMI&t=3959s) **Viktor Trón:** Yes. There was the delegated point of contact for us, the Swarm team. And then slowly, slowly like after that I think, I think there's a kind of, totally the [EF](/articles/stiftung-ethereum/) scores changed a bit and that's when every team needed to submit a kind of proposal and things, that's a kind of, this whole scheme started of like trying to graduate some of the teams and some of the protocols after the foundation, yeah, have them get individual funding and bridge the gap with some grants. And then that's what happened with Swarm as well. So I remember 2019, there was a Swarm Summit in Madrid which was very, very successful. A lot of partnerships like subscribed to some monetary help as well. But then, and then the foundation also kind of.

[[1:07:13]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4033s) **Bob Summerwill:** Prompted.

[[1:07:15]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4035s) **Viktor Trón:** To back it up and then, and somehow that never happened. So we kind of resorted to launching our own token, which we did in 2021 and some kind of, it's already with one year into the new Swarm client, like the Bee client. And yes, so when we launched token we started with some new life breathed into the whole thing. And that's when we started working seriously about implementing the positive storage incentives. And the rest of the features just came.

[[1:08:05]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4085s) **Bob Summerwill:** I mean, was that the same sort of time as your code base became independent? Like did that kind of coincide that you're like, right, we're an independent thing. We're going to make a new client. We're going to switch to libp2p and it's not going to be integrated in directly with Geth. Were those happening at the same time or did the tech happen earlier?

[[1:08:31]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4111s) **Viktor Trón:** Yes, not really. I think the Swarm code base was taken out of Geth quite a lot before. So I think maybe 2019, I'm not even sure when, but I think it was POC 4 I think. And when it was taken out I think it was, it's too expensive I guess or something. Anyway, it's not really a good idea to mix the two. We were able to connect. It's very, very separate and kind of separate development scheme agenda I guess.

[[1:09:21]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4161s) **Bob Summerwill:** Maybe [Nick Johnson](/people/nick-johnson/)'s sort of experience with spinning out ENS and the [ENS Foundation](https://ens.domains/), that would have preceded yours. So perhaps you were looking to that as a pattern. Sorry, we're getting some really bad audio. Can you maybe move a little closer?

[[1:09:43]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4183s) **Viktor Trón:** Yes. Can you hear me now?

[[1:09:45]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4185s) **Bob Summerwill:** Yeah, that's better.

[[1:09:46]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4186s) **Viktor Trón:** Yeah, yeah, it's very inspiring. And we did get some, so we did get a grant from the foundation and also kind of bridging grant. And then, and as I said, like later, somehow it never materialized with that kind of program that had budget put together with the team. But ultimately we made it. And then we had our own foundation in Switzerland which started the [Swarm Association](https://www.ethswarm.org/) and then which kind of issued the Swarm token. And yeah, that, a new era of development.

[[1:10:32]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4232s) **Bob Summerwill:** One thing we skipped over, maybe we can just quickly go back to is DEVCON1. So that was in London in November 2015. So I assume you were there. What are your memories of that event?

[[1:10:48]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4248s) **Viktor Trón:** I just recently rewatched it and I remember I was pretty much kind of very sick already. I don't know if you know, but I had, I was diagnosed with [Parkinson's](https://en.wikipedia.org/wiki/Parkinson%27s_disease) in 2009, 15 years ago. And when I did DEVCON1, I was not very, it's not very easy to follow. And I was a bit surprised, I didn't remember at the time that it was so difficult in terms of my movement. But sorry for that, for maybe unsolicited diversion. But yes. As for the content, I remember that we had a very successful presentation of Swarm. There's a lot of interest at the time.

[[1:11:51]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4311s) **Bob Summerwill:** I mean, I was looking back at, you're saying you're looking back. I was looking back at some DEVCON1 videos recently.

[[1:11:57]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4317s) **Viktor Trón:** Yes.

[[1:11:58]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4318s) **Bob Summerwill:** And like, I guess my takeaway looking back is so many ideas were presented by that point, nearly anything that you can think of in all the different areas. It seemed that somebody was working on that. You'd got this real flourishing of people building on Ethereum by that point. Like anything you could imagine seemingly was presented there.

[[1:12:26]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4346s) **Viktor Trón:** I remember and I was already seeing, we always thought that okay, from next year we're gonna have like always wonderful decentralized service. Like decentralized, you know, delivery or like, or just, whatever you call it, like decentralized [eBay](https://www.ebay.com/), decentralized [Uber](https://www.uber.com/) and [Airbnb](https://www.airbnb.com/) and all kind of things. And of course, and then you know, of course they all need their kind of Swarm-like thing or either distribution or some sort of scalable data layer behind it that came much, much later.

[[1:13:06]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4386s) **Bob Summerwill:** Yeah, many of them like five or ten years too early.

[[1:13:09]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4389s) **Viktor Trón:** Yes. And yeah, so this is definitely what happened to Swarm, like it did not realize much, much later. And now at least it's working so.

<h3 id="swarm-today">Swarm today: features and comparison</h3>

[[1:13:28]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4408s) **Bob Summerwill:** So yeah, can you talk a little bit about where Swarm is now? What's happening? How's the functionality?

[[1:13:38]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4418s) **Viktor Trón:** Yeah, so we have quite a solid network and kind of consolidated the narrow definition of the protocol. So basically it's kind of DPA or like the distributed chunk store definition where nodes communicate basically and then they distribute the chunks. It's kind of a storage model as well as content distribution network and has rather strong privacy properties which are quite unique.

And I mean really it's kind of old, where the analogy is, I don't know, you make the checkbook and postage stamp. Postage stamp is something that you attach to a chunk, piece of data to keep it alive. And that's kind of a hot wallet anyway, that's kind of when you put some money on it, some storage rent gets deduced and until it runs out of funds your content is live, is available hot.

And yeah, so I mean on the way we can very early when we implemented kind of this manifest idea, the manifest basically just like mapping of strings to documents which you can use as a key value storage from a sitemap but also kind of a directory tree. Right, so basically you can that way implement directories and files and so that was the first extension. And we're already talking about erasure codes and stuff in 2016 and got only implemented maybe two or three years ago. And it's kind of a very interesting concept of how we can invert it in the erasure codes.

But yeah, so there's also this kind of thing called ACT which is like the access control mechanism that allows you to kind of manage the grantees that can access the file or directory. So basically have a way to kind of get to the encryption decryption key, encrypted content.

And one of the very interesting stuff in Swarm, maybe one of the very interesting features is how you handle mutability. It's kind of symbolic feeds, Swarm Feeds. And it's basically kind of some sub-block ENS. If you think about it, so basically the integrity of the chunk is not, it's not by the content but actually by some sort of semantic convention. Let's say like okay, it's my website. It's like, let's see, this is something that you can guess. You know, "my CV" is then hashed together with your Ethereum address. That's the address now you can find it. And the mutable content actually has attestation by signature. So there's the signature which is the integrity of the chunk and this is how we handle immutable content. And this also is the case for kind of quickly changing stuff like databases and things.

[[1:17:22]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4642s) **Bob Summerwill:** I mean where would you say Swarm as of 2025 sits and compares with, say, [IPFS](https://ipfs.tech/) plus [Filecoin](https://filecoin.io/) or [Arweave](https://www.arweave.org/) or others? How do they differ and what kind of uses?

[[1:17:43]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4663s) **Viktor Trón:** You're asking me? You probably got a technical answer how it compares.

[[1:17:48]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4668s) **Bob Summerwill:** Well, let's keep it light. If I am a dumb end user.

[[1:17:54]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4674s) **Viktor Trón:** No, I know but what I'm saying is that it's difficult not to, of course not to mention that in terms of e.g. adoption or in terms of even family.

[[1:18:05]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4685s) **Bob Summerwill:** Yeah. I mean maybe in terms of adoption and just like top line features perhaps that one has and another doesn't.

[[1:18:16]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4696s) **Viktor Trón:** Yeah. So [IPFS](https://ipfs.tech/) is obviously very, very widely used also in the Ethereum realm. It was always a very good and relatively simple architecture, easy to understand I think if you compare it to Swarm. So it lacks the privacy features as well as the incentives really. I mean you can say that you can pin stuff and therefore get it preserved, but those pinning services are actually quite centralized. So it's like, and there's also kind of attackable in a way.

[[1:18:55]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4735s) **Bob Summerwill:** Does [Filecoin](https://filecoin.io/) work? Is that a real thing now?

[[1:18:59]](https://www.youtube.com/watch?v=470q6U-TEMI&t=4739s) **Viktor Trón:** [Filecoin](https://filecoin.io/) kind of does it in some way. It's mainly good for archival and you have very strong, they kind of have killer feature, these proof of availability proofs which actually work for proving that whatever you store there is available in various replicas, which is not an obvious thing to do at all. And it's very good but lacking.

But this is an instant meme of someone taking a magnetic tape out and it says like someone retrieving stuff from [Filecoin](https://filecoin.io/). Obviously if you don't have any kind of retrieval protocol or like hot retrieval layer with incentivization, when some sort of SLA attached to it, it's a bit difficult to evaluate the proposition there. I mean of course since then there was a lot of tries and then since then that's changed and there's also kind of, there's been also attempts to link it to [IPFS](https://ipfs.tech/) itself, the platform.

So [Filecoin](https://filecoin.io/) kind of yeah, does its job. I think it's a bit of an overkill in terms of these incentives, like in terms of the availability proofs and also kind of suffers some bit of the previous issues. You have to negotiate the SLA level, marketplace of storage.

Swarm is very, very different in that sense. The positive incentives, it's just get rewarded for storage that belong to your neighborhood. And pricing and the redistribution of the kind of postage stamp revenue as you call it, it's kind of automatic here and there's no extra layers that you or your file or anything. Somewhere chunks are always distributed across many neighborhoods and whatever belongs to your node, operators get rewarded for.

And this redistribution mechanism has a nice property of decentralized pricing basically that can be sensitive to some sort of supply signals that we can get from the game itself. It has this nice method of checking supply for demand and therefore set the price based on that, thermostat type of model. I mean the question is whether it works at all and some of the assumptions might not hold, a pinch of salt.

But in terms of its bandwidth incentive and in terms of this positive storage incentives and also the privacy properties I would say it's quite an advanced framework. I mean apart from all the obvious goodies that we talked about like addressing and kind of URL-based addressing storage and balanced distribution and also there's a lot of symmetry, we put a lot of, we take it very seriously that the monetary incentives is what drives the sync from bottom.

So I think there's some voices in the community that don't take very seriously this kind of monetary incentives. They think that maybe altruism is really not that bad and I kind of understand where they're coming from. However we take it seriously that monetary incentive, like having someone behind a node client that's kind of modeled by rational profit maximizing agent and turn this kind of relatively lower level urge of maximizing your profit into something that's generally very, very usable on the network level, emerges as a kind of intelligent system that can serve other purposes.

And this is what incentive design, this is what Ethereum is amazing at, expressed with the smart contracts, all these kind of self-enforcing contracts, how they can express beautiful incentive system. And for example it's formally taken so seriously that the organization, strategic decision is that, clients can make that basically, that doesn't lead to kind of immediate disconnect because of a syntax problem or like something primitive violation, this should be incentivized. At least, at least doing anything else than what the protocol dictates should not get a better reward. So basically you at least lose money. And then this is all the way from the connectivity, how you connect and how you forward stuff, how you, and all the strategy of what you serve, what you retrieve, what you cache. And I know this kind of stuff are properly incentivized.

<h3 id="reflections">Reflections on 10 years of Ethereum</h3>

[[1:25:06]](https://www.youtube.com/watch?v=470q6U-TEMI&t=5106s) **Bob Summerwill:** So let me ask you one last big question. Looking back over these 10 years, have things happened as you thought they might? What you thought Ethereum was at the start, has that been what it's become? Looking back on these 10 years, what are your big reflections on this journey?

[[1:25:30]](https://www.youtube.com/watch?v=470q6U-TEMI&t=5130s) **Viktor Trón:** Interesting question. So, well, Ethereum is still very close to my heart in a way. But apart from the heart being sentimental, from the sentimental approach, I also think that it definitely fulfills many of its early promises and maybe some of them are kind of maturing a bit slower than I would have wanted. I mean just think of the proof of stake which was supposed to come after maybe a few years, it kind of happened. But you know some things take a while to even develop, to even conceptualize properly.

And yes, I mean for some of these earlier ambitions of proper apps being on Swarm, sorry. Be like the Swarm Ethereum apps of course didn't materialize. Or I would say that they not considered as best, properly materialized because I think you have Web3 app is as Web3 as the weakest link of it. Yeah. So if you, anything that's not so decentralized in a stack, like just think of the easiest examples of [Tornado Cash](https://tornado.cash/) but using [Infura](https://www.infura.io/).

[[1:26:56]](https://www.youtube.com/watch?v=470q6U-TEMI&t=5216s) **Bob Summerwill:** Right, right.

[[1:26:57]](https://www.youtube.com/watch?v=470q6U-TEMI&t=5217s) **Viktor Trón:** God forgive me to say it but you know [Infura](https://www.infura.io/) did block [Tornado Cash](https://tornado.cash/) at the point and it was obviously illegal to use in the US. And but I mean so we still suffer from some of these, some of these early neglects like neglecting light clients, neglecting the whole proofs and verification. It's a bit surprising, some of these, to me. And it's worth kind of facing that like you know we're talking about Web3 but it's actually just.

[[1:27:39]](https://www.youtube.com/watch?v=470q6U-TEMI&t=5259s) **Bob Summerwill:** We.

[[1:27:39]](https://www.youtube.com/watch?v=470q6U-TEMI&t=5259s) **Viktor Trón:** Talk through RPC and then which is kind of centralized and then we talk NFTs and all this kind of stuff. But I mean, as Moxie Marlinspike's blog put it, like he actually showed when on OpenSea the NFT that he created turns into a, turns into a turd image. And so, you know, it's kind of, I mean, of course it's fun, it's okay to poke fun. I mean, you're part of this.

And of course, of course, you know, some of these things might be a promise of maybe Swarm, of something that we might have missed and therefore kind of lagging behind with some of these overall ecosystem promises. But I don't know. But yeah, instead of lamenting on this, I'm kind of, I just keep on. I try to share some of the positive energies into this constructive action and stuff.

So in this way I'm kind of, in general, my approach can be described easily with a bit of solarpunk image that I'm relatively optimistic about the tech and the future of it. And I think this unstoppability is kind of unstoppable now. It's really not possible to slow it down. And I really hope that when people get it, they don't necessarily look forward to all this kind of stupid regulations curbing the uses of it and instead just yeah, go for certain.

[[1:29:31]](https://www.youtube.com/watch?v=470q6U-TEMI&t=5371s) **Bob Summerwill:** Okay, well, thanks so much and all the very best.

[[1:29:37]](https://www.youtube.com/watch?v=470q6U-TEMI&t=5377s) **Viktor Trón:** Okay, thank you very much, [Bob](/people/bob-summerwill/). It was lovely to talk to you and reminisce about the past.

[[1:29:44]](https://www.youtube.com/watch?v=470q6U-TEMI&t=5384s) **Bob Summerwill:** You too. Okay, thanks so much. Bye bye.

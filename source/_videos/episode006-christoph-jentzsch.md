---
title: "Early Days of Ethereum - Episode 6 - Christoph Jentzsch"
date: 2025-11-19
show: true
guests: ["Christoph Jentzsch"]
hosts: ["Bob Summerwill", "Kieren James-Lubin", "James Hormuzdiar"]
description: "Christophe Jentzsch joined ETHDEV shortly after the crowdsale and built all the cross-client testing infrastructure.  He founded Slock.it, focused on smartlocks and IoT.  Slock.it were the creators of The DAO, Ethereum's first 'killer app'"
img: /images/covers-for-conversations/episode006-christoph-jentzsch.png
---

## Audio

<audio controls style="width: 100%; max-width: 600px;">
  <source src="/assets/audio/episode006-christoph-jentzsch.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>

## Rough agenda

```
Your background pre-Ethereum
Joining ETHDEV in September 2014
DEVCON0
Cross-client testing (and how coordinating Amsterdam and Berlin worked)
Talking about the POCs and Olympia
Working towards the launch (how did you know it was "ready"?)
Ming coming in and "cleaning house"
The formation of http://slock.it
DEVCON1 kettle demo and announcing DAO
Building "The DAO"
~~DAO Fork and aftermath~~ (largely skipping over)
Other http://slock.it projects
Blockchains LLC
And what you do now.
```


## Transcript

**Bob Summerwill:**


[00:00]    Okay, recording is in progress, it says. So hello everybody. Today, delighted to have Christoph Jentzsch with us. We did attempt to record this, Christoph and I, two weeks ago, but I forgot to press the record button. So we spoke for an hour or so and then it was not recorded. So this is round two. So hello Christoph, how are you?

**Christoph Jentzsch:**

[00:16]    Hi, Rob. Nice to meet you again. I'm doing good. I hope you are too. Thanks for the invitation.

**Bob Summerwill:**


[00:22]    Fantastic, yeah. So Christoph and I, our paths crossed for the first time way back in 2015 when I was trying to do C++ Ethereum on my smartwatch. And this was around the time that Christoph was still at the Ethereum Foundation. And then I think I crossed paths a number of times since, and Kieran's too. Indeed. So, Christoph. What were you doing with your life before you found Ethereum and joined this crazy journey?

**Christoph Jentzsch:**

[00:44]    So the journey started in 2013. I was doing my PhD in theoretical physics, actually about self-organizing systems. So like biology, six months in mathematical biology and other things. So I was studying systems which have local rules and global behavior. And I came across Bitcoin, which is just a small set of local rules and a global behavior as a currency. But the reason I came across this was I was looking for cheap GPUs, like graphic cards, and the Bitcoin miners were selling their GPU mining rigs to get some FPGAs and later ASICs.

[01:13]    And so that's how I got into Bitcoin mining. So I bought my first Bitcoin, got into this bubble, read everything I could about it, and then I came across the white paper from Vitalik, early 2014, something like January, February, on some Bitcoin forum somewhere. And I was already totally in love with the idea of Bitcoin being a decentralized currency and all the characteristics and features of it. And this white paper from Vitalik—if you read it again, it's almost a prophecy. Except for NFTs, everything's in there: DAOs, ENS-like domain name systems, and all of that.

[01:46]    So for me, it opened up this option of building applications with the same characteristics as Bitcoin, but not just a currency—everything else. And so then I started reading everything about it. And in 2014, in summer, I read that the crowdsale was in 2014, right? So around the time the crowdsale happened, I watched a video from Gavin Wood. He was somewhere in Scandinavia, some conference there, the Nordics, and he talked about Ethereum. I loved it, and he said he wanted to open up an office in Berlin, looking for C++ developers.

[02:18]    I was a C++ developer—so in theoretical physics it's 90% software development. So I said, well, I want to do this. So I took my parental leave time plus some vacation time from and paused my PhD for like three or six months and said, I will return after I'm done. I thought this was just a short project because they raised money; maybe six, maybe twelve months, eighteen months or so, then it's over.

[02:43]    When I started, I thought about maybe three to six months, and then I’d go back to my PhD. So I worked there with Ethereum, with Gavin Wood, it was a great time, and then just decided to stay. It was so exciting.

**Bob Summerwill:**


[02:54]    So you never got to be a doctor?

**Christoph Jentzsch:**

[02:56]    No, I’m not a doctor. I did not finish my PhD, although I only had six months left, which was kind of a pity. I worked for three years on that. But I also had at the time, I think, four or five kids. I needed some money. I didn’t get much money as a PhD student. So I did software development as a side hustle, basically.

[03:18]    And so, when I got this project, I said, well, let’s do this for two or three months as a parental leave time and then I can return. And then I decided to really interrupt my PhD, thinking I would maybe return one year later, because I thought the foundation would eventually run out of money. Because they're not making any profits; they just raised donations, then would spend them, that's over, then I can continue my PhD. That was originally the plan; just came different. I mean, I guess it's never too late, right?

[03:45]    I actually sometimes think about it, that I should return. It's just so much to learn again. I'm right now doing Tokenize It. I'm basically working on tokenizing German companies. It works very well. And so currently I'm not planning on getting back anytime soon.

**Bob Summerwill:**


[04:02]    No, because I mean, famously you had, you know, Dr. Gavin Wood and Dr. Christian Reitwießner as well. And I think there were a couple of other PhDs as well.

**Kieren James-Lubin:**

[04:11]    There was, definitely. I also dropped out of mine. I was actually in mathematical physics too. Interesting. Similar background.

**Christoph Jentzsch:**


[04:18]    It's actually the same. Like theoretical physics, it's the mathematical part of physics. I enjoyed it very much. I did thermodynamics and statistics, mostly software development. It was really fun.

**Kieren James-Lubin:**

[04:27]    Well, by the way, Jim is trying to join. I don't know if there’s anything that needs happening. He gets some browser issues.

**Bob Summerwill:**


[04:35]    Yeah, yeah. Well, he'll pop up and we can add him, or if he’s—I'll say then never mind. So, Christoph, in terms of getting hired into FDev—and I'm sorry if I just missed it—

**Christoph Jentzsch:**

[04:46]    How did that happen? Did you meet Gav at a meetup? Did you—

[04:49]    Yes, I actually, I listened only to his talk. It was an online thing, and I actually just wrote him an email, said look, I would love to join Ethereum, love what you’re doing. And he invited me to meet him in Kreuzberg, Berlin, which again is about two hours drive from here. So I went up there, met him. I remember the first conversation, he was talking about all the stuff they were going to build and said, well, what can you do? And I just asked him, what's like the most complicated stuff you have right now? Give me a complicated task. I somehow can figure it out. So he talked about the Ethereum Virtual Machine, which needed some testing.

[05:21]    So I just picked working on testing the Ethereum Virtual Machine or like writing tests for it. Back at the time, I actually had no real idea what he was talking about. Meaning, of course, I did understand on the white paper level, I did understand what Ethereum was about. But Gavin had this skill of writing the yellow paper, which is still incredible work. Like it's such a great specification: different from Bitcoin—really having a specification so multiple clients could be built. And in there, he defined the Ethereum Virtual Machine.

[05:54]    And I think I read the paper six, seven times. I felt like I was one out of—I don't know—10 or 20 people in the world at the time who really understood the yellow paper. I did corrections to it, I have some pull requests actually in the yellow paper GitHub repo, added missing definitions and stuff like that.

[06:12]    And then what I mostly did was writing tests according to the specification, which then were—with the help of the C++ client, because this was his team. So I was working also on the C++ code base.

[06:23]    And so Geth, PyEthereum, also the JavaScript version, and what else did we have, like the Haskell client and others, were basically using my tests to see if they implemented the EVM, also the state transitions and block creation correctly.

**Bob Summerwill:**


[06:40]    Yeah. So, I mean, just to have some timeline for the viewers. So, Vitalik wrote the white paper in November 2013. Various other people sort of joined in on the efforts in December, including Gav and Jeff who started the C++ and Go clients, respectively, at the very end—


[07:02]    —at the very end of December, kind of Christmas projects for them both. January 2014, you had sort of the public announcement of Ethereum at the Bitcoin Miami conference. It was as early as April 2014 that Gav wrote the yellow paper, which is, you know, as you're saying, the sort of formal specification.


[07:22]    You had the crowdsale between July and September 2014. So then, yeah, you were coming in right after that. So you had a wave of arrivals in September and October of that year, essentially, because the crowdsale had happened, there was some money to actually hire people.


[07:39]    And then talking about, you know, where you met there initially, that group—so FDev were and is a company coordinating the development of Ethereum stuff, so it's a subsidiary of the Ethereum Foundation—were working initially in a co-working space but then got an offer, and it was between August and November of that year that the office was getting, like, you know, done up and tidied. And then in November you had Devcon Zero, you know, the first conference—an internal one—


[08:03]    Where a lot of the people, that was their first sort of face-to-face meetings. How was Devcon Zero? What was that like?

**Christoph Jentzsch:**

[08:08]    It was like a company retreat. So it was not a public conference. Even though there were some outsiders who felt like part of the community, maybe also pushed some code. I remember—I was, what's his name again? Wrote the book also about Ethereum, did Lexis from IBM. I think Henning was also there, just as an example of some people who were reading about Ethereum, interested in joining. Of course, Joseph Lubin.

**Bob Summerwill:**


[08:31]    Roman was there.

**Christoph Jentzsch:**

[08:33]    But it was mostly developers. But also, I think Stefan was already there. So they had already the London team. So it was like an internal Ethereum meeting, kind of a meetup almost, I think three days or so. Five days even. So it was a full week. I was there for the full week, as far as I can remember.

[08:49]    I did a presentation about testing, how the test suite is very important. Yes, we had Remix projects, Solidity project, I think, mostly started at the time. Gavin used this for explaining his vision of Ethereum as a platform for decentralized applications, so building Swarm. I don't know if Swarm and Whisper already launched there, but at least the generic idea, the Mist browser,

[09:14]    So all those ideas are really sketched out there: like the technical roadmap, what we are going to build. And because we started just, of course, with the basic clients, like implementing the protocol, but he took it like—kind of, what are we going to do in the next twelve months: the Mist browser,

[09:27]    Remix, all those tools, to have a platform for these and those applications.

[09:32]    I remember one slide, which I think I posted on Twitter a while ago. You have those three circles. One circle is at one node. You would see they are connecting on the blockchain, using Swarm for the data, Whisper for the messages. This whole picture was painted there.

[09:47]    And there were people attending, I think around 50 people, plus or minus ten—don't know the exact number—where most of the developers talking about code, coding there. Joseph, I remember him being there, saying, well, all of you, you will create your own companies, becoming millionaires.

[10:05]    I remember Joseph talking about that. And I think mostly he was right. So most of those people in the room...

**Bob Summerwill:**


[10:10]    In one way or another, co-founded, founded, or early part of companies building on top of Ethereum in the years to come.

**Christoph Jentzsch:**

[10:15]    Yeah, yeah.

**Bob Summerwill:**


[10:17]    Let me see if I can do a little screen share—no, I can't work out how, not to worry. But yeah, there's this present button. Does that not work? Yeah, I don't see that. Is that on the right-hand side somewhere or at the bottom?

**Kieren James-Lubin:**

[10:30]    Maybe you have a different... For me, I appear on the top right and below. And to the right of me below, there's a present button with like a plus.

**Bob Summerwill:**


[10:39]    Oh, never mind. Never mind. I was just going to show the iconic photo of people at Devcon Zero, right? You know, that's this big group shot with nearly everyone who was out there. You know, so that's a classic Ethereum photo. So I was looking—sorry, there's like 11 of the videos, they're still around from Devcon Zero. I think there are around 20 sessions. I'm still trying to dig out the others. Some of them, including yours, I have not managed to find yet.

**Christoph Jentzsch:**

[11:02]    It was only about the test suite, how I built it, how people would use it. It was rather technical. There was not much of a vision in there.

**Bob Summerwill:**


[11:10]    Well, Lefteris presented on Emacs, so you're not the most boring talk.

**Christoph Jentzsch:**

[11:13]    Again, it was just some nerds starting. Also, for most of them, it was the first time we actually met. Now, of course, the C++ team, they did know each other because they were working in the co-working space. Lefteris and others were there. But then, let's say, I think it was the first time I actually met Vitalik, because he came there.

[11:33]    Then, of course, Jeffrey and his team, Stefan Tual and his team, Joseph Lubin. So for me, it was the first time to meet all of them and having talks. And since we really had time, five days, a small group of people, we actually did have time to eat together, to talk. So it was not so crowded maybe as Devcon is today. Very intimate. It was good.

**Bob Summerwill:**


[11:53]    Yeah, I mean, far from it.

**Kieren James-Lubin:**

[11:55]    One thing I can't quite remember. So there was a time there was an Ethereum Slack that was kind of open to the public. You know, there were a lot of people. The sort of Ethereum affiliation status was fairly vague at that point.

[12:08]    And we were, you know, I remember we were using Skype a lot in those days, just the team. And like, Vitalik liked to Skype. And then at some point, I sort of lost the thread of where the core—I can't remember where the core development discussions were happening.

[12:21]    And I'll maybe ask Jim to comment also, just like those tests. We kept getting them. And I think I'm thinking of some a little bit earlier on, and we'd build them. And Jim was mostly working on them, and one update on the passing percentage, which would always be between like 93 and 98%. And then something would change, you know.

[12:41]    But yeah, like where did the discussion—because, yeah, between sale and Devcon Zero, I think it kind of got a little bit like moved around, where the dev discussion was.

**Christoph Jentzsch:**


[12:52]    Yeah, it was mostly Skype. We also had Skype channels for almost everything, like the C++ team and so on. Then in a short time, there was a note taker, which had a name also with E—something.

**Bob Summerwill:**

[13:03]    Etherpad?

**Christoph Jentzsch:**


[13:04]    Yeah, Etherpad, something like this, right? There were some notes being written there, but the communication was really, I would say, 99% Skype for me. Later on, we used a tool,


[13:15]    Based on GitHub, what was the name of it?

**Bob Summerwill:**

[13:16]    Gitter. It was called Gitter.

**Christoph Jentzsch:**


[13:18]    Gitter came later. This was like the replacement for Skype, but I didn't use it too much. This was actually during the time when I was actually leaving. But it was used also by the C++ team. There you had a channel per GitHub repo. This was during the time that GitHub was completely reorganized, because at the beginning, it was like one big repo with everything. Then we had those submodules. It was so messy. And then, during this process, we got Gitter. But yeah, for me, it was mostly Skype.

**Bob Summerwill:**

[13:47]    Yeah, and then annoyingly, that kind of means a lot of these early discussions are kind of like a bit lost because nobody is using Skype and Skype is getting, like, deleted—this is happening in February of next year.

[14:00]    Oh, I thought it happened already. So you can still request a download, and I did, and then I haven't heard anything back, and I want to do that to see if I can get some of those. So everybody apply to download your Skype data.

[14:13]    I remember with Gitter, there was a discussion about this that I was involved with at the EF later, which was saying the problem with Skype is it wasn't discoverable. You had to request to be added, but you had to know what was there to be able to do that request, so it was a bit of a chicken and egg situation.

[14:28]    Whereas Gitter, it was like a one-to-one with the repositories, so if you're using a repo, there you go, there's a one-to-one channel with that, and it was discoverable and archived. But then Slack, I think, was even earlier. Oh, and there was the forum as well, right? It was an Ethereum forum too.

**Christoph Jentzsch:**


[14:50]    Yeah, it was important. And then Slack, I think I got introduced to Slack by Stéphane Tual when he created a community for the DAO. When he looked for a new communication tool, he went with Slack. And at that time, it was not like today—like a business tool for the company. It was really communities, like we had 5,000 people in our Slack, which is not how it's used today.

**Bob Summerwill:**

[15:13]    Yeah, yeah. So welcome, Jim. Are your technical problems—

**James Hormuzdiar:**


[15:18]    Hi, sorry. I had some technical problems for a while there. I don't know. I'm just listening to you guys. What happened that brought the whole world to Zoom suddenly?

**Kieren James-Lubin:**

[15:28]    It was in waves. On my side...

**James Hormuzdiar:**


[15:31]    I don't know. I just woke up one day and everything was Zoomed from then on.

**Kieren James-Lubin:**

[15:35]    It was like a statistical phase transition. I think it was two phases. I would always get invited to corporate, let's say, 2017 to 2019 when I was doing primarily BD, I found that I would get invited to any of 10 video conferencing tools. And like, you know, what was the Cisco one? WebEx. That was horrible. I would get that a lot. Google meetings didn't feel sufficiently corporate or something, even though it was okay. And Zoom had the best quality for a while.

[16:01]    And I found that everyone picked Zoom at the same time, like mid-2018, let's say.

**Bob Summerwill:**


[16:07]    I think it was just quality to me. Yeah. I mean, Microsoft really fumbled, right? Skype had got such a lead for so long, but Zoom just seemed more reliable—whatever weird little proprietary magic they had going on. Yeah, and then I guess, yeah, I guess I was under the impression that like Zoom was for businesses...

**Kieren James-Lubin:**

[16:23]    I think that's, well, that is true. But it was just that, still, I mean, this has gotten way better in the last 10 years, but still nothing really works for reliable video over the internet. It's just much better than what existed before, but there was a free version always and it would just, like, time you out, so they had a fairly viral acquisition loop where—like, I was just going to say in the pandemic, once when people were locked down, it became a consumer tool where people would have, like, large yoga classes or, you know, sermons or whatever with like 500 people on a Zoom and then everyone, yeah.

**James Hormuzdiar:**


[17:00]    I remember it well. All of a sudden, my parents were calling me up and they were like, we found this awesome new tool. You’ve probably never heard of it. It's called Zoom.

**Bob Summerwill:**

[17:08]    But yeah, there were like 10.

**Bob Summerwill:**


[17:09]    Let's move on from sharing about video platforms.


[17:11]    So I look back. So Jim's first commits on the Haskell client were mid-September 2014. So, you know, a couple of months ahead of Devcon Zero, you'd had the yellow paper for five months at that time.


[17:26]    And I did find on our Slack a bit of a thread where things I think from you, Christoph, were being discussed by Jim. I don't know, did you guys interact directly at all on testing, Jim, Christoph—not directly—not as far as I can remember. I mean, maybe there was some messages. I mean, it's about—it has been a while ago.

**James Hormuzdiar:**

[17:46]    I could be wrong. I may have met you briefly in London when we had that conference. But it would have been like quick greetings at an after party or something.

**Christoph Jentzsch:**


[17:54]    I mean, 10 years ago, lots of people, sure. We were testing GitHub repo and we had all the major clients using it. And I was interacting, mostly asking, responding questions. I mean, of course, the C++ team I was super close to. I used the C++ team also to pre-fill the tests. So this was by default right, except we found there was a test failing, but actually C++ was wrong.


[18:21]    So sometimes this happened. The test was not really failing; just C++ was wrong. But in the majority of cases, C++ was right. So we were just having those conversations, and we found tons of issues. Not just in the beginning, I wrote those tests using actually bytecode, the very first tests. Then I went to a low-level Lisp-like language. This was LLL. This was the precursor to Solidity by Gavin.


[18:50]    And then in the end, actually, I had automated fuzz testing where I wrote software that would create thousands of tests. We had some AWS—like over 100 cores of machines, constantly creating tests. We had always some failing on some versions of Geth or other clients. So this was mostly what I did during one and a half years.

**Bob Summerwill:**

[19:13]    Right, right. So yeah, I mean, I guess for the viewers, something that Ethereum chose to do differently from Bitcoin was to have this specification separate from the client software, right? So, when Bitcoin started, it was the code that happened first, and the white paper afterwards, but the white paper wasn't a protocol specification. So, you know, Gav

[19:37]    —was doing that yellow paper spec in parallel with the C++ client, which was sort of the first one, while you have Vitalik working on the Python client, Jeff working on the Go internally, but then you've got all these other clients as well, right?

[19:50]    So the Java one by Roman, I think, started in about April or May.

[19:54]    You know, ourselves, Jim and Kieran here, with a Haskell client starting in September.

[20:00]    You had JavaScript as well.

**Christoph Jentzsch:**


[20:01]    Right. It's more like a library. I don't know if it's really like a syncing client, but they have all the tools, so you can, in your web app, kind of integrate parts of it to verify certain states.

**Bob Summerwill:**

[20:11]    Yeah. I mean, I think maybe they had a syncing client at some point, apart from it obviously couldn't actually keep up, but theoretical.

**Bob Summerwill:**


[20:17]    And... And yeah, like a little later, there was a Ruby client as well. And yeah, at one point, there were eight different clients.

**Christoph Jentzsch:**

[20:26]    Right. If you want to, I can tell the story of why we all are using Geth today.

[20:29]    Yeah, please do.

[20:29]    Because this is absolutely not a given. At the time, of course, everyone had different opinions. But the C++ client was really the fastest, the most solid one, passing all the tests and so on. But Gavin always wanted to add new features. We went through a refactoring, and he was a perfectionist, which is not bad for this kind of software.

[20:50]    And then the time came for the security audit, because everybody wants to launch Ethereum now. And he said before we launch it, those clients need to have a proper security audit by an external company. And one of the companies doing this was Deja Vu in Seattle. So I actually went there with a team for the audit. And because Gavin wanted to build some more features, he said, well, let’s—Geth can go first. Let’s first audit the Go client. When they are done, I'm done with the features I want to build, and then we're going into the audit for the C++ client.

[21:22]    So Geth was audited. They had some issues. They fixed the issues. And now it's fine. And so there was technically no reason—well, actually, we could launch Ethereum now. We have a fully audited client. Testnet is running for a while. No major issues. No failing tests for a long time. So why would we wait for the C++ client to be audited?

[21:41]    I mean, they all really had the pressure of money was running out; we need to launch now. And then a decision was made: let's launch with Geth. They can still use C++, it's just not audited. Let’s say in two months or so, the audit is done and then they can use C++ even more if they want. But then the big mistake was, in my view, when they made this announcement of "you can start now," they recommended using Geth because this was the audited one. So almost everybody used Geth.

[22:15]    This was like—we started with almost 100% Geth, and then there was just a minor other clients using it. Only very few did use them. So after the audit was done, nobody switched. We’re like, sure, but Geth is running, I’m synced, what’s the issue, why should I switch?

[22:34]    And so we had this 90/10 or 80/20 distribution. It just stayed like this. So if Gavin would have been—either say, let's just do the audit now and we just have both audited and then start, maybe we'd have 50/50. Or even the other way around, if they would have first audited the C++ and Ethereum would have been launched without a Geth audit, they would have received a total switch.

[22:58]    And then, of course, money was going low in the foundation. They had to reduce the team. And because Geth was the most used one, there were some issues with Gavin—another story, maybe have a talk with him.

[23:10]    And so in the end, Ming decided to basically kick out the complete C++ team. This was then shortly before Devcon 1. So something like November, October-ish.

[23:23]    But yeah, I think the reason for that was also C++ team wasn’t really that used. Also, there are other reasons as well. But you can see how a tiny thing can have such big consequences down the road—like him doing Polkadot today and all of that. And he was great. I mean, I really, I still think maybe we would have had Mist (missed) sharding way earlier if Gavin would have stayed.

[23:48]    So without him, they moved slower. And, of course, the price went up. There were no security-relevant things, so changes happened not quickly anymore, but took more time and so on. But I think this was a big loss for Ethereum that Gavin left basically in 2015.

**Kieren James-Lubin:**


[24:10]    Yeah, it's amazing—the client side was the cause. I think it was part of it, but you know, having—the process maybe started with the Red Wedding, which we just...in some other Early Days of Ethereum episodes.


[24:26]    Like, I remember very clearly in the room, I was like two weeks into my Ethereum tenure at that time, that he was talking about brain drain if it was only going to be a nonprofit foundation and not going to have a commercial arm.

**Christoph Jentzsch:**

[24:42]    Yes, there were more issues than that, definitely. Like, this was not the deciding part, but it was like those things were adding up. I remember that Gavin had this idea of turning the foundation into a DAO and then having a for-profit entity next to it which would build things and make money.

[25:01]    So there were many different commercial ideas at the time. So he then basically started on his own ETH Core. I remember he wanted to have me as part of it, but I decided to do Slock.it at the time. So that’s why I did not become a co-founder of ETH Core. Another story, we can go into this if you want—you know what happened after that.

[25:22]    But there are many reasons, many parts of it. I think also him and Ming didn’t really get along too much; there was not really a trust relationship going on. Of course, money running out, different visions of how Ethereum should evolve, technically and economically if you want—all played a role. But I think it was just one part that the C++ client wasn't really used that much, and the reason for that was Geth being audited and us launching without an audit for the C++ team.

**Bob Summerwill:**


[25:56]    Yeah. I mean, talking about features, so, so many things happened, right?


[25:59]    You know, Gav had this period of incredible productivity between that December and that April of getting from nothing—you know, just like just having the white paper—all the way through to having a working client, you know, having the yellow paper.


[26:17]    As you mentioned, you know, there's this diagram showing how Whisper and Ethereum and Swarm were intended to fit together. And I found some more timing on that—so Swarm was envisaged by Daniel Nagy as far back as 2011.


[26:33]    It was an idea he'd been working on for like three years before that. I spotted on the Whisper presentation that Gavin did that that was a pre-Ethereum idea as well. So it was probably only when all of these people came together it was like—well, you've got this storage idea, you've got this blockchain, kind of like CPU/database-y idea,


[26:52]    oh, and then if you have messaging—you know, all of these things can fit together. But it was also—we're going to build our own IDE as well, browser—yeah, I'm sorry, plus the Mist browser.

**Christoph Jentzsch:**

[27:08]    The complete thing. It's a complete platform for decentralized applications, end to end. This was the big mission, and also, this was what attracted me to it. I mean, having someone with a really proud vision of a new internet, if you want—that's what he called Web3, that's where the term comes from—because it was not just a little tool, it was a complete new internet called Web3: from data to messaging to smart contract blockchains to IDE to browser.

[27:39]    And this vision was very, very attractive. This attracted all the talent and the developers because they loved building that.

**Bob Summerwill:**


[27:48]    Yeah, I mean, it's a very, very expensive vision. And yeah, it was, you know, Gav, as you say, you know, Web3 was him. Prior to that, the language I saw was really about Bitcoin with smart contracts. You know, that was really sort of the genesis of the talent going through—that journey of colored coins and Mastercoin and meta protocols.


[28:15]    And that kind of positioning of Bitcoin as a calculator and Ethereum as a smartphone. But it was all that kind of like blockchains and applications, right? It wasn't that full Web3 vision, which I think—and that really came from Gavin.

**Christoph Jentzsch:**

[28:32]    We have to attribute this to him. He was having this big vision. This attracted also so many people. It attracted also even the business people. They could now understand what it actually is, other than this being just like tech—let’s see. But this is like a broad vision of how business functions, how this new financial world would happen. They could understand this far better than having this iPhone/calculator comparison; this was maybe a nice technical thing.

**Bob Summerwill:**


[28:58]    Yeah. But then, for it being a very expensive vision, that's a lot of work.

**Christoph Jentzsch:**

[29:04]    Sure. But I just saw it somewhere.

**Bob Summerwill:**


[29:06]    That's it. So, I mean, you know, talking about Gavin, the features. So, yeah, there's a ton of stuff on that C++ team. AlethZero as well. And AlethOne.


[29:16]    So AlethOne being the GUI miner. And then—I know—how would you describe AlethZero? Kind of the first interface to the blockchain in some way, like the first graphical interface to a blockchain client?


[29:32]    And what could it do?

**Christoph Jentzsch:**

[29:33]    Of course, it could mine. You could deploy a smart contract. You could visit—make it visible somewhat, what's happening there. It was not really end-user friendly in any way, but it was just a replacement of what people just do on the command line. Usually, command line—when your client has some input, has some output. And it was the first kind of graphical user interface, graphical user interface replacing the command line.

**Bob Summerwill:**


[29:59]    I guess it's sort of like a combination of what you have with the block explorer now, apart from it—that’s like a view-only and this was both a view and a do... But yeah, those GUI clients.

**Christoph Jentzsch:**

[30:16]    But much more influential was the Mist browser. The Mist browser—I think there's a video by Alex Van de Sande. It's like a ten-minute video on YouTube. They had this prototype. They’re not working yet, but just fake it until you make it—the vision of the Mist browser. And this also really made us understand how Ethereum could work for the end user.

[30:38]    Having different identities connected to wallets, and you would load those DApps. Is it an IPFS hash or even over Swarm one day—the app was loading and you could do some finance stuff there. This gave us an idea of what Ethereum could be. It was—so you have to think: Vitalik gave us a rather technical vision and intellectual thing, but Gavin gave us his pros internet vision. Alex Van de Sande gave us this very concrete thing—what an end user could do with that in the next six to twelve months, maybe. It's very important.

**Bob Summerwill:**


[31:19]    Just yesterday, actually. So there was an announcement from Uniswap about them sort of turning on fees and doing various things that are more to do with, you know, the company and the protocol tying together. And I saw a reaction to that, saying, you know, well, I'm never going to use this again. You know, you can't, like, extract ongoing revenue out of a protocol. And this person then said, "It's time for Mist 2. Totally we need the full vision, so that you've got hosted and DApps, and you don't need a server, and you don't need a company, and you can just make this pure immutable smart contract wrapped in a UI that's all decentralized."


[31:57]    Do you think we could have a Mist 2?

**Christoph Jentzsch:**

[32:00]    I would love to see this. I heard people thinking about this before. I don't know if anybody really started the project, but...

**Kieren James-Lubin:**


[32:10]    Should be totally doable today; it's not rocket science. You know, let me interject—we ourselves have made sort of different attempts at this, where like you just download the app from the chain itself pretty much. It worked fine and I guess it just wasn't as much a differentiator, like it made things a little slower to do it this way all the time.


[32:28]    I also think like one of the people that took the Web3—the world computer vision—sort of seriously was like the Internet Computer people. And I don't know anyone that uses Internet Computer, but like every once in a while I see tweets about it and I'm like, that sounds great.


[32:42]    Yeah, start the app from the chain. You know, it's got some cool, like, smart contracting language in it. UNKNOWN:


[32:46]    Yeah.

**Kieren James-Lubin:**

[32:47]    I guess there's just no demand if it slows the app down even slightly. And I think MetaMask and then many other wallets were sort of enough—still not the whole thing, but yeah, I guess it's like you got to get people to use it if you want it to be maximally cypherpunk too. I fully agree and, I mean—yeah

**Christoph Jentzsch:**


[33:06]    The problem with this is you only need it if you really need it. Meaning, if Uniswap failed, the interface is not there. It's like a backup. It's not what you want to use daily.


[33:18]    And if you remember, let me cure you, when they presented MetaMask, my first thought was, oh, this is totally away from the vision. Like, how can you not run a full node? How could you dare to just serve over RPC with Infura? Like, almost—not a scam—but it was like not what we intended to build. Today, it's like, this is the decentralized version of it. This is like non-custodial—MetaMask are the good guys compared to all the others.


[33:48]    Like, see how, like, the view shifted over the years. Like, then it was absolutely required to run a full node with the Mist browser. This is how it's done. And now we have MetaMask plus Infura. And today, this is really the version which is viewed as the original non-custodial Ethereum vision—how things are shifting, basically.


[34:11]    But yes, you only need those things if things are falling apart. Just as an example, so many people use the Gnosis Safe. Let's say the Gnosis Safe UI is gone. Technically, it shouldn't be a problem to run another one, but it really needs to be something on IPFS. It needs to be something which can self-host so I can still access my wallet without going to the command line.


[34:35]    So for those reasons, you need it. And the Mist browser was thought of as the fallback for every dApp. Like, of course, you can have your application run on a normal .com domain on AWS, fine. But if you could serve the same app in a decentralized fashion as a backup, this would be great because you could still use it if the company—Uniswap, the company—fails. If someone builds a nice Uniswap UI served by IPFS, directly interacting with the smart contracts...

**Kieren James-Lubin:**

[35:06]    Yeah, that's fair. Also, Uniswap, I think, is controversial—I know Jim wanted to say something. Controversial because they had the company-level fee skim, and then I think they've turned the on-chain fee on. I don't know that they've turned the company fee off. I haven't read that in detail.

**Bob Summerwill:**


[35:23]    I believe so, because one of the replies was saying, okay, so how are your shareholders going to like that?

**Kieren James-Lubin:**

[35:28]    Yeah, okay, fair enough. Well, hopefully they hold a bunch of the UNI and it will mark the market.

**Bob Summerwill:**


[35:33]    They're doing a bunch of burn, so that should be to the benefit of all stakeholders. But yeah, just sort of this interesting kind of contrast, right, between completely immutable, you know, force of nature smart contracts versus, you know, more permission, more tied to a company, more, sort of, like, wanting to have fees for maintenance kind of question.


[35:52]    I mean, it's like treasuries, I guess.

**Christoph Jentzsch:**

[35:54]    But this opens up the questions: How should the Ethereum app be built economically? And this is also a question being answered during that time. The DAO was one approach: it should be fully on-chain. All the revenue should be on-chain. There should be no for-profit entity directly attached to it. And Slock.it, the company I built after that, would be a service provider for them, getting paid by them for work being done for the DAO—one version.

[36:22]    I was always skeptical and still am about companies where you have effectively two cap tables. Meaning, you have a token cap table if you want—of course, it's a utility token, governance token, and so on—but effectively it's kind of ownership in the protocol. And then you have a for-profit company with shareholders.

[36:43]    And this is always, I think, very dangerous because you don't know where to go into. Where's the value? On the shares of the company or on the token? This was the main reason all those companies had those nonprofit foundations in Switzerland. Rightfully so, because they said, you only want to have one cap table, like the Ethereum Foundation. There were no shareholders of Ethereum. There was a nonprofit foundation and a token.

[37:09]    The token, if you want to have a share in the economic success of the protocol, you would buy Ether. And so later on, there were many other token projects where they had a nonprofit foundation, so no shareholders, no second cap table. And then you would have only the token and all the value would be there.

[37:27]    And now with Uniswap you have this problem of having again shareholders and tokens, and I think that's dangerous and not a good idea, actually.

**Bob Summerwill:**


[37:37]    Yeah, yeah. So perhaps let's talk about Devcon, actually, just before we get to Devcon 1—so the launch.

**Christoph Jentzsch:**

[37:44]    Right.

**Bob Summerwill:**


[37:45]    So obviously, a lot of testing and coordination and this different series of proof of concepts. So I mean, how did you know it was good enough? Like, what was that testing flow and collaboration like?

**Christoph Jentzsch:**

[37:56]    There are many indicators: one being the Olympic testnet running smoothly for a while; other one was, say, the client having an audit which worked. And then they were saying, okay, now if Christoph doesn't find any failing tests for like three weeks or four weeks or something, we are ready. And this was the case. And so we said that we can set a launch date.

[38:18]    In the launch itself—it's also a bit typically Gavin or also Vitalik—nobody wanted to push a button, like nobody to just start the chain. So what was done was there was a script written which had as an input parameter the hash of the Olympic testnet at a certain block height. So everybody could, using this script plus the software—plus C++ or Go client, of course—

[38:43]    —having plus the hash, which was at that time in the future of the Olympic test, let’s start that chain. So there was no, at launch day, we were just viewing it. There was nothing to be done. It was like, everything was, all the information was out there. People were just simultaneously starting the blockchain.

[39:02]    And then over the peer-to-peer network—this was actually the more harder stuff—they found themselves on Reddit and others to share IP addresses, like "connect to my peer," "connect to my peer." And so then they started to come together and, of course, the longest chain was the valid one. So as soon as you found a peer which had their own chain, you’d say, yes, this is a longer one, you would stop and start mining on top of his chain, and so basically the canonical chain emerged from that within, I don't know, 30 minutes or one hour. And then we had the chain running, and this was

[39:31]    like a beauty to behold, to just see how this works out as intended—completely decentralized, nobody did anything. It's just—I was in the C++ Berlin office in Kreuzberg 37a with a nice office, and we just watched it.

[39:48]    And we were somewhere mining there with the laptop. And we were all excited as it started. I actually think two or three weeks after, or maybe four, we had the first little hard fork, meaning there was some smart contract doing something, and Geth and C++ had a different result.

[40:06]    It was, for me, almost the middle of the night at 10 PM or 11 PM. So I remember seeing this, looking for one hour or so, finding what’s the issue. Then I found it, wrote a test about it. Peter Szilágyi was right, Geth was wrong. So we gave it to Jeff. They fixed this. I think we said one hour, and after five hours, everything was done.

[40:29]    We basically called the miners, "please update your client." And then it was fine. So this was the early days, but it was a successful launch.

**Bob Summerwill:**


[40:39]    Nevertheless, did the Haskell clients sync at genesis? I do not know, Jim.

**James Hormuzdiar:**

[40:42]    No, we were able to sync at genesis time, for like a year or so we were syncing. But I remember like that week, Kieran and I were more interested in trying to get a miner in place. So that was what that week looked like for us.

**Kieren James-Lubin:**


[40:55]    Yeah, I was living in an apartment just south of Berkeley campus at this time. And Jim had taken me to Fry's to build a machine a few months prior, like a build machine. It had a good GPU in it.

**James Hormuzdiar:**

[41:04]    Yeah, Fry's is dead now.

**Kieren James-Lubin:**


[41:06]    RIP. So I was running a miner there, and we built a couple in Jim's garage. It got very hot in Jim's garage, which was, you know, those things were consuming a fair bit of power. Mine exploded after a few weeks. It was actually just the power supply. So I thought the whole machine was bricked, and Jim said, you know, I think everything but the power supply will be okay. And it was the case that everything but the power supply was okay, but then I stopped mining. And I think Jim would shut it.

**James Hormuzdiar:**

[41:36]    We didn't even bother to buy cases at that time.

**Kieren James-Lubin:**


[41:39]    Right. Yeah.

**James Hormuzdiar:**

[41:41]    You may have had a case. I had mine just sitting, wires out. UNKNOWN:

[41:44]    Yeah. Yeah. Indeed.

**Kieren James-Lubin:**


[41:48]    Sure. At that time, we were always, you know, sort of, at least at that time, short-handed people-wise. So it's catching up a little bit on the features, et cetera. But it ran perfectly well.

**Christoph Jentzsch:**

[41:57]    There were always new features coming. I remember, it was like we—one of the sweet memories during the pre-launch—sitting together with Gavin, Vitalik, Jeffrey, and me in one room at the C++ office, like the nice Gavin office. He had this 80s style thing. And we think, okay, what was wrong in our protocol? Then they discussed on the whiteboard changes. Then the first day, "Okay, Christoph, you write a test for this protocol change." Then, at the same time, we are coding it. "Okay, you're done creating a test, let's see if they all pass. If they all pass, it's like, done, new feature, the directly new release."

[42:31]    And so this was done with all the other clients, so they basically had to catch up. It was like information update of the yellow paper: here’s a new test, here’s like a little Etherpad description of what the new protocol looks like, and then please update your clients. But the yellow paper got me to a certain point.

**James Hormuzdiar:**


[42:53]    Sorry. The yellow paper always got me to a certain point, but it was always behind the other clients. So I would always find out that I was behind because I went in the morning and connected to the testnet and I was no longer connecting or I was getting some state mismatch or something.


[43:09]    And then I'd have to go and dig through, usually the C++ client. I think there was maybe one or two times where—I can't remember why. I think there was one or two things that went to Geth first, but usually it was C++. And I'd have to go digging through the newest code to find the changes and then bring them in. And then a few weeks later, I'd see it in the yellow paper.

**Bob Summerwill:**

[43:34]    Yeah. So unlike what you have now, where leading into a hard fork, you know, you've got all that discussion and spec'ing up front, and like, yeah, applying the code into the clients but only enabled for a testnet and going through that dance and then ready to go—yeah, I mean, at that point, as you say, it's kind of like done in those clients first and then back later.

**James Hormuzdiar:**


[43:57]    It looked like from where I was standing, it looked like there was a lot of competition between the different clients and the developers there. And I think they sort of, like, took pride in having the new thing in as fast as possible. And so that sort of led to an environment, maybe, where there was not as much discussion. It was like, I'm gonna throw it in and then I get the bragging rights.

**Christoph Jentzsch:**

[44:18]    There was always a fight between Geth and the C++ team about who's the best. And Gavin was having a big ego. And Jeff was more like, just give me the new spec, I just code it. But yeah, it was more or less this decision by the three of them. I was basically not playing a very major role. I was in the room and then writing a test for it. But they discussed it. After it was cleared, they just did it.

[44:41]    But it was pre-launch. After launch, of course, this was different.

**Bob Summerwill:**


[44:47]    Saying about having...


[44:48]    Sorry, go on, Jim.

**James Hormuzdiar:**

[44:50]    Oh, I was just going to say, like, I know, like, a lot of the changes were just, like, some change in the EVM or pricing or something. And so often it was, like, you know, I would, like, freak out in the morning when I wasn't working. But then like, by 11 o'clock or, you know, a.m., I had found, like, oh, I see, like, such and such opcode just doubled in price or something.

[45:16]    So I would just put that in. But the big one was RLPx, which is essentially a big SSL replacement. And that one was, like, freaking me out for a couple of weeks. I was, like, digging around, trying to find any information about that. Eventually, I had to reverse engineer—maybe that was the one that was in Geth first, I can't remember—but I had to sit there and reverse engineer. I had to run either C++ or Geth and then put lots of logging information in to see what in the world was happening and then print out all the stuff and then find the appropriate crypto libraries to mimic that.

[45:47]    What was the background on that and how it went in so quickly?

**Christoph Jentzsch:**


[45:51]    Like there was nothing in the yellow paper about that at all. And when that came in, it was just a shock to me. Just—do you know which time this came? Because I was focusing on the Ethereum Virtual Machine at the time. This was more like, okay, I know Gavin, I think, was Gavin doing some optimization? He was always thinking about the long term. So if something would be 10% more efficient, you have to do this, right? I think.

**Kieren James-Lubin:**

[46:18]    I remember, like, there was a devp2p/livep2p website that was released about that time—it still might have been after the giant change went in. So I also—we were working together regularly, you know, in the Bay Area at this time, and I think

[46:33]    Jim did, like, 96% of the changeover, but we had, at the time, like, separate processes. One was more like a client and more like a server. We merged them later. And yeah, it was like—so there was a big document describing how the DHT for peer discovery would go in, but then you needed, like, a way to identify the peers, maybe, and this system kind of gave them an identity with, like, a

[46:55]    —you know, in an SSL style. Basically, there was like a node cert in effect, and then you had to, like—there were session keys and, you know, this, that, and the other. It took a long time to implement that thing.

**Bob Summerwill:**


[47:13]    But yeah, I think—maybe, Bob, you would know that—I think this was—someone else wrote this big thing. This might have been Alex. Yeah, it was Alex did that.


[47:24]    So, saying about sort of documentation or whatever, there was a wiki, right? It was an Ethereum wiki and a number of things were documented only on the wiki. And I think these kind of wire protocol pieces were part of that.


[47:38]    But yeah, Alex Leverington was the first hire into that Berlin office. And he primarily—I mean, he worked on a few different C++ things, but the main thing he's known for is devp2p, which was that common underlying peer protocol. Though you already had libp2p, which is the transport for IPFS, that already existed at the time, so there was a bit of not-invented-here going on.


[48:03]    But yeah, he was there for Devcon Zero as well.

**Christoph Jentzsch:**

[48:08]    And he spoke, I remember Alex. I was not too much into the peer-to-peer side of the code base, I was more into the EVM and Solidity, smart contract side.

**Bob Summerwill:**


[48:15]    I'll tell you what, there was a bit of funny crossover with the later part of yours, was Alex Leverington worked with John Gerrits on a project called Airlock.

**Christoph Jentzsch:**

[48:29]    So remember that. I saw it later, like after we did our presentation and had the Slock.it and stuff going, they showed us videos of it earlier than us. So yes, they were actually timewise, they did this before we did, but I did not know about it at all. And so we did it more or less in parallel then and we just launched a bit quicker, like to go to the public with the project. It has been from their side, it was more like a little side project, it looked like a big company or intended to be...

**Bob Summerwill:**


[48:58]    Yeah, I remember this project. Yeah, so I think that was at the hackathon at the Bitcoin Expo in April 2014 that they did that. And Stefan actually did an interview with them, you can see that on YouTube. This is like talking about early Ethereum projects.


[49:15]    This is like over a year before the mainnet—it's like so far back, some of these. But yeah, some of that spec stuff was not in the yellow paper and it was just sort of floating around, and a long time before there was real consolidation of that full client spec. But you managed to do it anyway, Jim, you managed to build the client.

**James Hormuzdiar:**

[49:41]    It was a busy week. But it was just notable to me because, at least from what I was seeing, it went from zero to one overnight. I had never heard of it the night before, and then the next morning it was in the clients and working, and I couldn't connect to anything.

**Kieren James-Lubin:**


[49:58]    Which is normally the pattern, but yeah, just this one was like the biggest one-time change that I can recall either.

**Christoph Jentzsch:**

[50:04]    Yeah, yeah. Again, this was pre-launch days. Things had to move fast. There was a lot of pressure going around. It was messy. There was not much coordination between the clients, except for maybe some Skype groups.

[50:18]    And in the end, yes, Vitalik, Gavin, and Jeff just made decisions and executed as quick as they could. So this all changed after launch. Then things became a bit slowed down and people consolidated, and every change was a big thing, rightfully so. Yeah.

**Bob Summerwill:**


[50:38]    Yeah, so back on the timeline: so it was July 2015 that mainnet launched with the Frontier hard fork. And then, as you touched on, you had Ming—so Ming’s first official day was the first of August 2015.


[50:57]    At which point the foundation had been running on for a year or so and was close to out of money. Touching on your thinking it would only last for a certain amount of time, a year on, that raise, which I think was around $16 or perhaps $18 million, was nearly all gone.


[51:13]    So you have these quite hard decisions about what...

**Christoph Jentzsch:**

[51:19]    ...which part of this grand vision was going to be funded initially, right? And I remember talking to her at the time, she felt like, "I have to clean up the whole mess." Like the paperwork and everything was totally messy—working with lawyers, accountants, and so on, and cleaning up basically the foundation.

[51:42]    For me, I did expect it to last something like that, so for me it was clear they are not making any money. I didn't know, like, how big the reserve was in detail. I think it was like, I don't know, five percent, something in this range, like, how much ETH the foundation held at the time. There wasn't that much value either, price like 50 cents, one euro or something. So it was clear this would not last forever.

[52:07]    So I was thinking about going back to my PhD—or then I came across this idea about Slock.it and building a company. And Slock.it was the idea of—maybe similar to Airlock—smart contracts are essentially permission systems. Ninety percent of a smart contract is who's allowed to do what. In the case of the ERC-20, it's just who's allowed to send the token or setting an allowance. And in terms of the DAO, it's who can vote for what and making decisions and then money gets sent.

[52:38]    So what if we could put this permission system into IoT? And who's allowed to switch on, off, use, change, admin rights, whatever. You put this into a smart contract.

[52:50]    And I thought that Ether will never become a currency. Bitcoin was a digital currency. And actually, if you talk to Ethereum people at the time, we were not thinking about competing with Bitcoin. Bitcoin was a digital currency. We were building a platform for decentralized applications. Ether was just used to run it.

[53:05]    I once heard the statement somewhere on Twitter where everyone said, "Bitcoin is a currency which needs a blockchain to function, and Ethereum is a blockchain that needs a currency to function." This is—I think it's very true.

[53:21]    And so back, I thought, okay, Ethereum will not be used as a currency, but it might be used as a currency for IoT devices. So instead of the Internet of Things, building the Economy of Things.

[53:32]    And this is kind of what drove us. And then we wanted to build this Universal Sharing Network as an application. At the time, Uber and Airbnb just became big. We thought, well, all those sharing economy services should run on-chain. So let's build this, called the Universal Sharing Network.

[53:48]    And then we thought about how to start with something tangible. And then we had this door lock. Actually, it's here in the background. If you see it, it's there.

[53:57]    I have this Devcon 1 physical smart lock, which we connected to the Ethereum blockchain using our own software and had this idea of people pay to open the lock, and that's what we presented at Devcon 1, together with this idea, which actually only came up like three or four days earlier, to connect this with a DAO. And the rest, you know, history—what happened after that. But we didn't intend and we didn't start Slock.it for building a DAO; we wanted to build the Universal Sharing Network. Then we thought, well, this is way too big for us. We want to now focus on this Airbnb use case for door locks.

[54:31]    And then we thought about fundraising. We talked to a bunch of VCs. I actually remember flying to New York, talking to VCs there. Everybody said no. Then I met Joseph Lubin—he said, yes, maybe under some conditions. We just did not agree on the terms in detail then.

[54:49]    But I was presented at the Bitcoin meetup in New York, and they all—like, the first application was a Bitcoin application about arbitrage trading. It was like kind of boring. And then I came with a door lock. It was like super fascinating. You could open the door by paying some Ether.

[55:05]    So it went well, but we didn’t have any money. So we thought about doing something like an ICO, but this was now after the launch of Ethereum. So if I started coding an ICO-like smart contract, why should we have the money directly? It could stay in the contract, and then people could vote for giving us part of it.

[55:23]    So we said, well, we could make proposals to it, and then they can vote if the proposal is good or not good or not, then the money would be released to us. Then we think, why could not everybody make a proposal, like everybody could pay it, everybody can make a proposal, and so it's completely open and we are just one of many service providers to the DAO building this Universal Sharing Network, and this was the origin of the DAO. And only like, again, three days before Devcon 1, we actually decided we would go for it and put it into the presentation.

**Bob Summerwill:**


[56:06]    Yeah, amazing. I mean, so on the timeline, again, trying to judge it. So Stefan was, I guess, chief communications officer or community until September of 2015—that's when he left. Had you left already by then? Can you remember?

**Christoph Jentzsch:**

[56:20]    No, I didn’t really leave, because I was technically a freelancer, although I was working full time for it. I didn’t have, like, a formal employment contract. So I was continuing to work, I think, until the end of the year. And then I just talked, well, did you just put down my hours? Basically, if you need me, tell me. I just invoice what I'm doing. But I was really leaving, actually, in December, January. I think the last invoice was for December.

[56:44]    And when Stefan Tual left, or was being left, that's another conversation how he left the foundation. He didn’t agree with some people getting Ether, which is another story for another day, I guess. But he was really a crucial part in building up this Ethereum community. Like all this meetup culture. The meetup culture didn’t really exist like that before. He was going from place to place, finding someone running meetups. So he was very important for that.

[57:12]    And I know I was a coder. I processed Simon, who I co-founded Slock.it with; he was also a coder. We needed someone who can talk to the people, can do marketing and this stuff. And we said, well, he has the right address book. He knows the right people. Everybody knows him in the community. I think let's ask him if he wants to join us. And he did. And I think he was a very important part of making the DAO what it was.

[57:36]    Later on, he did some messages, which I also didn't like. And so he was a bit in disgrace for what happened then. And I think the community was very, very hard with him because he was not always reacting maybe as he should in some situations after the hack. But nevertheless, he played a very important part in the history of Ethereum and also, of course, of the DAO.

**Bob Summerwill:**


[58:02]    And so Devcon was November 2015, so that was announced earlier in the year, I think—I think September-ish—but ended up being cancelled, you know, because the foundation were basically, you know, this same running-out-of-money piece.


[58:19]    But then, primarily with ConsenSys funding and support, you know, hey it's back on. So that was in London and, you know, significantly larger event, obviously, than the Devcon Zero because it was the first, you know, public Ethereum outing with Microsoft as a headline sponsor.


[58:39]    You had Nick Szabo speaking as well—maybe Satoshi, maybe not Satoshi. I don't think he said that.

**Kieren James-Lubin:**

[58:54]    He strongly alluded to it in the presentation. It was funny.

**Bob Summerwill:**


[58:56]    So yeah, how was that for you then, Christoph? What was, you know...

**Christoph Jentzsch:**

[59:00]    It was totally different than Devcon Zero because this felt like now we're going out in the world and showing it to the public. It was a fancy space in London. It was a really fancy, almost cathedral-looking space, 2%, again.

[59:15]    We had Vitalik and Gavin talking about the vision of Ethereum. And if you look at the talks being given— I really think entrepreneurs today should just re-watch them because they all have been ten years too early. Be it about uPort building identity solutions—I think it was Boardroom doing that governance on chain, many, many ConsenSys startups of course—we as Slock.it, thinking about, well, let's connect IoT to blockchain. Again, all of that, ten years too early.

[59:47]    I remember also Simon speaking about—not my brother, I forgot his last name—but Simon speaking about everybody getting a token. He really predicted this token economy would now thrive, which happened.

[59:59]    So it was a great place to be. Everybody was looking into the future, building the future. It was very, very exciting. It was very important that ConsenSys was funding this. It was crucial, this Devcon 1 moment: showing Ethereum is live now. We show you what we will build with it. But still, there were no applications running. It was all visions and thinking.

[01:00:22] And so there's one reason why when we then did the DAO, the DAO was held like almost the first real thing you could do with Ethereum. That's why so many people jumped onto it. And then maybe just finishing this off, the narrative changed. It was not anymore a DAO for the Universal Sharing Network, but maybe because of the curators we chose, which were like important figures in the Ethereum space and many other things, it turned into like an investment fund or like an index fund for Ethereum applications.

[01:00:55] Because now after 20, 30, 40 million was in, it was clear this was not just money for Slock.it and the USN. This was money for more cases, and more people applied for it. It became like, every Decentralized application or many of them—not everyone—saying: "I'm applying for getting funding from the DAO," so the DAO would fund all the applications.

[01:01:17] So it's like, you invested in Bitcoin ten years, five years ago, became rich, now you invest into Ether, went well, and now you can invest in the application layer. You do that through putting money into the DAO. This was not a story we told, not how we intended it, but that's how the narrative changed during the fundraising and then became that big.

**Bob Summerwill:**

[01:01:42] Yeah, I mean, it was interesting you saying that you did, but I cannot hear you.

**Christoph Jentzsch:**

[01:01:45] Maybe it's—maybe it's just me. Can you hear me? I mean, I am sorry. I have an issue here with my...

**Bob Summerwill:**

[01:01:50] Do you—do?

**Christoph Jentzsch:**

[01:01:51] This is me. So now I'm back.

**Bob Summerwill:**

[01:01:53] Can you hear me? Can you hear me, Christoph?

**Christoph Jentzsch:**

[01:01:55] No, I have to switch back to—let's—can you hear me now?

[01:01:57] Yeah, I can hear you. I could always hear you for some reason.

**Bob Summerwill:**

[01:02:00] Oh, we've heard you anymore. This was like me an hour ago, by the way, Streamyard.

**Christoph Jentzsch:**

[01:02:04] Okay, my audio is completely broken, so I will try to fix this. We can continue.

**James Hormuzdiar:**

[01:02:09] I basically had to close it and come back again with my earphones, but I don't know.

**Bob Summerwill:**

[01:02:12] Perhaps while we're waiting, Kieran and Jim, you could talk a little bit about the Strato launch.

**James Hormuzdiar:**

[01:02:17] I thought you were going to say you could sing a little song. I got nervous for a second there.

**Kieren James-Lubin:**

[01:02:20] You know, okay, so in this period of time, we were just—reconnect.

**Christoph Jentzsch:**

[01:02:22] Just turn off and on again.

**Kieren James-Lubin:**

[01:02:24] We were working as part of ConsenSys, and one of the kind of marketing/business development people at the time, Andrew Keys primarily, had put together a partnership with Microsoft. I don't know if they ended up co-sponsoring Devcon 1 per se, but their headline—yeah, they put money in for that because they also, like, paid for a bunch of PR and all those sort of things too.

[01:02:48] And so we had maybe a month or two lead time to work with them, and so the idea was that we've got cloud infrastructure, it's a good place to run blockchain nodes. They also have corporate clients that were actually very interested in the technology.

[01:03:07] And so we worked with—pretty closely with them in the run-up to make our software available on the Azure Cloud, as did Roman of the Java client, which to some extent was everyone's preference because people know Java in the enterprise world.

[01:03:23] But I think they—we sort of stuck with it quite a bit longer than Roman did. And, you know, so Blockchain as a Service was the big announcement, was this December 2015—no, it was November. Was it November? It must have been December. Really November?

[01:03:38] There was a—once the announcement happened, there's a little tick in the Microsoft stock price, which we were like, whoa, like there's a little bump there. And a lot of excitement, for sure. Got a million phone calls after that. That was like a good feeling of being the hotness—that only happens so many times in someone's life.

[01:03:55] But tremendous interest on the back of the Blockchain as a Service announcement. We did a live demo. It was fun. The internet—it's in vogue to make fun of the UK these days on X, etc.—the internet in the conference facility was not so good.

[01:04:15] So I was very worried about the transactions actually going through. But they did during the live demo. I think there's footage of it somewhere.

**Bob Summerwill:**

[01:04:21] Can you hear us again now, Christoph?

**Christoph Jentzsch:**

[01:04:23] Yes, I can hear you. I hope you can hear me too.

**Bob Summerwill:**

[01:04:26] Okay. So the demo that you did at Devcon 1, again another iconic event, because yeah, you—you have that physical smart lock just sitting there on your on your shelf, and, you know, it rotates it, right, you know? Right, you did your transaction.

**Christoph Jentzsch:**

[01:04:41] We just had a Raspberry Pi connected via—I think it was Zigbee or Z-Wave back then—to the door lock. And on the Raspberry Pi, we had actually an Ethereum client running.

[01:04:52] And we had a smart contract on-chain where you could send some money to it, or Ether actually, and when it received some Ether, it would open up. This was basically the demo. But it was cool to see something physical, you know, using Ethereum for, as I said before, the economy of things, connected to IoT devices. Since most of the people in the room were still nerds and devs, they loved that kind of stuff.

**Bob Summerwill:**

[01:05:16] And there was also the kettle, wasn’t there?

**Christoph Jentzsch:**

[01:05:19] Yes, there was also a kettle. Maybe just turned a smart plug, like a power plug. We could also turn it on and off—same protocol, same thing. So we just wanted to show it's not just the door lock company, because actually we're not producing those; we're just connecting existing door locks to it. We wanted to show this idea of the Universal Sharing Network. Everything which you can turn on/off or lock up and unlock could be now connected to this network.

[01:05:48] And everybody could put almost everything in there, like a washing machine—you pay for using the washing machine—or a bicycle lock. We even had padlocks connected to it, so you could have like your locker room and you have a padlock in front of it and sell whatever's in there by having someone pay to open the padlock. This was the generic idea. I mean, we got some VC money later after the—like in 2017.

[01:06:12] We built it. Nobody used it. Not just too early. It was like everything for everyone all at once. And of course, nothing for no one. It felt like the app was not great, so we failed B2C-wise.

[01:06:26] At Slock.it, we then turned into more consulting projects. We built Incube, which was an IoT client. Made some money with that. Had about 50 people actually employed at the time.

[01:06:40] In 2019, we sold the company to Blockchains Inc., Jeffrey Berns. Another story.

**Bob Summerwill:**

[01:06:46] So I remember speaking to Stefan at the time. So Stefan was involved with that demo, right? It was Stefan who came up on stage to make his little cup of tea with the kettle there. But I remember speaking to him, that he'd been concerned about what the reception for him would be like, you know, having had this passing of ways with the foundation just two months before.

[01:07:04] But he was saying it was all very—it was all very friendly and people, you know, very excited about the project.

**Christoph Jentzsch:**

[01:07:10] Right.

**Bob Summerwill:**

[01:07:11] And saying actually about that IoT and pieces—so in January 2015, you had a demo that happened at the Consumer Electronics Show, CES, in Vegas, which was a collaboration between IBM and Samsung. So the aforementioned Henning Diedrich part of that. And that,

[01:07:28] again, was months before mainnet but you had a proto-Web3 stack there, which was, I think, POC 5 of Ethereum. You didn't have Whisper, you had another thing called Telehash, and you didn't have—you had BitTorrent. So there was this proto-Web3 stack there, and they had demos like a washing machine,

[01:07:46] buying its own detergent and scheduling its own repair. So yeah, that was happening a little earlier and, yes, I mean....

**Christoph Jentzsch:**

[01:07:53] Slock.it itself did a number of these different products, right? There was something with electrical charging and something to do with toll roads, is that right?

[01:08:01] Right, we had a prototype running with RWE or Innogy in Germany, they’re doing like at that time, most of the charging stations. So this was in general—we got a lot of attention, of course, also after the DAO hack and all of that. And so that’s kind of why we became a consulting company, because so many asked us, could we do a prototype with you? Because there were not many Ethereum builders at the time.

[01:08:28] So we had been building on Ethereum now since one year or two years, which you could not find anybody doing this. So we were building lots of nice prototypes and some almost production stuff and always related to IoT devices connected to the blockchain. This was our core business.

[01:08:47] And on top of this, we built those prototypes. We did a lot of work for the Energy Web Foundation. I don't know if you're familiar with them. This was in Switzerland. They are kind of a fork of Ethereum focusing on all the energy use cases. We built most of their stuff in 2018, beginning of 2019,

[01:09:06] until they hired their own developers. And Gavin was also part of this for a while. So, yes, this was still—I mean, if you remember this time, Kieran, you say there was so much enterprise interest. Enterprise at the time were just learning, looking into this, wanted to build prototypes, not yet production stuff.

[01:09:27] So, and there was a huge demand for it—for blockchain experts for doing consulting, for going to conferences, explain to them what a blockchain is. At every tech conference, you need some blockchain talk, and this was kept, basically, mostly us. And they paid sometimes like 4,000 euro for a talk.

[01:09:48] As a company, we said, well, we need the money, let's go there.

[01:09:52] Of course, you also have to think about us as persons. Simon and I, we didn't get any money for almost a year. Like, we worked for—we were not rich people, we came from ordinary families, and we said, well, we can work for like three to four months without a salary, let's, like, build the DAO, and then when the DAO becomes big, the DAO is paying Slock.it to build it. And, of course, after the hack, it was clear there will never ever be a payment.

[01:10:16] So we made zero money out of the DAO.

[01:10:18] So we needed to start doing some work.

[01:10:20] And this was, in the beginning, let's do consulting for those large companies. This is how Slock.it began to survive.

[01:10:27] Many people said, you can bury Slock.it after what happened. Your name is burned forever. And we decided to stay as a team. I mean, as a founder team, we own our mistakes. Maybe we are open and transparent about it as much as we could. It was, of course, an honest mistake. We can talk for—it could be another session just for the DAO. I mean, the DAO is a lot of topics. I'll just put here very shortly, just talking about it from a company perspective.

[01:10:56] And then Stefan, he was saying, well, he was trying to get VC money. Simon and I, we were doing those consulting gigs. And once we had VC money, what happened as a company was we got 2 million euros—dollars—and then we built the product, hired people for that, got more and more consulting gigs. So we always said, well, let's do them and just hire more people. And in the end, we had like 50 people, 5 or 10 doing the product, and 40 people doing consulting.

[01:11:25] And then we got bought by Jeff Berns from Blockchains Inc. Remember, maybe at Devcon 3, I think—

[01:11:32] Four.

[01:11:33] Four in Prague, right?

[01:11:35] Wanted to build a city. I think I love the vision. He obviously had money. He wanted to build it on top of Ethereum mainnet. I was thinking about how maybe I can channel those billions into the right direction, building is all as intended on Ethereum mainnet, which was working fine for the beginning, and then

[01:11:53] I found out once you're an entrepreneur, you never can be an employee again. And so I had to leave. But maybe, actually, it's too far in the future.

[01:12:00] I mean, that's one thing I think I have to say here, because you talked about Devcon 1 and we skipped a little bit Devcon 2. You said in Devcon 1, Stefan Tual was very concerned how people perceived him and they were very gentle, forgiving, and nice to him. So he was well-received and then he built the DAO community.

[01:12:18] I was super worried to go to Devcon 2 because this was after the DAO hack. I was like seriously thinking someone might beat me up there. I went to the corner and I almost destroyed Ethereum with the spark and so much attention to it and all the money lost for some people or the time of growth gone—it depends on how you view it.

[01:12:46] So, but when I went to Devcon 2, people were so nice, forgiving, basically hugging me when I was giving the talk there. And the only thing I didn't like was the foundation telling me I was not allowed to speak about the DAO, which was like, I am speaking here to the Ethereum community—well, how can I not speak about the DAO?

[01:13:08] And so I talked about a pretty boring talk about security. And I think every second talk was about security at Devcon 2. It was just about how we get those smart contracts secure. So I gave a rather boring talk. But in the end, I just said, well, thank you for your understanding. And it was a hard time and so on. And there was like—someone had a standing ovation, I remember becoming emotional, because this was—I did not expect this. I really expected, like, "Guy, you messed up Ethereum, like, we almost lost it all."

[01:13:39] So, I think, this just speaks to the Ethereum community: how they treated Stefan, how they treated me, even though mistakes were made—honest mistakes, at least from what I can tell. So, this is such a great community of really nice people who really want to change the world, capable and also now financially capable of really doing things.

**Bob Summerwill:**

[01:13:59] I was watching that video quite recently, actually. And, yeah, it was quite—cut off a little bit in the end.

[01:14:06] You know, it was quite a long ovation there. And, yeah, you could certainly see that emotion in you. And that's when we first met, actually, was in Shanghai for Devcon 2, I remember. Was on the sidelines there in that main conference hall. And yeah, it was lovely to see that. That's for sure. Okay.

**Kieren James-Lubin:**

[01:14:20] Yeah, I think good notes, just Bob—you were the one who tried to impose the hour to half hour to hour rule. We're at a solid 120 right here. Maybe with me, you know, we've reached a— you know, a good kind of end point, I guess. So what happened after Blockchains LLC for you then?

**Christoph Jentzsch:**

[01:14:36] So because of time, I keep it short. So yes, we got bought by Jeffrey Berns, Blockchains LLC at the time. Again, the reason for this being, he wanted to build a new city in the desert. He wanted to do all on IoT, all on Ethereum, from scratch—as a developer dream, building from scratch on a greenfield on top of Ethereum with our tech.

[01:15:02] And I felt comfortable at the beginning; in the end, I felt like we need to release stuff and there were some voices of the company which didn't want to release until, like, a very, very big product was done. For many reasons, that didn't happen. I don't want to get into that too much. So, after two years I left blockchains—back then it was called Inc.; they may have changed their name.

[01:15:23] And I did, for six months, I did really nothing. I forced myself to do nothing, which was great after so many stressful years. And then I started a venture studio called Corpus Ventures, where we tried out many different ideas. We had EM3, which was a decentralized messaging protocol, GasHawk—you can save transaction costs on Ethereum.

[01:15:47] What else did we have? Some domain name stuff, but we didn't release it at the end. But the biggest one was Tokenize It, and this was—we built something for German—for now, German startups. In the end, we want to do it all over Europe. We're just tokenizing their shares and do fundraising.

[01:16:10] So, in summary, it's like a Web3-based AngelList for Europe. It's the one-sentence description for Americans also to understand. AngelList—it's a great tool for business angel investing. We want to do the same for Europe, for all countries there, and build it on-chain. So, tokenizing all those shares and enable private as well as public fundraising. Some call it legal ICOs, if you want, but also for private fundraising.

[01:16:38] Our customers currently—you have more than—maybe a good way to end this. You have now more than 400 investments from more than 320 business angels and more than 50 companies. Those are traditional German GmbHs raising from super conservative business angels, doing it completely on-chain. They are paying in stablecoins, getting their tokenized shares in their non-custodial wallet.

[01:17:08] They're all getting a Gnosis Safe wallet from us, using Privy for login. So, we build it as intended, and we get normal people to use it. For me, this is kind of a dream come true, because I'm out of, I love the Web3 bubble, I love this community, I love to work inside there.

[01:17:30] But for me, Tokenize It is a way to make this technology available where it belongs—like to startups and investors outside of our Web3 bubble. And I'm super, super happy that I could keep up those values that they have. The complete platform is non-custodial. They have their safe on Ethereum holding their tokens, paying stablecoins. So I'm very happy to see this.

[01:17:55] Over the next years, we want to basically roll out this all over Europe and become, yes, the Web3-based AngelList for Europe. That's the goal.

**Bob Summerwill:**

[01:18:05] Fantastic. So hope to see you at Devcon 8.

**Christoph Jentzsch:**

[01:18:08] Me too. I'm looking forward to it. As of now, I don't intend any change. Stick to Ethereum. I love the community. I continue building and try to get a lot of people using it.

**Bob Summerwill:**

[01:18:20] Have you been to every Devcon?

**Christoph Jentzsch:**

[01:18:22] Yes. Yes, I have. I've been to every Devcon. The last one was actually the first one that I didn’t give a talk. And I also went to every EthCC except for one—that was COVID, there was some reason I couldn't come. But yes, I intend to continue to come to every Devcon. It's like, you meet the people like Griff Green, Lefteris,

[01:18:46] of course, Vitalik, and many others. It's just a sweet spirit there. Nice community. Love seeing how it all grows. Listen to those exciting talks.

[01:18:57] I mean, for Tokenize It, it's not as relevant. It's not like our customers or the tech, of course—we're just doing an ERC-20 token on Ethereum. It's super easy. It's no deep tech. Sometimes I miss doing deep tech, but, well, I just enjoy being there, seeing what all happened, and remembering those magic days.

[01:19:19] And it's like only once in a lifetime, or two times in a lifetime, you have this moment where everything comes together: the right time, the right place, the right people. This certainly—where those one and a half years I worked for Ethereum—are definitely the prime of my career in terms of who I worked with, what we accomplished, the impact we had on the world, and the sweet cypherpunk spirit there, and what we did there. It was really great. I always sometimes get emotional thinking about this and meeting those people again at Devcon.

**Bob Summerwill:**

[01:19:48] Fantastic. Well, thank you for all your contributions to that success.

**Christoph Jentzsch:**

[01:19:52] Likewise.

**Bob Summerwill:**

[01:19:53] All the best. Okay. Oh, just one more—where can we find you?

**Christoph Jentzsch:**

[01:19:57] You can find me usually on Twitter for the Ethereum people, C-H-R-Y-E-N-G. Of course, I have a complicated name, not many vowels in there, but you'll find it. Or, of course, on LinkedIn. Actually, for my company, I'm more active on LinkedIn, which I was never before, but that's where we get our clients and Tokenize It. Yeah, but usually you can find me on Twitter or follow me there, or on LinkedIn.

**Bob Summerwill:**

[01:20:18] Excellent. Okay. Thanks so much. Have a great day. Thank you.

**Christoph Jentzsch:**

[01:20:21] You too. It was great talking to you. Bye.

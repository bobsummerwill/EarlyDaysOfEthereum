---
title: "Early Days of Ethereum - Episode 7 - Jacob Czepluch"
date: 2025-12-03
show: true
guests: ["Jacob Czepluch"]
hosts: ["Bob Summerwill"]
description: "Jacob was an intern at ETHDEV in late 2015, so was a fly-on-the-wall in the Berlin office as the C++ team was defunded.  He had earlier founded the Copenhagen Ethereum Meeup"
img: /images/covers-for-conversations/episode007-jacob-czepluch.png
---

## Audio

<audio controls style="width: 100%; max-width: 600px;">
  <source src="/assets/audio/episode007-jacob-czepluch.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>


**[00:01] Bob:** So, hello.

**[00:02] Jacob:** Hello, Bob.

**[00:03] Bob:** So, yes, I'm Bob Summerwill, recording here at Dark Prague for Early Days of Ethereum. And I have here Jacob. Good enough?

**[00:14] Jacob:** Good enough, yes. There you go.

**[00:15] Bob:** So, yeah, we've known each other about three years or so now, I think. We did meet in Bogota for DevCon 6 for the first time where you introduced yourself. I was not aware of your background and role, but yeah, specifically you were an intern at EthDev in Berlin in late 2015 and you also attended DevCon 1. So how did you come to be involved with Ethereum at that time?

**[00:55] Jacob:** Oh, yeah, thank you for the intro and good question. It was in Bogota. I think I knew about you or of you for longer than since then. But yeah, I think you were chatting with someone and talking about Florian Glatz, maybe, and talking about the old days. And I just jumped in because I know Florian and found out that we have a shared interest in the old days of Ethereum. And yeah, I did my internship working on the Python client back starting September or August 2015.

**[01:31] Bob:** I think it was like maybe August to December.

**[01:33] Jacob:** Yeah, it was August to December. It was a couple of weeks after Mainnet launched. And the first week I was there was when there was like the first big fork where the Go client forked from the C++ and Python client.

**[01:48] Bob:** There was a chain split on Mainnet.

**[01:50] Jacob:** Yes. And it happened, I think the second day I was there and that was the same day that there was a meetup planned in the office.

**[01:58] Bob:** Right.

**[02:00] Jacob:** So everything was extremely chaotic and people arrived at the office for the meetup and nothing happened for a good amount of time. And eventually I was just sitting there in the corner working and I was like, no, we can't do this because there's so many people who are just like, looking. Some started leaving. So I kind of ad hoc jumped in and gave a presentation on Ethereum back then that I had given a couple of weeks before back in Copenhagen.

**[02:26] Bob:** Prior to your internship?

**[02:28] Jacob:** Yeah, I gave the presentation prior to my internship because I started a Copenhagen Ethereum meetup group.

**[02:33] Bob:** Oh, goodness. So when do you think that started?

**[02:36] Jacob:** I know exactly when it started. It started on the 14th of July 2015.

**[02:40] Bob:** Right, right.

**[02:42] Jacob:** And the reason I got into Ethereum, I was studying computer science.

**[02:46] Bob:** Okay.

**[02:46] Jacob:** And I knew about Bitcoin and thought it would be interesting to write my bachelor thesis on Bitcoin.

**[02:52] Bob:** So this was an internship while you were still doing an undergraduate?

**[02:55] Jacob:** No, it was actually an internship that I got because I wrote my bachelor thesis on Ethereum in the spring of 2015.

**[03:02] Bob:** So you had graduated.

**[03:03] Jacob:** Yeah, but just a bachelor. And because the Ethereum ecosystem, to speak, was so small back then.

**[03:10] Bob:** Right, right.

**[03:12] Jacob:** We were in contact with the Ethereum Foundation during the internship. I think I opened my first issue in March 2015.

**[03:24] Bob:** Right.

**[03:24] Jacob:** To like the C++ client or something like that. Okay. So yeah, I actually, I think the, I've known of Ethereum since end of 2014. But anyway, just, yeah, yeah, we wrote this bachelor thesis, me and two of my friends, and we shared it with the foundation and then we got offered internships and I was the only one. I was tired of studying already, only after a bachelor and the other two guys wanted to continue. So I was like, okay, I'm going to do this. And a couple of weeks later I moved to Berlin to do my internship working on the Python client.

**[04:01] Bob:** Right, right.

**[04:03] Jacob:** And yeah, that was a very interesting time. Thinking back now, I'm sad I didn't write down more things or take more pictures or appreciate some of the things a little bit more, but I also had no idea that things would get as big as they are now. But yeah, I enjoyed it a lot.

**[04:23] Bob:** So, I mean, it was primarily C++ development under Gav that was happening in that office. Right. But also Felix Lange, I know, was there on the Geth.

**[04:33] Jacob:** Yeah.

**[04:33] Bob:** And then some different people and then.

**[04:34] Jacob:** Some Python, Simon de la Rouviere, I think he was doing Go stuff. And yeah, the Solidity team was also there.

**[04:43] Bob:** I think they were under the C++. That's right. Back then.

**[04:46] Jacob:** But they were.

**[04:46] Bob:** And Remix as well. Well, Mix. Sorry. At the time.

**[04:49] Jacob:** Yeah. Yeah. And I also remember the Mist, I guess at least Fabian Vogelsteller was also around. So there was a good amount of different.

**[04:58] Bob:** Yeah.

**[04:59] Jacob:** People around. And also quite often people would come and visit from other places. I remember a couple of times Christoph Jentzsch came to visit.

**[05:10] Bob:** Yeah.

**[05:10] Jacob:** There was one time where I think he arrived at midnight or something like that and there was no one else at the office.

**[05:16] Bob:** Yeah.

**[05:16] Jacob:** I was doing my internship and I think he wrote like late afternoon. He wrote on the Skype channel if there would be someone around that he was a little bit delayed or whatever.

**[05:24] Bob:** Right, right.

**[05:25] Jacob:** So I was just like, oh, it's fine. I have. I had nothing to do in Berlin anyway. I had like the smallest room, just like a small room with a bed, nothing else, basically.

**[05:34] Bob:** Yeah.

**[05:35] Jacob:** So I enjoyed spending a lot of time in the office and I actually had like. I would usually just stay in the office.

**[05:42] Bob:** Yeah.

**[05:42] Jacob:** And then just go home and sleep because the office was quite nice.

**[05:45] Bob:** Right, right.

**[05:46] Jacob:** So, yeah. I had one night where I think I left, let him into the office at midnight and we had a little bit of a chat. I got to know him, he told me about all the testing he was doing and how they were testing. It was quite interesting.

**[06:02] Bob:** And that's cross-client testing as well, wasn't it? Right, yeah.

**[06:05] Jacob:** If I remember correctly, he was building a lot of just JSON data that they fed to the client and that.

**[06:11] Bob:** Was from the C++ client. I know that cpp-ethereum was leading and the tests were generated from that, but then running those against the Python and Geth clients.

**[06:23] Jacob:** Yeah, that sounds about right. But there are a lot of small stories you told me. We don't have too much time, I'll try to keep it short. But I would say if I think back to the most interesting things that happened, it was of course being lucky enough to participate at DevCon 1.

**[06:44] Bob:** Right, yeah.

**[06:45] Jacob:** And also experience the kind of split that was taking place at this point in time because the foundation, I think almost ran out of money.

**[06:59] Bob:** Yeah, that's right.

**[07:00] Jacob:** The C++ team was kind of cut off and you also, so you also had, you know, Ming Chan, her first official date was 1st of August of 2015.

**[07:02] Bob:** So yeah, you basically had those kind of cost cutting measures coming in quite fast of looking at the spend where you know, it had been going for a year. It was the July of the previous year that the foundation had been formed and you had the crowdsale but like nearly all of the money was gone in that year.

**[07:31] Jacob:** I think that was also maybe not the most responsible like usage of money, but also the Bitcoin price was doing really poorly.

**[07:39] Bob:** Yeah, that's right.

**[07:40] Jacob:** The Ether price itself. Yeah, I think it dipped below the presale price at some point and it's right, September, a year.

**[07:48] Bob:** In and you've had no accumulation.

**[07:50] Jacob:** Yeah, but yeah, I didn't have any interactions with Ming back then, so maybe. Actually one thing I just remembered now, I was actually supposed to have done my internship on the C++ team in London, but.

**[08:05] Bob:** Oh yeah, right.

**[08:06] Jacob:** Yeah, a couple of weeks before that I was, sorry, we can't do it anyway because like we don't have the money anymore.

**[08:12] Bob:** Right. Well, because they were getting very rapidly the funding or even shut down entirely, I think.

**[08:18] Jacob:** Yeah, probably already all that was coming. Yeah, so that's why it ended up being the Python team instead because there was some budget. But yeah, like sitting as the only person working on the Python client in that office in my small corner. I had a lot of fun kind of following how people came and went and went into Gavin's office and had a chat there with him and Jutta or whatever. And I didn't really know in the beginning what was going on until I was also asked if I wanted to come in and talk and it was basically presenting ideas of what would happen next with the C++ team and if I wanted to consider joining there or whatever.

**[09:06] Bob:** Yeah, so that was sort of the pre, pre-formation of what became Ethcore, later Parity.

**[09:17] Jacob:** Yeah, I think so that. So I was witnessing that without knowing what was going on. I had no insight into like the finances of the, or anything like that. I only found out about most of those things later. But so yeah, interesting to hear.

**[09:35] Bob:** Yeah. So I mean maybe let's talk about DevCon 1. So you'd have. So the first DevCon was DevCon 0, which happened in November 2014 before your time, which was the closed, you know, closed event. Mainly Ethereum Foundation people, but some broader ecosystem people. But then DevCon 1 had happened in November 2015 in London. It had got announced earlier in the year and got cancelled because of this funding squeeze. But then ConsenSys basically stepped up and filled that funding gap and did some organizing. So that was in November of that year. I was not present myself. I couldn't afford to go or whatever at the time, but I watched a lot of the livestream. But that was a really very seminal conference. So how was that?

**[10:35] Jacob:** For me it was amazing. I've never been good at sitting still on a chair for a long period of time, but there I was at every talk from the beginning, in the morning until the end. I think I missed one talk because I had to go catch my flight to go back on the last day, but it was, I was just sitting there and sucking up all of these ideas and visions and it was really, I think before that I had an idea that I thought it would be interesting to continue working with Ethereum or in the Ethereum space. But after DevCon 1, I was like, I have to do this. Like there's no other way for me. I'm not going back to the university, I'm not going to do anything else. This is what I'm going to do. Because it was a full day or three full days of just sitting there and people presenting their ideas. I remember clearly, like there was like Maker was presented, like, I was like, okay, like stablecoins. Like it was amazing. I think Fabian Vogelsteller and Alex Van de Sande and some other people presented the ERC-20 token standard, or the early version of it, which. Yeah, okay. This has also. This is such a big part of Ethereum now. I think maybe Gnosis. I'm not sure, actually. And of course, the project I was working on, the people there, like, we were presenting the Raiden Network, which got a lot of very good feedback as well.

**[11:58] Bob:** So it was HydraChain as well, right?

**[12:01] Jacob:** Yeah. I was not so sold on HydraChain back then because it was aimed at.

**[12:08] Bob:** One of the very first permissioned Ethereum.

**[12:11] Jacob:** Exactly. It was like a round robin kind of algorithm. And now it seems like something people would actually have used these days. So only 10 years too early. But back to DevCon 1. I was just thinking about it after our conversation last night, that DevCon 1, it was just about the technology. I think maybe there were three booths or something like that, a couple of stickers. I barely remember. I just remember. Was it app. What was the name of the Haskell project? BlockApps?

**[12:44] Bob:** Strato.

**[12:45] Jacob:** Yeah. BlockApps. I remember they had like a small booth, I think.

**[12:48] Bob:** Right, right.

**[12:49] Jacob:** Some stickers.

**[12:50] Bob:** Yeah.

**[12:50] Jacob:** Very sad that I lost that sticker.

**[12:52] Bob:** Right.

**[12:52] Jacob:** But other than that, it was just like. Yeah, just people. There was one stage and everyone was like in the same room, more or less. And in the evenings, yeah, people would go out. Go out for dinner maybe, but there was not a single side event. There was not a single party.

**[13:08] Bob:** Glory days.

**[13:09] Jacob:** It was just dinners and a couple of shepherd's pie somewhere.

**[13:13] Bob:** Right.

**[13:15] Jacob:** And that was kind of fun. Like, you got to know people, like, really, really well. And, yeah, it was really just the golden days. I felt like there was, yeah, so many inspired people and ideas and people only talked about tech. I think there was like one a little bit weird product hype talk with a guy who had a T-shirt gun on the stage. This like Freemybunk, right? Like a very different energy than everybody. It felt like he was the only one who actually knew how to give a talk and how to actually sell and back. Yeah, I thought it was way too much, but now it's basically what everyone else is doing. And the quality of slides was so bad as well.

**[13:54] Bob:** It's right to look back.

**[13:57] Jacob:** But, yeah, I was thinking about that and then I was comparing with, let's say, DevCon 2.

**[14:00] Bob:** Right.

**[14:01] Jacob:** I think at DevCon 2, there was maybe like a couple of parties. I think ConsenSys had like a bar somewhere where we would usually go. It was still not that big. There was still only one stage, I think, at DevCon 2.

**[14:14] Bob:** So it was like there was just one main stage.

**[14:16] Jacob:** Yeah. Quite doable. And then I think at DevCon 3 in Cancun, that was where you could really feel okay, now there's a lot of money in this space because like there were parties right and left and yeah. Okay. The rest is history, right?

**[14:30] Bob:** That's right.

**[14:30] Jacob:** It's been quite crazy to see this development as well, of like measuring on the amount of events and parties at the different DevCons, how popular things got. But for me, the DevCon 1 is like one of my best memories of these 10 years, simply because it was just so inspiring and motivating, I would say. And a lot of the people you have on your list were around there, like.

**[15:00] Bob:** Yeah, it's.

**[15:01] Jacob:** It's quite cool. And I actually recently found out that someone I got to know, a couple of years ago only, who's also doing some cool stuff, he actually was around there. Like, we didn't meet each other. I didn't know him. I only found out like two years ago. But he had also. And he said he didn't see almost any talks because he was sitting in the back trying to get LES or the Geth client to run on his machine or something like that. Because it was not easy back then. No, it took days, even if you had the devs available right next to you.

**[15:35] Bob:** Absolutely.

**[15:36] Jacob:** It wasn't easy.

**[15:36] Bob:** No.

**[15:38] Jacob:** So, yeah, I think that's mainly what I have to like share without it going into too much detail about things, but.

**[15:46] Bob:** Well, thanks so much.

**[15:47] Jacob:** Yeah, you're very welcome.

**[15:49] Bob:** Great chatting, always.

**[15:50] Jacob:** Yeah.

**[15:51] Bob:** Okay. All the very best.

**[15:52] Jacob:** Thank you. You too.
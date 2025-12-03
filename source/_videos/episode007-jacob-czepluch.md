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


**SPEAKER_01:**
[00:00] So, hello. Hello, Bob. So, yes, I'm Bob Samuel, recording here at Dark Prague for Early Days of Ethereum. And I have here Jakub Ciepluch.
[00:12] Good enough. Good enough. Ciepluch. Yes, there you go.

[00:16] So, yeah, we've known each other about three years or so now. I think we did meet in Bogota for DevCon 6 for the first time, where you introduced yourself. I was not aware of your background and role, but...

[00:30] But yeah, specifically, you were an intern at Dev in Berlin in late 2015, and you also attended DevCon 1. So how did you come to be involved with Ethereum at that time?

**SPEAKER_00:**
[00:43] Oh, yeah. Thank you for the intro. And good question. It was in Bogota. I think I knew about you or of you for longer than since then. But yeah, I think you were chatting with someone and talking about the old days and I just jumped in because I know Florian and found out that we have a shared interest in the old days of Ethereum.

[01:05] And yeah, I did my internship working on the Python client back starting September or August 2015. I think it was like...

**SPEAKER_01:**
[01:15] Maybe August to December?

**SPEAKER_00:**
[01:17] Yeah, it was August to December. It was a couple of weeks after mainnet launched and the first week I was there was when there was like the first big fork where the Go client forked from the C++ and Python client.

**SPEAKER_01:**
[01:32] There was a chain split on mainnet?

**SPEAKER_00:**
[01:34] Yes. And it happened, I think, the second day I was there. And that was the same day that there was a meetup planned in the office.

[01:44] So everything was extremely chaotic and people arrived at the office for the meetup and nothing happened for a good amount of time. And eventually I was just sitting there in the corner working and I was like, no, we can't do this because there's so many people who are just like looking, some started leaving.

[02:03] So I kind of ad hoc jumped in and gave a presentation on Ethereum back then that I had given a couple weeks before back in Copenhagen.

**SPEAKER_01:**
[02:13] Prior to your internship?

**SPEAKER_00:**
[02:15] Yeah, I gave the presentation prior to my internship because I started a Copenhagen Ethereum meetup group.

**SPEAKER_01:**
[02:22] Oh, goodness. So when do you think that started?

**SPEAKER_00:**
[02:25] I know exactly when it started. It started on the 14th of July 2015.

**SPEAKER_01:**
[02:30] Right, right.

**SPEAKER_00:**
[02:31] And the reason I got into Ethereum was I was studying computer science.

**SPEAKER_01:**
[02:36] Okay.

**SPEAKER_00:**
[02:37] And I knew about Bitcoin and thought it would be interesting to write my bachelor thesis on Bitcoin.

**SPEAKER_01:**
[02:43] Okay. So this was an internship while you were still doing an undergraduate?

**SPEAKER_00:**
[02:47] No, it was actually an internship that I got because I wrote my bachelor thesis on Ethereum in the spring of 2015.

**SPEAKER_01:**
[02:55] I see. So you had graduated.

**SPEAKER_00:**
[02:57] Yeah, but just a bachelor.

**SPEAKER_01:**
[02:58] Right.

**SPEAKER_00:**
[02:59] And because the Ethereum ecosystem, so to speak, was so small back then. We were in contact with the Ethereum Foundation during the internship. I think I opened my first issue in March 2015 to the C++ client or something like that. I've known of Ethereum since the end of 2014.

[03:20] We wrote this bachelor thesis, me and two of my friends, and we shared it with the foundation, and then we got offered internships.

[03:30] And I was the only one, I was tired of studying already, only after a bachelor, and the other two guys wanted to continue, so I was like, okay, I'm going to do this. And a couple of weeks later, I moved to Berlin to do my internship working on the Python client.

**SPEAKER_01:**
[03:47] Right, right.

**SPEAKER_00:**
[03:48] And, yeah, that was a very interesting time. Like thinking back now I'm sad I didn't write down more things or take more pictures or appreciate some of the things a little bit more. But I also had no idea that things would get as big as they are now.

**SPEAKER_01:**
[04:05] Yeah.

**SPEAKER_00:**
[04:06] But yeah, I enjoyed it a lot.

**SPEAKER_01:**
[04:08] So I mean it was primarily C++ development under Gav that was happening in that office, right? But also Felix Lange I know was there on the Geth team.

**SPEAKER_00:**
[04:18] Yeah, there were some different people. I remember Gustav Simonsen, I think he was doing Go stuff. And yeah, the Solidity team was also there. I think they were under the C++ team back then, but they were there. And Remix as well. Well, Mix, sorry, at the time.

**SPEAKER_01:**
[04:35] Yeah.

**SPEAKER_00:**
[04:36] And I also remember the Mist, I guess. At least Fabian Vogelsteller was also around. So there was a good amount of different people around. And also quite often people would come and visit from other places.

[04:49] I remember a couple of times Christoph Jentzsch came to visit. There was one time where I think he arrived at midnight or something like that. And there was no one else at the office. I was doing my internship, and I think he wrote late afternoon, he wrote on the Skype channel if there would be someone around and that he was a little bit delayed or whatever.

[05:12] So I was just like, oh, it's fine. I had nothing to do in Berlin anyway. I had the smallest room. Just like a small room with a bed, nothing else basically. So I enjoyed spending a lot of time in the office and I would usually just stay in the office and then just go home and sleep because the office was quite nice.

**SPEAKER_01:**
[05:32] Right, right.

**SPEAKER_00:**
[05:33] Yeah, I had one night where I think I let him into the office at midnight and we had a little bit of a chat. I got to know him. He told me about all the testing he was doing and how they were testing. It was quite interesting.

**SPEAKER_01:**
[05:46] And that's cross-client testing as well, wasn't it?

**SPEAKER_00:**
[05:49] Yeah, if I remember correctly, he was building a lot of JSON data that they fed to the clients.

**SPEAKER_01:**
[05:55] And that was from the C++ client, I know, that CPP Ethereum was leading. And the tests were generated from that, but then running those against the Python and Geth clients.

**SPEAKER_00:**
[06:05] Yeah, that sounds about right. There are a lot of small stories. You told me we don't have too much time. I'll try to keep it short. I would say if I think back to the most interesting things that happened, it was like...

[06:18] Of course, being lucky enough to participate at DevCon 1. And also experience the kind of split that was taking place at this point in time because the foundation, I think, almost ran out of money.

**SPEAKER_01:**
[06:33] Yeah, that's right. And the C++ team was kind of cut off. And you also had, you know, Ming Chan, her first official date was 1st of August of 2015. So, yeah, you basically had those kind of cost-cutting measures coming in quite fast of looking at the spend where...

[06:50] It had been going for a year. It was the July of the previous year that the foundation had been formed and you had the crowd sale, but nearly all of the money was gone in that year.

**SPEAKER_00:**
[07:01] Yeah, and I think that was also maybe not the most responsible usage of money, but also the Bitcoin price was doing really poorly.

**SPEAKER_01:**
[07:10] Yeah, that's right.

**SPEAKER_00:**
[07:11] And the Ether price itself was also, I think it dipped below the pre-sale price at some point in September 2015.

**SPEAKER_01:**
[07:19] A year in and you've had no accumulation.

**SPEAKER_00:**
[07:22] But yeah, I didn't have any interactions with Ming back then. Actually, one thing I just remembered now, I was actually supposed to have done my internship on the C++ team in London, but a couple of weeks before that, I was told, sorry, we can't do it anyway because we don't have the money anymore.

**SPEAKER_01:**
[07:40] Well, because they were getting very rapidly the funding or even shut down entirely, I think.

**SPEAKER_00:**
[07:46] Yeah, probably already. Or that was coming. Yeah, so that's why it ended up being the Python team instead because there was some budget.

[07:55] But yeah, like sitting as the only person working on the Python client in that office in my small corner, I had a lot of fun kind of following how people came and went and went into Gavin's office and had a chat there with him in Utah or whatever.

[08:12] And I didn't really know in the beginning what was going on until I was also asked if I wanted to come in and talk. And it was basically like presenting ideas of what would happen next with the C++ team and if they wanted to consider joining there or whatever.

**SPEAKER_01:**
[08:28] So that was sort of the pre-formation of what became Ethcore, later Parity.

**SPEAKER_00:**
[08:33] Yeah, I think so. I was witnessing that without knowing what was going on. I had no insight into the finances of the foundation or anything like that. I only found out about most of those things later. But it was quite interesting to see.

**SPEAKER_01:**
[08:48] Yeah, so maybe let's talk about DevCon 1. So the first DevCon was DevCon 0, which happened in November 2014, before your time, which was the closed event. Mainly Ethereum Foundation-y people, but some broader ecosystem people.

[09:05] But then DevCon 1 happened in November 2015 in London. It had got announced early in the year and got cancelled because of this funding squeeze but then ConsenSys basically stepped up and filled that funding gap and did some organizing.

[09:22] So that was in November of that year. I was not present myself, I couldn't afford to go or whatever at the time, but I watched a lot of the livestream. But you know, that was a really very seminal conference. So how was that?

**SPEAKER_00:**
[09:38] For me, it was amazing. I've never been good at sitting still on a chair for a long period of time. But there I was at every talk from the beginning in the morning until the end. I think I missed one talk because I had to go catch my flight to go back on the last day.

[09:55] But I was just sitting there and sucking up all of these ideas and visions. And it was really... I think before that I had an idea that I thought it would be interesting to continue working with Ethereum or in the Ethereum space.

[10:10] But after DevCon 1, I was like, I have to do this. There's no other way for me. I'm not going back to the university. I'm not going to do anything else. This is what I'm going to do.

[10:21] Because it was a full day, or three full days, of just sitting there and people presenting their ideas. I remember clearly Maker was presented. I was like, okay, we can do stablecoins. I was like amazing.

[10:35] I think Fabian Vogelsteller and Alex Van de Sande and some other people presented the ERC-20 token standard or the early version of it, which, yeah, okay, this has also, this is such a big part of Ethereum now.

[10:50] I think maybe Gnosis, I'm not sure actually. And of course the project I was working on, the people there, we were presenting the Raiden Network which got a lot of very good feedback as well.

**SPEAKER_01:**
[11:02] So it was so interesting and HydraChain as well, right?

**SPEAKER_00:**
[11:06] Yeah, I was not so sold on HydraChain back then because it was like aimed at...

**SPEAKER_01:**
[11:11] One of the very first permissioned Ethereum.

**SPEAKER_00:**
[11:13] Exactly. It was like a round-robin kind of algorithm. And now it seems like something people would actually have used these days. So only 10 years too early.

[11:24] But back to DevCon 1, I was just thinking about it after our conversation last night, that DevCon 1, it was just about the technology. I think maybe there were three booths or something like that. They just had a couple of stickers. I barely remember.

[11:40] I just remember what was the name of the Haskell project? BlockApps Strato. I remember they had a small booth, I think, and some stickers. I'm very sad that I lost that sticker.

[11:52] But other than that, it was just people. There was one stage and everyone was in the same room. And in the evenings, people would go out for dinner maybe, but there was not a single side event.

[12:05] There was not a single party.

**SPEAKER_01:**
[12:07] Glory days.

**SPEAKER_00:**
[12:08] It was just dinners and a couple of shepherd's pies somewhere. And that was kind of fun. You got to know people really, really well. And it was really just the golden days, I felt like. There were so many inspired people and ideas, and people only talked about tech.

[12:25] I think there was like one a little bit weird product hype talk with a guy who had a t-shirt gun on the stage. This like FreeMyVunk, right? Like a very different energy than everybody else. It felt like he was the only one who actually knew how to give a talk and how to actually sell.

[12:45] And back then I thought it was way too much but now now it's basically what everyone else is doing. And the quality of slides was so bad as well, it's right to look back.

[12:57] But yeah, I was thinking about that and then I was comparing with, let's say, DevCon 2. I think at DevCon 2 there was maybe like a couple of parties, I think ConsenSys had a bar somewhere where we would usually go. It was still not that big. There was still only one stage, I think, at DevCon 2.

**SPEAKER_01:**
[13:17] There was just one main stage.

**SPEAKER_00:**
[13:19] Yeah, quite doable. And then I think at DevCon 3 in Cancun, that was where you could really feel, okay, now there's a lot of money in this space because there were parties right and left.

[13:32] And yeah, the rest is history, right?

**SPEAKER_01:**
[13:34] That's right.

**SPEAKER_00:**
[13:35] It's been quite crazy to see this development as well, measuring on the amount of events and parties at the different DevCons, how popular things got.

[13:45] But for me, the DevCon 1 is like one of my best memories of these 10 years, simply because it was just so inspiring and motivating, I would say.

[13:57] And a lot of the people you have on your list were around there. It's quite cool. And I actually recently found out that someone I got to know a couple of years ago only, who's also doing some cool stuff, he actually was around there. We didn't meet each other. I only found out like two years ago.

[14:15] And he said he didn't see almost any talks because he was sitting in the back trying to get the Geth client to run on his machine or something like that because it was not easy back then. It took days. Even if you had the devs available right next to you, it wasn't easy.

[14:33] So yeah, I think that's mainly what I have to share without going into too much detail about things.

**SPEAKER_01:**
[14:40] Well, thanks so much.

**SPEAKER_00:**
[14:41] You're very welcome.

**SPEAKER_01:**
[14:42] Great chatting always.

**SPEAKER_00:**
[14:43] Yeah.

**SPEAKER_01:**
[14:44] Okay. All the very best.

**SPEAKER_00:**
[14:45] Thank you. You too.

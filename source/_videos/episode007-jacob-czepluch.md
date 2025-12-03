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


[00:00] **Bob Summerwill:**
So, hello.

[00:01] **Jacob Czepluch:**
Hello, Bob.

[00:02] **Bob Summerwill:**
So, yes, I'm Bob Summerwill, recording here at Dark Prague for Early Days of Ethereum. And I have here Jacob Czepluch.

Good enough. Czepluch.

[00:15] **Jacob Czepluch:**
Yes, there you go.

So, yeah, we've known each other about three years or so now. I think we did meet in Bogota for DevCon 6 for the first time, where you introduced yourself. I was not aware of your background and role, but...

But yeah, specifically, you were an intern at Dev in Berlin in late 2015, and you also attended DevCon 1. So how did you come to be involved with Ethereum at that time?

[00:43] **Jacob Czepluch:**
Oh, yeah. Thank you for the intro. And good question. It was in Bogota. I think I knew about you or of you for longer than since then. But yeah, I think you were chatting with someone and talking about the old days and I just jumped in because I know Florian and found out that we have a shared interest in the old days of Ethereum.

And yeah, I did my internship working on the Python client back starting September or August 2015. I think it was like...

[01:15] **Bob Summerwill:**
Maybe August to December?

[01:17] **Jacob Czepluch:**
Yeah, it was August to December. It was a couple of weeks after mainnet launched and the first week I was there was when there was like the first big fork where the Go client forked from the C++ and Python client.

[01:32] **Bob Summerwill:**
There was a chain split on mainnet?

[01:34] **Jacob Czepluch:**
Yes. And it happened, I think, the second day I was there. And that was the same day that there was a meetup planned in the office.

So everything was extremely chaotic and people arrived at the office for the meetup and nothing happened for a good amount of time. And eventually I was just sitting there in the corner working and I was like, no, we can't do this because there's so many people who are just like looking, some started leaving.

So I kind of ad hoc jumped in and gave a presentation on Ethereum back then that I had given a couple weeks before back in Copenhagen.

[02:13] **Bob Summerwill:**
Prior to your internship?

[02:15] **Jacob Czepluch:**
Yeah, I gave the presentation prior to my internship because I started a Copenhagen Ethereum meetup group.

[02:22] **Bob Summerwill:**
Oh, goodness. So when do you think that started?

[02:25] **Jacob Czepluch:**
I know exactly when it started. It started on the 14th of July 2015.

[02:30] **Bob Summerwill:**
Right, right.

[02:31] **Jacob Czepluch:**
And the reason I got into Ethereum was I was studying computer science.

[02:36] **Bob Summerwill:**
Okay.

[02:37] **Jacob Czepluch:**
And I knew about Bitcoin and thought it would be interesting to write my bachelor thesis on Bitcoin.

[02:43] **Bob Summerwill:**
Okay. So this was an internship while you were still doing an undergraduate?

[02:47] **Jacob Czepluch:**
No, it was actually an internship that I got because I wrote my bachelor thesis on Ethereum in the spring of 2015.

[02:55] **Bob Summerwill:**
I see. So you had graduated.

[02:57] **Jacob Czepluch:**
Yeah, but just a bachelor.

[02:58] **Bob Summerwill:**
Right.

[02:59] **Jacob Czepluch:**
And because the Ethereum ecosystem, so to speak, was so small back then. We were in contact with the Ethereum Foundation during the internship. I think I opened my first issue in March 2015 to the C++ client or something like that. I've known of Ethereum since the end of 2014.

We wrote this bachelor thesis, me and two of my friends, and we shared it with the foundation, and then we got offered internships.

And I was the only one, I was tired of studying already, only after a bachelor, and the other two guys wanted to continue, so I was like, okay, I'm going to do this. And a couple of weeks later, I moved to Berlin to do my internship working on the Python client.

[03:47] **Bob Summerwill:**
Right, right.

[03:48] **Jacob Czepluch:**
And, yeah, that was a very interesting time. Like thinking back now I'm sad I didn't write down more things or take more pictures or appreciate some of the things a little bit more. But I also had no idea that things would get as big as they are now.

[04:05] **Bob Summerwill:**
Yeah.

[04:06] **Jacob Czepluch:**
But yeah, I enjoyed it a lot.

[04:08] **Bob Summerwill:**
So I mean it was primarily C++ development under Gav that was happening in that office, right? But also Felix Lange I know was there on the Geth team.

[04:18] **Jacob Czepluch:**
Yeah, there were some different people. I remember Gustav Simonsen, I think he was doing Go stuff. And yeah, the Solidity team was also there. I think they were under the C++ team back then, but they were there. And Remix as well. Well, Mix, sorry, at the time.

[04:35] **Bob Summerwill:**
Yeah.

[04:36] **Jacob Czepluch:**
And I also remember the Mist, I guess. At least Fabian Vogelsteller was also around. So there was a good amount of different people around. And also quite often people would come and visit from other places.

I remember a couple of times Christoph Jentzsch came to visit. There was one time where I think he arrived at midnight or something like that. And there was no one else at the office. I was doing my internship, and I think he wrote late afternoon, he wrote on the Skype channel if there would be someone around and that he was a little bit delayed or whatever.

So I was just like, oh, it's fine. I had nothing to do in Berlin anyway. I had the smallest room. Just like a small room with a bed, nothing else basically. So I enjoyed spending a lot of time in the office and I would usually just stay in the office and then just go home and sleep because the office was quite nice.

[05:32] **Bob Summerwill:**
Right, right.

[05:33] **Jacob Czepluch:**
Yeah, I had one night where I think I let him into the office at midnight and we had a little bit of a chat. I got to know him. He told me about all the testing he was doing and how they were testing. It was quite interesting.

[05:46] **Bob Summerwill:**
And that's cross-client testing as well, wasn't it?

[05:49] **Jacob Czepluch:**
Yeah, if I remember correctly, he was building a lot of JSON data that they fed to the clients.

[05:55] **Bob Summerwill:**
And that was from the C++ client, I know, that CPP Ethereum was leading. And the tests were generated from that, but then running those against the Python and Geth clients.

[06:05] **Jacob Czepluch:**
Yeah, that sounds about right. There are a lot of small stories. You told me we don't have too much time. I'll try to keep it short. I would say if I think back to the most interesting things that happened, it was like...

Of course, being lucky enough to participate at DevCon 1. And also experience the kind of split that was taking place at this point in time because the foundation, I think, almost ran out of money.

[06:33] **Bob Summerwill:**
Yeah, that's right. And the C++ team was kind of cut off. And you also had, you know, Ming Chan, her first official date was 1st of August of 2015. So, yeah, you basically had those kind of cost-cutting measures coming in quite fast of looking at the spend where...

It had been going for a year. It was the July of the previous year that the foundation had been formed and you had the crowd sale, but nearly all of the money was gone in that year.

[07:01] **Jacob Czepluch:**
Yeah, and I think that was also maybe not the most responsible usage of money, but also the Bitcoin price was doing really poorly.

[07:10] **Bob Summerwill:**
Yeah, that's right.

[07:11] **Jacob Czepluch:**
And the Ether price itself was also, I think it dipped below the pre-sale price at some point in September 2015.

[07:19] **Bob Summerwill:**
A year in and you've had no accumulation.

[07:22] **Jacob Czepluch:**
But yeah, I didn't have any interactions with Ming back then. Actually, one thing I just remembered now, I was actually supposed to have done my internship on the C++ team in London, but a couple of weeks before that, I was told, sorry, we can't do it anyway because we don't have the money anymore.

[07:40] **Bob Summerwill:**
Well, because they were getting very rapidly the funding or even shut down entirely, I think.

[07:46] **Jacob Czepluch:**
Yeah, probably already. Or that was coming. Yeah, so that's why it ended up being the Python team instead because there was some budget.

But yeah, like sitting as the only person working on the Python client in that office in my small corner, I had a lot of fun kind of following how people came and went and went into Gavin's office and had a chat there with him in Utah or whatever.

And I didn't really know in the beginning what was going on until I was also asked if I wanted to come in and talk. And it was basically like presenting ideas of what would happen next with the C++ team and if they wanted to consider joining there or whatever.

[08:28] **Bob Summerwill:**
So that was sort of the pre-formation of what became Ethcore, later Parity.

[08:33] **Jacob Czepluch:**
Yeah, I think so. I was witnessing that without knowing what was going on. I had no insight into the finances of the foundation or anything like that. I only found out about most of those things later. But it was quite interesting to see.

[08:48] **Bob Summerwill:**
Yeah, so maybe let's talk about DevCon 1. So the first DevCon was DevCon 0, which happened in November 2014, before your time, which was the closed event. Mainly Ethereum Foundation-y people, but some broader ecosystem people.

But then DevCon 1 happened in November 2015 in London. It had got announced early in the year and got cancelled because of this funding squeeze but then ConsenSys basically stepped up and filled that funding gap and did some organizing.

So that was in November of that year. I was not present myself, I couldn't afford to go or whatever at the time, but I watched a lot of the livestream. But you know, that was a really very seminal conference. So how was that?

[09:38] **Jacob Czepluch:**
For me, it was amazing. I've never been good at sitting still on a chair for a long period of time. But there I was at every talk from the beginning in the morning until the end. I think I missed one talk because I had to go catch my flight to go back on the last day.

But I was just sitting there and sucking up all of these ideas and visions. And it was really... I think before that I had an idea that I thought it would be interesting to continue working with Ethereum or in the Ethereum space.

But after DevCon 1, I was like, I have to do this. There's no other way for me. I'm not going back to the university. I'm not going to do anything else. This is what I'm going to do.

Because it was a full day, or three full days, of just sitting there and people presenting their ideas. I remember clearly Maker was presented. I was like, okay, we can do stablecoins. I was like amazing.

I think Fabian Vogelsteller and Alex Van de Sande and some other people presented the ERC-20 token standard or the early version of it, which, yeah, okay, this has also, this is such a big part of Ethereum now.

I think maybe Gnosis, I'm not sure actually. And of course the project I was working on, the people there, we were presenting the Raiden Network which got a lot of very good feedback as well.

[11:02] **Bob Summerwill:**
So it was so interesting and HydraChain as well, right?

[11:06] **Jacob Czepluch:**
Yeah, I was not so sold on HydraChain back then because it was like aimed at...

[11:11] **Bob Summerwill:**
One of the very first permissioned Ethereum.

[11:13] **Jacob Czepluch:**
Exactly. It was like a round-robin kind of algorithm. And now it seems like something people would actually have used these days. So only 10 years too early.

But back to DevCon 1, I was just thinking about it after our conversation last night, that DevCon 1, it was just about the technology. I think maybe there were three booths or something like that. They just had a couple of stickers. I barely remember.

I just remember what was the name of the Haskell project? BlockApps Strato. I remember they had a small booth, I think, and some stickers. I'm very sad that I lost that sticker.

But other than that, it was just people. There was one stage and everyone was in the same room. And in the evenings, people would go out for dinner maybe, but there was not a single side event.

There was not a single party.

[12:07] **Bob Summerwill:**
Glory days.

[12:08] **Jacob Czepluch:**
It was just dinners and a couple of shepherd's pies somewhere. And that was kind of fun. You got to know people really, really well. And it was really just the golden days, I felt like. There were so many inspired people and ideas, and people only talked about tech.

I think there was like one a little bit weird product hype talk with a guy who had a t-shirt gun on the stage. This like FreeMyVunk, right? Like a very different energy than everybody else. It felt like he was the only one who actually knew how to give a talk and how to actually sell.

And back then I thought it was way too much but now now it's basically what everyone else is doing. And the quality of slides was so bad as well, it's right to look back.

But yeah, I was thinking about that and then I was comparing with, let's say, DevCon 2. I think at DevCon 2 there was maybe like a couple of parties, I think ConsenSys had a bar somewhere where we would usually go. It was still not that big. There was still only one stage, I think, at DevCon 2.

[13:17] **Bob Summerwill:**
There was just one main stage.

[13:19] **Jacob Czepluch:**
Yeah, quite doable. And then I think at DevCon 3 in Cancun, that was where you could really feel, okay, now there's a lot of money in this space because there were parties right and left.

And yeah, the rest is history, right?

[13:34] **Bob Summerwill:**
That's right.

[13:35] **Jacob Czepluch:**
It's been quite crazy to see this development as well, measuring on the amount of events and parties at the different DevCons, how popular things got.

But for me, the DevCon 1 is like one of my best memories of these 10 years, simply because it was just so inspiring and motivating, I would say.

And a lot of the people you have on your list were around there. It's quite cool. And I actually recently found out that someone I got to know a couple of years ago only, who's also doing some cool stuff, he actually was around there. We didn't meet each other. I only found out like two years ago.

And he said he didn't see almost any talks because he was sitting in the back trying to get the Geth client to run on his machine or something like that because it was not easy back then. It took days. Even if you had the devs available right next to you, it wasn't easy.

So yeah, I think that's mainly what I have to share without going into too much detail about things.

[14:40] **Bob Summerwill:**
Well, thanks so much.

[14:41] **Jacob Czepluch:**
You're very welcome.

[14:42] **Bob Summerwill:**
Great chatting always.

[14:43] **Jacob Czepluch:**
Yeah.

[14:44] **Bob Summerwill:**
Okay. All the very best.

[14:45] **Jacob Czepluch:**
Thank you. You too.

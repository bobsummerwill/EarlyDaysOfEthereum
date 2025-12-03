---
title: "Early Days of Ethereum - Episode 7 - Jacob Czepluch"
date: 2025-12-03
show: true
guests: ["Jacob Czepluch"]
hosts: ["Bob Summerwill"]
description: "Jacob was an intern at ETHDEV in late 2015, so was a fly-on-the-wall in the Berlin office as the C++ team was defunded.  He had earlier founded the Copenhagen Ethereum Meetup"
img: /images/covers-for-conversations/episode007-jacob-czepluch.png
embed:
  url: https://www.youtube.com/embed/mCbtI8LaXkA
table_of_contents:
  - link: "#introduction"
    title: "Introduction"
  - link: "#copenhagen-meetup-thesis"
    title: "Copenhagen Meetup & Bachelor Thesis"
  - link: "#berlin-internship"
    title: "The Berlin Internship"
  - link: "#ethereum-foundation-funding-crisis"
    title: "Ethereum Foundation Funding Crisis & Ethcore Formation"
  - link: "#devcon1-experience"
    title: "DEVCON1 Experience"
  - link: "#evolution-devcons"
    title: "Evolution of DEVCONs"
---

## Audio

<audio controls style="width: 100%; max-width: 600px;">
  <source src="/assets/audio/episode007-jacob-czepluch.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>


## Transcript

<!-- TABLE_OF_CONTENTS -->

<h3 id="introduction">Introduction</h3>

[[00:00]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=0s) **Jacob Czepluch:**
So, hello. Hello, Bob.

[[00:02]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=2s) **Bob Summerwill:**
So, yes, I'm Bob Summerwill, recording here at Dark Prague for Early Days of Ethereum. And I have here Jacob Czepluch.

[[00:12]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=12s) **Jacob Czepluch:**
Good enough.

[[00:13]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=13s) **Bob Summerwill:**
Good enough. Czepluch.

[[00:14]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=14s) **Jacob Czepluch:**
Yes, there you go.

[[00:16]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=16s) **Bob Summerwill:**
So, yeah, we've known each other about three years or so now. I think we did meet in Bogotá for DEVCON6 for the first time, where you introduced yourself. I was not aware of your background and role, but specifically, you were an intern at ETHDEV in Berlin in late 2015, and you also attended DEVCON1. So how did you come to be involved with Ethereum at that time?

<h3 id="copenhagen-meetup-thesis">Copenhagen Meetup & Bachelor Thesis</h3>

[[00:44]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=44s) **Jacob Czepluch:**
Oh, yeah. Thank you for the intro and good question. It was in Bogotá. I think I knew about you or of you for longer than since then. But yeah, I think you were chatting with someone and talking about ... (Florian Glatz maybe?), and talking about the old days. And I just jumped in because I know [Florian](/people/florian-glatz) and found out that we have a shared interest in the old days of Ethereum.

{% include twitter-embed.html
  url="https://x.com/BobSummerwill/status/1583915307651207168"
%}

And yeah, I did my internship working on the [Python client](/articles/pyethereum), back starting September or August 2015. I think it was like—

[[01:22]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=82s) **Bob Summerwill:**
Maybe August to December?

[[01:24]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=84s) **Jacob Czepluch:**
Yeah, it was August to December. It was a couple of weeks after mainnet launched and the first week I was there was when there was like the first big fork where the Go client forked from the C++ and [Python client](/articles/pyethereum).

*(Bob: I tracked down that Meetup to 20th August 2015, so Jacob's first day will have been Tuesday 19th August 2015.  See photo from the Meetup below)*

[[01:40]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=100s) **Bob Summerwill:**
There was a chain split on mainnet?

[[01:42]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=102s) **Jacob Czepluch:**
Yes. And it happened, I think, the second day I was there. And that was the same day that there was a meetup planned in the office.

{% include content-embed.html
  url="https://blog.ethereum.org/2015/08/20/security-alert-consensus-issue"
  img="https://blog.ethereum.org/_next/image?url=%2Fimages%2Feth-org.jpeg&w=1080&q=75"
  title="Security alert [consensus issue]"
  author="Jutta Steiner"
  date="2015-08-20"
  site="blog.ethereum.org"
  description="Consensus issue on the Frontier network at block 116,522, caused by a state database issue in geth with deletion of account data during SUICIDE instructions."
%}

[[01:52]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=112s) **Bob Summerwill:**
Right.

[[01:53]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=113s) **Jacob Czepluch:**
So everything was extremely chaotic and people arrived at the office for the meetup and nothing happened for a good amount of time. And eventually I was just sitting there in the corner working and I was like, no, we can't do this because there's so many people who are just like looking. Some started leaving. So I kind of ad hoc jumped in and gave a presentation on Ethereum back then that I had given a couple of weeks before back in Copenhagen.

{% include twitter-embed.html
  url="https://x.com/heckerhut/status/634439352605655041"
%}

[[02:22]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=142s) **Bob Summerwill:**

Prior to your internship.

[[02:24]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=144s) **Jacob Czepluch:**
Yeah, I gave the presentation prior to my internship because I started a Copenhagen Ethereum Meetup group.

[[02:30]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=150s) **Bob Summerwill:**
Oh, goodness. So when do you think that started?

[[02:33]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=153s) **Jacob Czepluch:**
I know exactly when it started. It started on the 14th of July 2015.

[[02:38]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=158s) **Bob Summerwill:**
Right, right.

[[02:39]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=159s) **Jacob Czepluch:**
And the reason I got into Ethereum was I was studying computer science. And I knew about Bitcoin and thought it would be interesting to write my bachelor thesis on Bitcoin.

[[02:52]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=172s) **Bob Summerwill:**
So this was an internship while you were still doing an undergraduate?

[[02:56]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=176s) **Jacob Czepluch:**
No, it was actually an internship that I got because I wrote my bachelor thesis on Ethereum in the spring of 2015.

[[03:04]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=184s) **Bob Summerwill:**
I see. So you had graduated.

[[03:06]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=186s) **Jacob Czepluch:**
Yeah, but just a bachelor.

[[03:08]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=188s) **Bob Summerwill:**
Right.

[[03:09]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=189s) **Jacob Czepluch:**
And because the Ethereum ecosystem, so to speak, was so small back then, we were in contact with the Ethereum Foundation during the internship. I think I opened my first issue in March 2015 to the C++ client or something like that. I've known of Ethereum since the end of 2014, but anyway.

*(Bob: His first Github action was actually on 4th April 2015, and it was [an issue](https://github.com/ethereum/aleth/issues/1559) logged against cpp-ethereum for a problem with AlethZero!)*

We wrote this bachelor thesis, me and two of my friends, and we shared it with the [Foundation](/articles/stiftung-ethereum), and then we got offered internships.

{% include content-embed.html
  url="/assets/docs/jacob-czepluch/personal/bachelor.pdf"
  img="/assets/docs/jacob-czepluch/personal/screenshot.png"
  title="The Use of Block Chain Technology in Different Application Domains"
  author="Jacob Stenum Czepluch, Nikolaj Zangenberg Lollike and Simon Oliver Malone"
  date="2015-05-20"
  site="The IT University of Copenhagen"
%}

[[03:42]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=222s) **Bob Summerwill:**
Right, right.

[[03:43]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=223s) **Jacob Czepluch:**
And I was the only one. I was tired of studying already, only after a bachelor, and the other two guys wanted to continue, so I was like, okay, I'm going to do this. And a couple of weeks later, I moved to Berlin to do my internship working on the [Python client](/articles/pyethereum).

And, yeah, that was a very interesting time. Like thinking back now, I'm sad I didn't write down more things or take more pictures or appreciate some of the things a little bit more. But I a
lso had no idea that things would get as big as they are now. But yeah, I enjoyed it a lot.

<h3 id="berlin-internship">The Berlin Internship</h3>

[[04:22]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=262s) **Bob Summerwill:**
So I mean it was primarily C++ development under [Gav](/people/gavin-wood) that was happening in that office, right? But also Felix Lange I know was there on the Geth team.

[[04:33]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=273s) **Jacob Czepluch:**
Yeah, there were some different people. I remember Gustav Simonssen, I think he was doing Go stuff. And yeah, the Solidity team was also there. I think they were under the C++ team back then, but they were there.

[[04:42]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=282s) **Bob Summerwill:**
And Remix as well. Well, Mix, sorry, at the time.

[[04:45]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=285s) **Jacob Czepluch:**
Yeah.  And I also remember Mist, I guess. At least Fabian Vogelsteller was also around. So there was a good amount of different people around.

And also, quite often people would come and visit from other places. I remember a couple of times Christoph Jentzsch came to visit. There was one time where I think he arrived at midnight or something like that. And there was no one else at the office. I was doing my internship, and I think he wrote late afternoon. He wrote on the Skype channel if there would be someone around and that he was a little bit delayed or whatever.

So I was just like, oh, it's fine. I had nothing to do in Berlin anyway. I had the smallest room. Just like a small room with a bed, nothing else basically. So I enjoyed spending a lot of time in the office and I actually had like, I would usually just stay in the office and then just go home and sleep because the office was quite nice.

[[05:50]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=350s) **Bob Summerwill:**
Right, right.

[[05:51]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=351s) **Jacob Czepluch:**
Yeah, I had one night where I think I let him into the office at midnight and we had a little bit of a chat. I got to know him. He told me about all the testing he was doing and how they were testing. It was quite interesting.

[[06:05]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=365s) **Bob Summerwill:**
And that's cross-client testing as well, wasn't it?

[[06:08]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=368s) **Jacob Czepluch:**
Yeah, if I remember correctly, he was building a lot of JSON data that they fed to the clients.

[[06:15]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=375s) **Bob Summerwill:**
And that was from the [C++ client](/articles/cpp-ethereum), I know, that cpp-ethereum was leading. And the tests were generated from that, but then running those against the Python and Geth clients.

[[06:27]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=387s) **Jacob Czepluch:**
Yeah, that sounds about right. There are a lot of more stories. You told me we don't have too much time. I'll try to keep it short.

I would say if I think back to the most interesting things that happened, it was like of course, being lucky enough to participate at DEVCON1. And also experience the kind of split that was taking place at this point in time because the [Foundation](/articles/stiftung-ethereum), I think, almost ran out of money.

<h3 id="ethereum-foundation-funding-crisis">Ethereum Foundation Funding Crisis & Ethcore Formation</h3>

[[06:58]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=418s) **Bob Summerwill:**
Yeah, that's right.

[[06:59]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=419s) **Jacob Czepluch:**
And the C++ team was kind of cut off.

[[07:02]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=422s) **Bob Summerwill:**
And you also had, you know, Ming Chan, her first official date was 1st of August of 2015. So, yeah, you basically had those kind of cost-cutting measures coming in quite fast of looking at the spend where, you know, it had been going for a year. It was the July of the previous year that the Foundation had been formed and you had the crowd sale, but nearly all of the money was gone in that year.

[[07:28]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=448s) **Jacob Czepluch:**
Yeah, and I think that was also maybe not the most responsible usage of money, but also the Bitcoin price was doing really poorly.

[[07:38]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=458s) **Bob Summerwill:**
Yeah, that's right.

[[07:39]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=459s) **Jacob Czepluch:**
And the Ether price itself was also, I think it dipped below the pre-sale price at some point in September.

[[07:47]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=467s) **Bob Summerwill:**
A year in and you've had no accumulation.

[[07:50]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=470s) **Jacob Czepluch:**
But yeah, I didn't have any interactions with [Ming](/people/ming-chan) back then. Actually, one thing I just remembered now, I was actually supposed to have done my internship on the C++ team in London, but a couple of weeks before that, I was told, sorry, we can't do it anyway because we don't have the money anymore.

[[08:10]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=490s) **Bob Summerwill:**
Right. Well, because they were getting very rapidly the funding or even shut down entirely, I think.

[[08:17]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=497s) **Jacob Czepluch:**
Yeah, probably already. Or that was coming. Yeah, so that's why it ended up being the [Python team](/articles/pyethereum) instead because there was some budget.

But yeah, like sitting as the only person working on the [Python client](/articles/pyethereum) in that office in my small corner, I had a lot of fun kind of following how people came and went and went into [Gavin](/people/gavin-wood)'s office and had a chat there with him and [Jutta](/people/jutta-steiner) or whatever. And I didn't really know in the beginning what was going on until I was also asked if I wanted to come in and talk. And it was basically like presenting ideas of what would happen next with the C++ team and if we wanted to consider joining there or whatever.

[[09:00]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=540s) **Bob Summerwill:**
So that was sort of the pre-formation of what became Ethcore, later Parity Technologies.

[[09:06]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=546s) **Jacob Czepluch:**
Yeah, I think so. I was witnessing that without knowing what was going on. I had no insight into the finances of the [Foundation](/articles/stiftung-ethereum) or anything like that. I only found out about most of those things later. But it was quite interesting to see.

<h3 id="devcon1-experience">DEVCON1 Experience</h3>

[[09:22]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=562s) **Bob Summerwill:**
Yeah, so maybe let's talk about DEVCON1. So the first DEVCON was DEVCON0, which happened in November 2014 before your time, which was the closed event, mainly Ethereum Foundation-y people, but some broader ecosystem people.

But then DEVCON1 happened in November 2015 in London. It had got announced earlier in the year and got cancelled because of this funding squeeze but then ConsenSys basically stepped up and filled that funding gap and did some organizing so that was in November of that year.

I was not present myself. I couldn't afford to go or whatever at the time but I watched a lot of the livestream. But you know that was a really very seminal conference. So how was that?

[[10:12]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=612s) **Jacob Czepluch:**
It was amazing. I've never been good at sitting still on a chair for a long period of time. But there I was at every talk from the beginning in the morning until the end. I think I missed one talk because I had to go catch my flight to go back on the last day.

But I was just sitting there and sucking up all of these ideas and visions. And it was really... I think before that I had an idea that I thought it would be interesting to continue working with Ethereum or in the Ethereum space. But after DEVCON1, I was like, I have to do this. There's no other way for me. I'm not going back to the university. I'm not going to do anything else. This is what I'm going to do.

Because it was a full day, or three full days, of just sitting there and people presenting their ideas. I remember clearly Maker was presented. I was like, OK, we can do stablecoins. Amazing.

{% include content-embed.html
  src="https://www.youtube.com/embed/tu0Q9ZDrJT4"
  title="DEVCON1: Maker - Nikolai Mushegian"
  site="https://www.youtube.com/@EthereumProtocol"
  author="Ethereum"
  date="November 12, 2015"
%}

I think Fabian Vogelsteller and Alex Van de Sande and some other people presented the ERC-20 token standard or the early version of it, which, yeah, OK, this is such a big part of Ethereum now.

*(Bob - so the panelists were actually Christian Lundkvist, Vitalik Buterin, Fabian Vogelsteller, Nikolai Mushegian and Gavin Wood, with Simon de la Rouviere moderating.  Simon himself gave a separate talk on tokenization)*

{% include content-embed.html
  src="https://www.youtube.com/embed/wbbbZv1VaVM"
  title="DEVCON1: Panel: Standardization"
  site="https://www.youtube.com/@EthereumProtocol"
  author="Ethereum"
  date="November 13, 2015"
%}

{% include content-embed.html
  src="https://www.youtube.com/embed/kE5oGw8oKsY"
  title="DEVCON1: Tokens - Simon de la Rouviere"
  site="https://www.youtube.com/@EthereumProtocol"
  author="Ethereum"
  date="November 12, 2015"
%}

I think maybe Gnosis, I'm not sure actually.

{% include content-embed.html
  src="https://www.youtube.com/embed/v19KtrFqAjo"
  title="DEVCON1: Gnosis - Martin Koppelmann"
  site="https://www.youtube.com/@EthereumProtocol"
  author="EthereumProtocol"
  date="November 13, 2015"
%}

And of course the project I was working on, the people there, we were presenting the Raiden network, which got a lot of very good feedback as well. So it was so interesting.

{% include content-embed.html
  src="https://www.youtube.com/embed/h791zjvf3uQ"
  title="DEVCON1: Raiden: Scaling Out With Offchain State Networks - Heiko Hees"
  site="https://www.youtube.com/@EthereumProtocol"
  author="Ethereum"
  date="November 10, 2015"
%}

[[11:40]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=700s) **Bob Summerwill:**
And HydraChain as well, right?

{% include content-embed.html
  src="https://www.youtube.com/embed/fX6Qo6e9lSE"
  title="DEVCON1: HydraChain: Permissioned Distributed Ledgers Based on Ethereum - Heiko Hees"
  site="https://www.youtube.com/@EthereumProtocol"
  author="Ethereum"
  date="November 10, 2015"
%}

[[11:42]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=702s) **Jacob Czepluch:**
Yeah, I was not so sold on HydraChain back then because it was aimed at...

[[11:47]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=707s) **Bob Summerwill:**
One of the very first permissioned Ethereum.

[[11:50]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=710s) **Jacob Czepluch:**
Exactly. It was like a round-robin kind of algorithm. And now it seems like something people would actually have used these days. So only 10 years too early.

But back to DEVCON1, I was just thinking about it after our conversation last night, that DEVCON1, it was just about the technology. I think maybe there were three booths or something like that that just had a couple of stickers. I barely remember. I just remember it was an app.

What was the name of the Haskell project?

[[12:39]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=759s) **Bob Summerwill:**
BlockApps STRATO.

[[12:26]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=746s) **Jacob Czepluch:**
Yeah, I remember they had like a small booth I think.

Right, right. Some stickers. Yeah, very sad that I lost that sticker. But other than that it was just like, yeah, just people. There was one stage and everyone was like in the same room.

More or less, yeah.

And in the evenings, yeah, people would go out, go out for dinner maybe, but there was not a single side event. There was not a single party.

[[12:56]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=776s) **Bob Summerwill:**
Glory days.

[[12:57]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=777s) **Jacob Czepluch:**
It was just dinners and a couple of shepherd's pies somewhere. And that was kind of fun. You got to know people really, really well. It was really just the golden days, I felt like. There were so many inspired people and ideas, and people only talked about tech.

I think there was like one a little bit weird product, hype talk with a guy who had a T-shirt gun on the stage, this like [Free My Vunk](https://web.archive.org/web/20180815033502/http://www.freemyvunk.com/), who had like a very different energy than everybody else. It felt like he was the only one who actually knew how to give a talk and how to actually sell. And back then I thought it was way too much, but now it's basically what everyone else is doing. And the quality of slides was so bad as well. It's funny to look back.

{% include content-embed.html
  src="https://www.youtube.com/embed/AzGHtX0yaiw"
  title="DEVCON1: FreeMyVunk: Join the movement - R. Tyler Smith"
  site="https://www.youtube.com/@EthereumProtocol"
  author="Ethereum"
  date="November 10, 2015"
%}

<h3 id="evolution-devcons">Evolution of DEVCONs</h3>

But yeah, I was thinking about that and then I was comparing with, let's say, DEVCON2. I think at DEVCON2 there was maybe like a couple of parties. I think ConsenSys had like a bar somewhere where we would usually go. It was still not that big. There was still only one stage, I think, at DEVCON2.

[[14:06]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=846s) **Bob Summerwill:**
There was just one main stage.

[[14:08]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=848s) **Jacob Czepluch:**
Yeah, quite doable. And then I think at DEVCON3 in Cancun, that was where you could really feel, okay, now there's a lot of money in this space because there were parties right and left. And yeah, okay, the rest is history, right?

[[14:24]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=864s) **Bob Summerwill:**
That's right.

[[14:25]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=865s) **Jacob Czepluch:**
It's been quite crazy to see this development as well of like measuring on the amount of events and parties at the different DEVCONs, how popular things got.

But for me, the DEVCON1 is like one of my best memories of these 10 years, simply because it was just so inspiring and motivating, I would say. And a lot of the people you have on your list were around there. It's quite cool.

And I actually recently found out that someone I got to know a couple of years ago only, who's also doing some cool stuff. He actually was around there. We didn't meet each other. I only found out like two years ago, but he had also, and he said he didn't see almost any talks because he was sitting in the back trying to get AlethZero or the Geth client to run on his machine or something like that because it was not easy back then. It took days. Even if you had the devs available right next to you, it wasn't easy.

So yeah, I think that's mainly what I have to share without going into too much detail about things.

[[15:35]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=935s) **Bob Summerwill:**
Well, thanks so much.

[[15:36]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=936s) **Jacob Czepluch:**
You're very welcome.

[[15:37]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=937s) **Bob Summerwill:**
Great chatting always.

[[15:38]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=938s) **Jacob Czepluch:**
Yeah.

[[15:39]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=939s) **Bob Summerwill:**
Okay. All the very best.

[[15:40]](https://www.youtube.com/watch?v=mCbtI8LaXkA&t=940s) **Jacob Czepluch:**
Thank you. You too.

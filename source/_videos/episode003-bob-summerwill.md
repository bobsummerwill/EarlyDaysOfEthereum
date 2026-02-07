---
title: "Early Days of Ethereum - Episode 3 - Bob Summerwill"
date: 2023-11-14
show: true
hosts: ["Victor Wong", "Kieren James-Lubin", "James Hormuzdiar"]
guest: "Bob Summerwill"
description: "Episode 3 of the Early Days of Ethereum video series features Bob Summerwill discussing his journey in blockchain and Ethereum."
img: /images/covers-for-conversations/episode003-bob-summerwill.png
links:
  - title: "Notes from BlockApps 'The Early Days of Ethereum' Part III"
    url: "https://bobsummerwill.com/2023/11/10/notes-from-blockapps-the-early-days-of-ethereum-part-iii-bob-summerwill-guest-appearance/"
embed:
  url: https://www.youtube.com/embed/28OPUQP7Wa4
table_of_contents:
  - link: "#introduction"
    title: "Introduction and Bob's background"
  - link: "#foundation-history"
    title: "Early Ethereum Foundation history"
  - link: "#client-development"
    title: "Client development and organization challenges"
  - link: "#cpp-infrastructure"
    title: "C++ client, testing, and infrastructure"
  - link: "#dao-slockit"
    title: "The DAO and Slock.it"
  - link: "#dao-hack"
    title: "The DAO hack and response"
  - link: "#etc-emergence"
    title: "Ethereum Classic emergence"
  - link: "#etc-future"
    title: "ETC vs ETH relationship and future"
---

In the third installment, Bob Summerwill joined Victor Wong, Kieren James-Lubin and [Jim Hormuzdiar](/people/james-hormuzdiar/), the co-Founders of [BlockApps](https://blockapps.net) as a guest while he was still working as Executive Director of the [ETC Cooperative](https://etccooperative.org/). He joined BlockApps as Head of Ecosystem in January 2025.

<!-- TABLE_OF_CONTENTS -->

## Transcript

<h3 id="introduction">Introduction and Bob's background</h3>

[[0:00]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=0s) **Kieren:**
All righty, well thanks everyone for coming back. We've done a couple of videos - two on the early days of Ethereum, and I actually did another video on Identity following that which you can check out on my channel. In the process, we're excited to reconnect with Bob Summerwill.

Bob will introduce himself in a second, but he actually went quite in depth in reaction to the videos. He helped us work together to patch up the whole story from our collective memory on the early days of Ethereum. He wrote a long blog post that you should check out, which we'll link in the notes. We asked him to join us here today to dig more into the story and also just generally catch up. So with that, maybe I'll hand it to Bob to do a quick intro and we can just kind of get into it.

[[0:57]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=57s) **Bob:**
So yeah, hi, thanks so much for the invite. Like I said to you guys, I love those first two videos. I love this history and it was great to both hear that and have a slightly different perspective as well. Our paths have overlapped in some ways and haven't in others, so there are a few things that came up which I wasn't myself aware of.

Just for everyone's background about me and who I am: I got interested in blockchain in 2014, but it was 2015 where I really jumped in. That happened because I had a six-month contract and was working in Toronto around the same time that Ethereum was doing a mainnet launch. I'd actually met [Vitalik](/people/vitalik-buterin/) for the first time in 2014, but I was just kind of following along a little bit, not actually doing anything. But then moving to Toronto, there was just orders of magnitude more stuff going on - meetups and Anthony Di Iorio's Bitcoin Decentral co-working space and everything. So I got really addicted through that year and it was like, right, I can't not get involved.

It's like you're there at the birth of the web or whatever and you've met Tim Berners-Lee and he's about to go live on the web. How can you not want to get involved? So I just started volunteering and helping. My background prior to that was in the games industry - 15 years of C++.

So I was like, well, I can do something with CPP Ethereum. I was really into mobile and wearables, so my first thing I set myself was: can I get Ethereum running on my smartwatch? You could get a smartwatch and go around and bing, there's some money - that'd be really cool. So yeah, I just started doing stuff on that.

That was about the time that [Gav](/people/gavin-wood/) was parting company with the foundation as well, so there was kind of a dearth of people on that team. During that period I ended up being, I think, the only person in the world who was actually helping on that. No companies, nobody was helping. Then I ended up getting hired into the foundation in early 2016. I've been involved in Ethereum, Enterprise Ethereum, Hyperledger, and more recently Ethereum Classic for nearly a decade now.

[[3:57]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=237s) **Victor:**
Yeah Bob and well and to be open to everyone like we're old friends and we're happy to have you as our first guest host on this thing but also you are like you know the Nelson Mandela of the Ethereum ecosystem. You're friends with everyone you know you've been in everywhere so it's great to have your perspective on things.

<h3 id="foundation-history">Early Ethereum Foundation history</h3>

[[4:23]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=263s) **Bob:**
Thank you.

[[4:25]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=265s) **Victor:**
So I and for as Karen has mentioned for anyone who hasn't seen Bob's blog post it's notionally a blog post almost a full novel probably a novella size it has pictures of a lot of the people we're talking about. You dug up so much content out of there.

[[4:43]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=283s) **Bob:**
Were those your personal pictures or it's just yeah yeah just stuff I had. I mean another thing here is there's a couple of articles on my own blog from earlier that I linked into there as well which was there's one called Ethereum Foundation People and one called Ethereum Foundation Timeline. So I made those in late 2017 early 2018 because there was no canonical history of any of this.

[[5:17]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=317s) **Victor:**
Yeah.

[[5:17]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=317s) **Bob:**
Like, how did Ethereum start? I mean, it's in people's heads - all secondhand stories that you hear from people that were around. But it's like, what's true, what isn't? Because I think especially on that foundation side, it was such a mess. All different people weren't getting on, blowing up - kind of like the [Parity](https://en.wikipedia.org/wiki/Parity_Technologies) versus the foundation and Charles, you know. So I think some people had almost taken this position of like "we don't talk about that," right? Because anything I say is going to offend somebody else, so just la la la, it doesn't matter.

But yeah, so I started gathering that list of who were the people that were around in the pre-foundation days. I've got this one page, this "people page," which I think is really cool. It's basically from 2013 through to early 2018, identifying anyone that I could that was involved with Ethereum pre-foundation or who worked for the foundation in those early years.

One of the things that's really great there is DEVCON zero, which happened in I think October 2014. So that was the very first DEVCON, but it was a closed event - wasn't a public event. It was foundation people at that time, but there were also some other key community people there as well. They did this one thing at the start that was introductions. There's this video that's about 15 or 20 minutes long of everybody like "Hi, I'm glad I'm here doing proof of stake research." Just seeing these, you know, so young - so many people that were really early 20s, turning up. And it's like, that's so-and-so, right? Some of these people as well, they're not involved anymore. They're sort of like footnotes in history. But you have that record.

So yeah, I got all of that together. The reason that came about was in late 2017 I got a message from Laura Shin saying "Hey, I hear [Ming](/people/ming-chan/)'s been sacked at the foundation - do you know anything about this?" And I said, "Well no, I don't, but it wouldn't surprise me. Basically it'd be like [Vitalik](/people/vitalik-buterin/) or maybe [Hudson](/people/hudson-jameson/) could tell you, but nobody else could tell you anyway." And it sort of came out - yeah, she's not being sacked but she's agreed to leave.

And then it's like, well, what's next? So I contacted [Vitalik](/people/vitalik-buterin/) and said "Hey, is there anything I can do to help? What can I do?" And he said, "Well, the one thing you can do is can you try and talk to people and work out what would good look like? What do people think a good Ethereum foundation would look like?"

And so that started my sort of adventure really of: right, I'm going to go and talk to all the founders, all the other people, and try and work out what's what. And then that just turned into really an experiment on my side of like, okay, so to my mind [Ming](/people/ming-chan/) was terrible. So how did she get hired? Like what was going on two and a half years back when that looked like a good option? What - how did it work before? Like, what - how did the foundation come about? And what were the group of leaders and what were all the dynamics between all of these people?

So yeah, I went down quite a rabbit hole there. That was the genesis for that information gathering. I learned a lot. And that information as well, I gave to Laura and to the other two authors that were doing their Ethereum books. It was kind of like, right, there is no canonical, but this is kind of what I found, which is maybe like the best

[[9:45]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=585s) **Victor:**
information that there was at that time. Yeah, well, and also it's to your point - I think generally people have sort of survivorship bias about everything works smooth. But innovation is messy, you know? It's messy. And it's like there are a million and one different paths that things could have went to, and we just want to acknowledge all that.

Like, given where the ecosystem is today - and even though it's amazing to me that so many people know about it - we all spent the first years trying to get anyone to listen to us talk about blockchain and no one, everyone just glazed over, right? So it's just kind of nice to take that retrospective view at this point. Oh, went a little bit far.

[[10:33]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=633s) **Bob:**
Okay, we'll just go with it. Yeah, one of the things that I know that [Vitalik](/people/vitalik-buterin/) said - again, it was maybe in Laura Shin's book - was like the founding of Ethereum was very atypical. Because it was essentially like: here's a white paper out to a bunch of random people who may be interested. And it's like, basically, first people that turn up, you're the founders. 

A number of them, they'd not even met each other before. Not really a lot of knowledge. And so yeah, there were lots of interpersonal things that just didn't work at all. It's just like founding a company. And I'm sure you guys have this experience yourself, right? You want to start with people that you kind of know and trust a bit. Because you know that you're going through the fire together, so you better have some stickability with you. You know, common alignment, or at least knowing that you've got good communication to go through those bad times, right? You know that you can work it out.

And what seemed to happen on Ethereum was absolutely the polar opposite of that. It's just a random bunch of people who were there, didn't really know each other. Make that commitment before you even know what you're doing, right? Yeah, and so

[[12:12]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=732s) **Kieren:**
That didn't work so great. And I think, let me actually - I wanted to ask about that. I'm also just looking at the list of the Ethereum Foundation people, which is remarkably long for the type of initiative it was. You know, we talk about this because we're a management team and we're trying to get people to focus on particular goals and things our company wants to do and such.

Do you think there was any benefits to this level of - you could call it disorganization - or just, you know... I kind of think if there were, a benefit, and it wasn't merely just an inefficient and painful process that Ethereum succeeded in spite of - it's kind of it embodied the ethos. And it let people - it's how it put the idea out there and then people fought for its destiny. Like Ethereum existed and then they wanted to be part of taking it to... And you saw the clients and all that too.

Sorry Jim, go ahead. I was gonna say it kind of worked like a

<h3 id="client-development">Client development and organization challenges</h3>

[[13:10]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=790s) **Jim:**
blockchain works in fact yeah lots of random people coming together with some underlying principle to

[[13:16]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=796s) **Victor:**
organize things and then they fight it out but what's that law that organization technology reflects the organization yeah something like that like yes sorry yeah I mean I I I guess

[[13:32]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=812s) **Bob:**
In general, yes - having that frothing emergent stuff is good. I think where it was really screwed though was to do with money and the ICO funding, right? It's basically like, okay, here we're doing the thing and here the money is - all actually in this organizational group. And the people in that group are being funded, are in this privileged position.

It's something which Brian Bellendorf said to me in later years: it's sort like the original sin of Ethereum. If you want to have that kind of collaboration - whether it's stuff like the EEA and Hyperledger or even just the rather looser protocol development around Ethereum - you don't want to pay one team and not the others. Because that just screws the battlefield.

So you have this situation, for example, where you've got the C++ client and you've got Geth. You did have a Python client as well, so you had that good triangulation. But it was essentially like the funded ones were C++ and Go. And then they have the money crisis of like "oh my god, is this thing even going to happen?" Right, we've got to cut scope. C++ is gone. [Gav](/people/gavin-wood/) ends up going out of the way. And then you have [Parity](https://en.wikipedia.org/wiki/Parity_Technologies) having one of the major clients but without funding.

So it's like Geth - oh Geth, that's the favored child, right? That's the - it's not like the official client, but it IS the official client. So all that sort of separation of implementation versus specification, and in that free market around that, was really skewed because the money was with Geth. And Geth were in the foundation and they've got [Vitalik](/people/vitalik-buterin/)'s kind of blessing and everything.

So I think that's where things weren't great - because you did have the diversity, but it wasn't fair diversity. And I think if you look at what's happening now on the consensus clients for - I was going to say Ethereum 2, it's not called Ethereum 2 anymore - but the separation that you have with those execution clients and consensus clients, none of those consensus clients are made by the foundation. The foundation doesn't have client teams. They do funding - they've got the grants, and I think all

[[17:04]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1024s) **Kieren:**
think right okay that's a it's a good strong point so if you compare it to like a bitcoin which i know less about the history of the development of bitcoin but it was kind of similar there was less of a there was no pre-mine and no token pre-sale and so the people who were in it were in it for general interest and it was really sincerely uh an even playing field and i would argue you know and in some ways ethereum has made bigger strides than bitcoin especially since you know let's say 2015 some of the value prop of bitcoin is that it never changes and that's kind of part of why it holds its value in some way and but it's i think you know been stifled a little bit um for that reason i think it's pretty hard probably to make step function positive changes in a fully decentralized manner another major difference

[[18:08]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1088s) **Bob:**
they're talking about clients is um it was a very deliberate decision right on ethereum to to separate the specification from the clients and that there were multiple clients from day one i see if i can find my twitter thread i was finding these the other day i was finding the first commits for for pi ethereum pi app um or pi ethereum as it was cpp ethereum and go ethereum and they were all um i think they were all november or december i think they were all 2013 not even 2014 for those three yeah um and then ethereum j looked like it started in about

[[18:49]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1129s) **Victor:**
april i think but you know yeah jim karen you guys started a theorem h in 2014 yeah we were

[[18:57]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1137s) **Kieren:**
Much later, we were - when did we get together? Quarter 4, 2014? Yeah, that's appropriate. And I had worked on Ethereum just in the summer, so starting kind of maybe June 2014. I got to know the project pretty well and then I had gone back to Berkeley. I was in New York for the summer and met Jim September, October, something like that. And we started work more or less right away - more Jim than me. But so yeah, there was a big time delay on our side.

And yeah, I think, okay, yeah Bob, it's an interesting point, right? I think probably they could have - there was some real mismanagement at different times, both with the running out of funds, not doing any hedging, and then later - I guess I agree that it could have just been more fair and open feeling and would have alienated fewer people. And it could have even just been bigger than it is today. 

Obviously we're talking about a smashing success here. But it's sort of the idea and the community was so powerful that it, you know, definitely succeeded in spite of that aspect. I think there was value still in this like "throw it out there, get people to fight over it." But it probably overcorrected and lots of these people also just went and started their own thing.

[[20:26]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1226s) **Bob:**
I mean the other thing is, right at the start there, it's like well the people that were doing it - that was the whole world, right? That was everything. For several months, I mean all of that early work on the clients actually was before the foundation even existed. That was actually unfunded.

Because I'm looking at the dates: the white paper came out in November 2013. PyEthereum was started on November the 19th, 2013. [Gav](/people/gavin-wood/) actually was in contact with [Vitalik](/people/vitalik-buterin/) on that same day. CPP Ethereum started four days later, 23rd of December. Obviously some over-Christmas hacking on these things going on. And then Go Ethereum was December the 26th, so just three further days.

The foundation got formed I think in May, April or May 2014. But the crowdsale didn't conclude until September 2014. So you'd actually got about nine months worth of development on all of these three clients that was actually unfunded. So I think that unfairness kind of came in a little bit later. I think for that phase it was like nobody got funded. Oh sorry - nobody got funded, though there was the retrospective payback, right? When the crowdsale had gone through, you had money for early contributors, which I think was nearly 10 percent. For like 100, 120 people. Some people made out like absolute bandits for those early months.

But then yeah, following that, there was hiring of actual staff onto those teams. And that I think is when it became kind of uneven. Because you already had Ethereum J for a number of months there, and that never got funded. And then you guys starting whenever you were starting. So yeah, it kind of became uneven I think at that point.

And the probably the worst of it of all was for [Parity](https://en.wikipedia.org/wiki/Parity_Technologies). When that team spun out, you basically did have a major, rapidly load-bearing client. And it was just unfunded. Especially with [Gav](/people/gavin-wood/), who had been the CTO and wrote the Yellow Paper and had the first working client. All of the value he delivered, and then it's like, right, sorry, you're out and you're not getting any money.

[[23:18]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1398s) **Kieren:**
you know yes do you um so my memory around the c++ client was that there were funds to do a security audit for two clients but one at a time and it was tight right like and so they did go ethereum first and i think they did actually do the security audit on cpp ethereum but i'm not

[[23:45]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1425s) **Bob:**
quite sure did you know you know maybe maybe there'd been an intention to do that but then the money right ran out before it happened um i mean my understanding in terms of uptake as well is cpp ethereum was like working first but then go ethereum just like caught up and overtook it like really fast uh so when they were making those decisions on cutting funding which would have been mid-2015 it's like hey gabby you're the cto but it's your code base that's got to cop it

[[24:25]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1465s) **Jim:**
and then that's what happened and i mean i was i was sort of building uh the various clients quite a bit because i was trying to integrate with them at the time and my memory was that the c++ client had all the newest stuff in it first so if i wanted to see something first i would go there but the go client was more stable like because i think because they were putting so much stuff into the c++ client it was often in an unstable situation and so i would typically kind of go to c++ first to see the new stuff but if it wasn't building that day i would run over to

[[24:59]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1499s) **Bob:**
And try it out. Yeah, I mean, and that would make complete sense because the other thing to know with the C++ client is that was where the test suites were done. Like all the tests were generated out of that code base. So as you say, all of the protocol changes, whatever, would happen there first. Then you do the test generation through that, and then those are the tests for other clients.

So even when CPP Ethereum as a client like died, it didn't die within that testing suite for years. It's like, right, even though nobody's actually running this or using it on mainnet or anything, we've got to keep maintaining that one because that's where the tests are coming from.

So yeah, that front line was really like leading across solc, the tests, and CPP Ethereum. All of those actually were bundled together into a single workspace as well, with all of the GUI apps - like with Mix and Aleph Zero, Aleph One. It took 24 hours to build the bloody thing.

But that would be because it was all around [Gav](/people/gavin-wood/), right? [Gav](/people/gavin-wood/) was leading all of that. He was building that client, he was writing the Yellow Paper, he was working there with [Christian](/people/christian-reitwiessner/) and [Christoph](/people/christoph-jentzsch/) on that specification and testing stuff. All of that was there.

And then on Geth, on [Jeff](/people/jeff-wilcke/)'s side - but just doing Geth, right? It wasn't a broader thing. And that Geth team were working closer with Mist, with [Fabian](/people/fabian-vogelsteller/) on Mist, for a good while. I don't think CPP Ethereum even worked with Mist. It's like all these groups not really talking to each other.

But yeah, that would make sense. Like a lot of it was [Gav](/people/gavin-wood/)-led.

<h3 id="cpp-infrastructure">C++ client, testing, and infrastructure</h3>

[[27:10]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1630s) **Victor:**
sol-c the solidity compiler that was part of that c++ group too yeah that makes sense because

[[27:17]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1637s) **Bob:**
it's written in c++ but yeah it was all under web3 umbrella okay i remember web3 umbrella yes so yeah web3 umbrella was a uh a git repo with sub repos for um you know for for f it was called f it's just called f the executable so you've had f and again um but yeah you had f you had sol-c um you had uh mix which was the original ide yeah um uh cute um uh client you had aleph zero which was the gooey minor um yeah so it's like right here here's a good press the mine button you know um and then you had aleph one which was sort of i guess it was like kind of like a gooey client runner thing i can't remember the exact scope but but it was sort of like right you're running a node but you've kind of got a gooey on it and i can't remember what it had but you know whatever logs going by and i guess you could like fiddle with settings or whatever um but yeah all that was in web3 umbrella um that's a lot that was a lot yeah and all of the dependents they were all really test and the tests as well right right but then they were all really codependent i mean when i started one of the first things i did was like what are the dependencies on all these things like what is all of this stuff because you have like libraries with it as well it's like lib

[[28:57]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1737s) **Kieren:**
lib web web3 base yeah dev p2p live p2p they were sitting documentation all over the place

[[29:09]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1749s) **Bob:**
I mean, I think what had happened there that [Gav](/people/gavin-wood/) was sort of trying to do - but it never came to fruition and then he left - was like: right, let's try and make this modular. We're going to try and do a modular thing and pull apart the networking and the database and this and the other. But it was pulled apart into separate repos before there were actually stable interfaces between any of these. So you had to use the latest stuff of anything anyway. You couldn't mix and match because there was no versioning, there was no interface discipline on any of it. You had to use all the latest ones together, but then it was all split into these separate repos.

So it's like, right, you're making a change on one of them and then updating the submodules. And that wasn't atomic - it was just a big old mess.

So yeah, one of the first things I did was work out, infer a dependency diagram, map a path to pulling it all back into a monolithic workspace. Doing automated builds that we somehow didn't have. And specifically decoupling solc and the tests from the client.

So for solc, for example, because it was tied in with this full workspace, it was literally a 24-hour build. It was like compiling Chromium from source twice, compiling Qt, all of this stuff. Just to get - and there weren't binaries available for solc either. You had to build all of this stuff yourself to be able to compile a smart contract to do anything. You have to do all of that.

So I remember after all that decomposition, I got it so you could just do solc and that was a quick build. And then I did Homebrew, and it's like you could do `brew install solc` and it did it in like five seconds. And everyone's like "oh my god, this is amazing." But yeah, it was a bit of a mess.

[[31:34]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1894s) **Victor:**
you know many times trying to build things coming back looking at it saying like this can't be like my machine's got to be broken because like it can't be this long can't be like eight hours like nothing i could imagine would take more than eight hours to do enough but you're right

[[31:50]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1910s) **Bob:**
Just like, you know, talking about that creative brew of lots of different people and uncoordinated and everything. One of my first observations on joining the foundation is these people seem allergic to professionalism. Because that seemed as, in an organized way, well you're one of the baddies, you know? You're the status quo, you're trying to subvert it and take it over.

Things as simple as like, have we got technical leads that actually lead? Have we got any project management? Have we got any IT? Have we got anything? And it's like, no, it's just like a jumble of people doing stuff. And it's like, oh, how on earth can you develop software in such a chaotic environment?

But that was kind of the vibe as well - that was seen as a good thing. Because it's a defensive cultural thing, right? We don't want this to be a Silicon Valley thing. Yeah, I think...

[[32:58]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=1978s) **Kieren:**
i just have a comment it's interesting and maybe i commented on this in one of the other videos one of these rare big software projects that did not very much come from the united states it's canada it's different parts of europe you know and one of those confusing things about to your point about who got paid for the clients on the foundation i think like i remember there being a with zug the the you know the canton basically around it they were like there's tax stuff and all that sort of thing but they also sort of intended to hire and operate locally people would either move there or they'd hire eth zurich grads or whatever um i don't know the details specifically but i think that didn't quite end up happening that way in sort of as a surprise and i saw some of this firsthand at the meeting in which um you know amir and charles were you know sent on their way um the the client team set up in their own countries and that was like a bit of a script flip like gavin wanted to be in berlin because the i guess the devs were good and expensive and be like living there you know um inexpensive excuse me um and yeah i think it's just you know you would running my own business you would never make such a decision in such a flip manner where like overnight we're like oh we're doing a different country you know but they that was kind of a regular occurrence to some extent major things changing um you know as part of how the foundation plus sort of operated that that i saw and again it didn't seem to hurt you know quite as much as you might expect um but yeah but i think you know you you had to have you were lucky in how people works how excited people were about the project that survived all of this um and again from our side you know we're sitting in the bay area at that time and we're like why do they keep doing all of these things like they're trying to build a thousand things

[[35:06]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=2106s) **Bob:**
And it's hard to build one thing. Yeah, I mean there were separate legal entities for those as well, right? So you have ETHDEV AG in Berlin. And then there was an Amsterdam thing for the Geth team. You had the London stuff as well, which was mainly communications sort of stuff, with [Stephan](/people/stephan-tual/) and George Hallam, Ian Meikle and one other person who I forget.

But you sort of talk about these people working for the Ethereum Foundation - but it was always woolier than that. So yeah, you did have the Stiftung in Zug. But most people, even if they're working full-time, they weren't actually working for that. So when I had my contract, it was with the for-profit ETHDEV in Berlin. That was who I was actually working for, and then they were funded by the foundation.

And ETHDEV in general, that was another big split, right? You got the foundation, but then you had ETHDEV that was like the kind of umbrella group for that that [Gav](/people/gavin-wood/) was leading essentially. So I think the Amsterdam thing rolled into Berlin - I think that was all sort of ETHDEV side. And that in itself was a huge item of conflict. Again, in Laura's book I think [Joe](/people/joe-lubin/) was talking about that - [Gav](/people/gavin-wood/) kind of wanted a big chunk of money. It's like, right, the funds are there from the crowdsale now, so give them all to us. And it's like, yeah, I don't know that we want to give you all the funds. You know, as you go.

But that was typical of that period - just a mess of complexity and interpersonal things and organizational complexity.

And with that, the Swiss people thing. So my understanding on that was that was like a main motivation for getting, renting that Spaceship building, right? The intention was that there were going to be a load of people there. But like, maybe it was - I think testing was one of the ones I heard - maybe a goal there is like, right, we're going to get a load of Swiss people to test things. And there's also [Mihai](/people/mihai-alisie/) with his full-on ideas about holons of working, spacey things around the world.

[[37:52]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=2272s) **Victor:**
and when and also to make it a little bit more earlier like you know same time like very shortly consensus emerged out of that too and they were doing a bunch of work you know we were working you know we were technically working under consensus for you know the first low parts of it too and all of that was like in the mix you know like everywhere so i want to jump ahead a bit because we have you as an etc expert and in our last one we had a lot of questions around um what we remembered from slocket and the dow hack um so maybe you could walk us through that and you know how etc emerged out of that that part was a little bit vague to us um because we didn't we didn't follow much on you know how those pieces all came together yeah so i mean um

<h3 id="dao-slockit">The DAO and Slock.it</h3>

[[38:45]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=2325s) **Bob:**
One of the groups or companies that came out of this kind of shrinking of the foundation was that on that C++ team that got most of the cuts, a good chunk of those people just went straight to [Parity](https://en.wikipedia.org/wiki/Parity_Technologies) and carried on with that new client. But [Christoph](/people/christoph-jentzsch/) Jentzsch, who had been leading that testing effort - those same tests we were just talking about - he and [Stephan](/people/stephan-tual/) Tual, who had been community communications leader, that sort of community stuff, and [Lefteris](/people/lefteris-karapetsas/), who'd also been on the C++ team - those three went off and formed a company called Slock.it.

So Slock.it being smart locks - just the idea that if you're doing an Airbnb or something, you could have a smart lock and you could go and do your contract with someone for the rental. And then that could be enabling something on the lock that's checking an oracle or an on-chain thing and so on. And so that was their product area.

At DEVCON 1, they did an on-stage demo that was like a pot - it was like a pebble, like a kettle.

**Victor:** Yeah, I remember that. 

**Bob:** Doing this transaction that turned it on to make a cup of tea. Yeah, that was the on-stage demo.

But what seemed to happen there was they didn't want to do an ICO. They wanted it to be fairer, I guess, because around that era - the more later - you saw lots of cash grab ICOs. And it's like, right, here's all the money up front, we're not going to deliver, what are you going to do? So they didn't want to do that, because they were very genuine people come out of the foundation and were ideologically driven.

So [Vitalik](/people/vitalik-buterin/) had written stuff about DAOs, right? I think they were mentioned in the white paper even. And it's like, well, maybe we can make a DAO. And I think that was just Slock.it DAO really, originally. And it was like, right, we're going to have a DAO. The money's going to go in there, but then it's only going to get released to us as we deliver milestones. So it's kind of like this separation of: the DAO is where the money is and that's controlled by the token holders. Slock.it as a company is a service provider into that, but we're a sackable service provider and we're only going to get paid as we go through the milestones. So it's like, oh yeah, that's really interesting.

And to my understanding, that's what was presented at DEVCON 1. I remember it was like, hey, we're Slock.it, this is what we're doing, and we're going to do a DAO with it. And it's like, oh cool.

But then they kept working on that DAO stuff after DEVCON 1, and it just seemed to warp into: we've made a DAO framework, it's a DAO library. Because we want other people to be able to do this as well. But then that sort of turned into, well actually, how about it isn't just us? How about it could be anything? Anyone could have a service provider, you could propose anything into it. And then it became "The DAO."

And it wasn't capped - there was no cap on the contributions into it. There was really nothing else that you could do on Ethereum at that point. It was kind of like the first application really. Well, I mean, you did have a few - you have Digix, this gold thing. You did have Dai, I think, sort of coming to life just about at that point. But The DAO was kind of like the first big thing, right?

And it just snowballed and snowballed, because it was also touted as zero risk. Because you could exit with your funds, right? If you didn't like the result of what was happening, you could just exit and have your ETH back. So it's kind of like, this is risk-free. It's like a sovereign bond or whatever, right? There's no downside here. This is risk-free.

So tons of people are like, well, what else am I going to do? I'm just sitting here on my Ether, I can't do anything. Well, pile on in. And the Ethereum crowdsale raised what, 16 million I think in Bitcoin, which was I think number five crowdsale of all time. Comparing to Kickstarter projects, right? So it's like, maybe they'll do two or three million, maybe five. And it just went up until it was just absolutely gigantic.

And I remember at the time thinking, this is - I don't like this. The DAO, it's not - this is not a good idea. And the main reason I was thinking of that was: is this a security, right? Is this seen as money transfer stuff? Because you've got Slock.it the company, and then they had this thing called DAO.Link that was sort of a service company for paying people in real life. That was some ETH Suisse thing, I think, or Bitcoin Suisse.

And then you had The DAO itself. You had the curators as well. So anyone could propose a smart contract that encoded their proposal, right? They would make a written description of the thing and here's a smart contract doing it. And the curator's role was to verify - yeah, what they've sort of said in text is kind of what they've done. It was meant to be this kind of administrative role.

But what happened is all of those guys - that was their names, their names and faces up on the website. So the DAO Hub website is just like a who's who of the Ethereum Foundation basically. And it didn't say, you know, "Christian Reitwiessner, creator of Solidity." It said "Christian Reitwiessner, Ethereum Foundation." "[Vitalik](/people/vitalik-buterin/), Ethereum Foundation." So lots of people were like, this is an Ethereum Foundation project, right? Because you've all got your names on everything.

So I thought, firstly, there was huge legal liability on those guys. Because where Slock.it have got these layers of legal protection, these guys haven't - they're just doing it as individuals.

And I remember [Fabian](/people/fabian-vogelsteller/) talking to me and talking to the group in the foundation, it's like, "You know, I've been talking to some of my friends and they don't think this is a great idea and I'm thinking of talking to a lawyer."

And [Gav](/people/gavin-wood/) backed out, right? A couple of weeks before all the disaster, [Gav](/people/gavin-wood/) just backed out. He's like, "This is not what I signed up for. I thought it was just a small role and now it's presented as a lot more." So he backed out. A lot of the others didn't, because it was like, well, if we back out, it's going to ruin it. And it's a great experiment.

But I thought there was huge liability to them. I thought there were legal risks. And I also just thought it was a stupid idea. Like, why would you have thousands of random people putting their money in a bucket and then let's vote on what to do with it, right? Who are these people? What do they even know about a business proposal or anything? It's just like, this is a stupid idea.

But I didn't have my eye on the fact that all of the tech stack was incredibly immature at that point, right? There's no best practices, there's no libraries. It's just here's some code. And they just went all in. It was like "code is law," the smart contract is the contract. You know, YOLO, you can't stop us.

[[47:32]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=2852s) **Victor:**
but but okay and then the hack happens right and and i remember the details of the hack being they found a flaw in the smart contract code and they could basically withdraw those funds into another account and i remember there was some kind of race between like the people at um the dow slash locket who are like using the same exploit to like drain the account like using the same hack basically is that right yeah so there was this re-entrancy vote

[[48:10]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=2890s) **Bob:**
Where it's really sort of to do with atomic operations or order of operations. So the re-entrancy was that you could be calling - because people were supplying their proposals and it's like, hey, here's a smart contract that's implementing mine. You were calling into their code, but you can't know what theirs is going to do. So there was this re-entrancy issue where within that other person-supplied code you could kind of call back in.

And it was sort of - so it was to do with child DAOs. So this whole zero risk thing was: if you didn't like proposals that were happening, you could make a child DAO saying, well, hey, I'm out, right? I'm taking my Ether and my voting off into this other one. I'm not following you, I'm going there. And other people could join you as well.

So I guess the idea was like, right, here we've got this totally over-general DAO, but we're going to make a DeFi DAO or an NFT DAO or whatever, right? And it's like, I guess a little bit like some of the thoughts for Consensus and hub and spoke - you're going to get this universe of stuff just flourishing out, and childs and so on.

But yeah, the problem on that child DAO thing is that there was this re-entrancy bug where rather than just being able to pull your ETH or your share, you can actually go in and pull more and more. So you have this using this kind of child DAO and pulling a giant amount of the funds into that child DAO. And then within 30 days they'd be able to exit with the funds.

But kind of the blessings, I guess, of that setup is they're not immediately exiting with the funds, right? They haven't gone already and sold it on an exchange and they're done before you notice. You have got this period.

And then the other thing is that you could join them. You can go into the child DAO as well. So after the hack, there was this appeal out: "Hey, did anyone participate in this specific child? Was anyone in there?" It's like, "Yeah, somebody else is in there."

And then what you could do is you could child down again. You could do another one. It's like, right, well, I'm going to grab it off you and you're going to grab it off me. So you could have had this DAO wars thing of like, you can never stop it, but you could delay it indefinitely. So that was one of them.

But then the other white hat thing is like, okay, well we know about the bug, so we can do it too. You can have white hat people like, "Well, we're going to suck a lot of the money out of the top now as well, but we're doing it for good, right? We're doing it here to keep it, to give it back."

So yeah, you had all of those games going on within that existing setup. But then as a reaction to that, you had all of this discussion about: well, are we going to react? Are we not going to react? First, the first proposal was a soft fork. But it was just going to blacklist out stuff to do with the hacker, right? And they did do that soft

[[51:36]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=3096s) **Victor:**
fork right i remember they did that soft fork first and i think it might even have gone on

[[51:42]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=3102s) **Bob:**
test nets and things but it never went live okay uh because it was spotted that it was a denial of service attack uh because that blacklisting was like you know not accounted for in the crypto economics so it was like yeah yeah you you had a denial of service attack um thing on that soft fork so it got done and then it got undone and then the hard fork was like okay well we can we can go in and we can do an irregular state transaction uh where at a certain block you know you're just going to have a hard-coded thing which sticks different uh byte code into uh into the address of the of the dow which is like okay yeah that thing it didn't happen but you know what's actually at that address is a simple refund thing where you can all get your money back um so so that's that was the down hard fork okay i just want to ask where were you

<h3 id="dao-hack">The DAO hack and response</h3>

[[52:54]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=3174s) **Kieren:**
at this time because i know you got involved um i believe later with etc because it didn't exist yet um and so you know how in terms of your personal perspective on all this we're actually implementing it anything um yourself because obviously you've got pretty deep knowledge of

[[53:13]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=3193s) **Bob:**
The technical internals. Yes, I was working for the foundation. I was on the C++ team at that point. This is about three or four months after I'd started.

The thing that was really interesting to me was how different people's thoughts or perspectives were, even within the foundation. You'd have people say, working on Geth, going "well of course we shouldn't do anything." "Well of course we should." And it's like, I've been working with you for a year - what? You think that? You had this real mixture of reactions.

And I mean, my first reaction was: well, of course you don't do anything. It's an immutable blockchain, that's the whole point. You don't like the outcome? Well, you know, tough titties. You've seen so many - like Mt. Gox, you know. Mt. Gox, you didn't have the Bitcoin devs going "Oh, let's try and fix this up." 

And I think the only reason it happened was because of the scale of it. It was a significant chunk of the entire ETH money base. And also I think that things weren't super great on funding. It wasn't like Ethereum was sure to succeed - it was quite nascent at that point. And I know that there were also worries about the proof of stake transition and the fact that if you had a large amount of the Ether in hostile hands, you could maybe have years of griefing attacks and stuff like that.

But also I think there was just a lot of people were like, "Well, this is theft, right? That money was intended for building the ecosystem and some guys come in and stolen it. And if we can fix that, well, we should."

So yeah, I mean, my immediate reaction was you shouldn't. But I also, it was like, well, whatever, that seems to be the consensus that we do it. And okay, off we go.

No, I wasn't at the foundation many more months after that anyway. But there was this real schism though. I think from what I saw, probably about 85% of people wanted to do the hard fork and 15% didn't. Or maybe 80-20. But I think there was pretty strong consensus to do it. But that was very contentious for a not tiny group of people.

A lot of people that had got involved with Ethereum have done so because they kind of wanted smart - you know, Bitcoin with smart contracts. And if you're of that Bitcoiny mindset, then yeah, of course you don't screw with things.

But I think there's also this larger group that were like, "Well, Ether isn't money anyway." Like that was a messaging that had been given out at the time - it's like, "No, no, it's fuel, right? It's fuel for the engine." Though I think part of that is just trying to dodge legal liability. But that was also true as well. This whole world computer - here's a platform, right? It's a platform like the web or Android.

So I think it was sort of like that was the mental split: is it money? And if it's money, you don't move people's monies without private keys. That's a mortal sin. And on the other side you're like, "Well no, it's a bug, right? It's a bug in the platform." And it's like, "Well but it was a bug in the smart contract." Well, if you've worked on serious software projects, people hack shit on the wrong layers all the time, right? Because it's going to give you a better user experience. You don't have to be pure on that - it's really about how the thing works. So you get hacks in the wrong layers all the time. And if you're just seeing it as a software platform

[[57:55]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=3475s) **Victor:**
then yeah it's a bug you fix the bug so it's rare in life that you can actually see a counterfactual but in this case we can because etc was created at that time and kind of emerged out of that so like um you know can you talk a little bit about that and how is that gone because you're deep into that ecosystem obviously as the you know director of the ethereum classic cooperative like how does it work now like you know what how did those words divide um and then you know how are those words

<h3 id="etc-emergence">Ethereum Classic emergence</h3>

[[58:30]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=3510s) **Bob:**
Continuing. So over that month or so, right, where it's like the money's been stolen into the sub-DAO - are we going to do anything? You have the most vigorous debate on all platforms. The topic - what's going to happen, how's it going to go, and everything. So I don't think there's anyone that was unaware of this stuff happening. Everyone had their eyes open.

But yeah, you just have this group of people kind of gathering together and it's like, "No, we're not going to go with it. This is not going to happen." Or at least like, we're not following that hard fork. Maybe people do, but a bunch of people deciding not to.

The other thing I thought was really interesting at the time - and was to my mind the best thing of all about that chain split - is to that point I don't think there's ever been a minority chain that survived, right? The standard thinking is like: you're going to have a winning side and a losing side. And you know that it's going to happen, and we'll see where's the thing. Where are the people going? Which is the winner? And then the losers - well, people stop mining, it will just die, right? Because it's the loser chain. So there's no economic value there. Forget it.

But what actually happened on the ETC side is you had miners that were like, "What? You're just going to keep on mining. I'm not updating." Some of it going, you know, "the evil Ethereum Foundation" and "[Vitalik](/people/vitalik-buterin/)'s a dictator." I mean, I don't think any of that's true. But you have got people that were like, "No, I'm going to keep going." And then look - block production's still going. It's still happening.

And then [Poloniex](https://en.wikipedia.org/wiki/Poloniex) listed it. And then it's got a market value. And then you've got speculative activity around that. You've got Ether holders dumping their ETC - it's hey, it's free money. But also you've got other people on the other side going, "Well, I see a real value here. And this ETC is going cheap."

So you know, noticeably, notably Barry Silbert, who was the first non-Bitcoin investor in Ethereum to that point, presumably based on pre-mine and various other things. But was like, "Well, oh actually, an immutability-focused ETC would be really interesting."

So yeah, you just got this sort of grassroots thing forming. You got volunteers jumping up saying, "Hey, I'm a developer. I'll keep maintaining the Classic Geth clients and so on." And it found its own legs there. You had the Ethereum subreddit was like a primary communication platform at that point. And then you had an Ethereum Classic one being created. Some people in one side, some on the other.

But it got quite bitter in the end, right? You've got a lot of people that were like, "You foundation, you guys just ruined the project." And you had people on the other side seeing ETC as really illegitimate. Saying, "Well look, it's just a money grab. You just want your free money. Why are these Bitcoiners kind of coming over? They weren't interested in Ethereum before and now they are. That's not good." And you did obviously have a bunch of speculators in there as well. So that's all a bit nasty too.

But I think the thing that split those communities finally was this "100 ETH" meme. Which came about because somebody tweeted, "Hey [Vitalik](/people/vitalik-buterin/), I hear that you're working on Ethereum Classic, is there any truth to this?" And he said no, I'm only working on Ethereum. And the person then said, "Well what if ETC had more market cap than Ethereum?" And he said, "No, I still wouldn't work on it. 100 ETH."

Like he wasn't saying it in a purity pledge way - he was just, in the way he does, being just making a factual statement. But then I remember [Joe](/people/joe-lubin/) replied "I'm 100 ETH" and then it's like everyone's doing it, right? It's this purity pledge. Everyone is expected to pledge allegiance to ETH.

So it became a "oh shit, is this an either-or?" Like you can't be in both. If you're interested in ETC then you're a dirty person. So I think that really wedged it, wedged it permanently apart at that point.

And also a number of the people that were volunteering on ETC, they were really angry. They were like, "Why? Being involved for two and a bit years in this project, really pumped about everything that you can do with Ethereum, and you guys have wrecked it." So there was a lot of bitterness from that ETC side back.

But then things kind of split apart. And over time ETC found its own path. So with the real differentiation being - well firstly that the DAO hack didn't happen. That was the only initial difference. Very rapidly though, there was this conclusion that fixed economic policy was needed. That ETC was really like Bitcoin with Ethereum technology, but Bitcoin culture and ethos.

So it's like, right, there's no fixed monetary policy for Ethereum. I mean you see this over many years - change of block rewards, ice age delays, the burning, many many changes. So that was the first kind of major change on the ETC side - introduction of that fixed monetary policy. Because there was consensus that that was an important - that was like bad inheritance that we want to fix.

And the other thing that that enabled was the [Grayscale](https://en.wikipedia.org/wiki/Grayscale_Investments) ETC fund. So at that point it's like, right, okay, this is really a Bitcoin-feeling thing. And there's a feeling that there's a value here. So then from that, [Grayscale](https://en.wikipedia.org/wiki/Grayscale_Investments) then created the [ETC Cooperative](https://etccooperative.org/) that I work for. So a share of the fees went into that - kind of not quite a foundation but a bit like a foundation - a non-profit to support the ecosystem.

And then the other thing more recently is just proof of work. There was sort of fairly rapidly a consensus that ETC wanted to stick with proof of work indefinitely. But that proof of stake was seen as a centralizing, oligarchic kind of thing that didn't really fit with that ethos.

But more generally, ETC is tracking protocol changes in Ethereum. Very compatible. So there have been forks, but not chain splits along the way. Because - well, so yeah, I mean they're hard forks but not chain splits.

**Kieren:** Got it, okay.

**Bob:** In the - all protocol updates on Ethereum as well, they're all hard forks. And the old side doesn't actually go away. You could run a Frontier node if you wanted. You can mine on Frontier, mine the Olympic testnet, mine any of these ones. It's just you have had them wither and die because there hasn't been contention. But on ETC you have sufficient contention that you had a chain split. But yeah, that I guess that's sort of a Bitcoin thing, is saying forks are bad, right? But it's like contentious hard forks are bad. Hard forks are an upgrade mechanism for the protocol.

[[1:07:07]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4027s) **Jim:**
Got it. Yeah, I mean I remember I had to implement that fork a few years ago and it was pretty blatant. It was just like take money from here and place it here. By the way, it didn't bug me, but we had people in BlockApps who thought of it as like a stab in the back. They were

[[1:07:25]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4045s) **Bob:**
like so upset by it yeah well i mean it's literally here's an array of addresses right

[[1:07:29]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4049s) **Jim:**
so fuck with yep i remember that was i i don't remember what else was in there but i remember like the majority of it was just like take a bunch of money and put it into these addresses and that

[[1:07:40]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4060s) **Bob:**
was the that was the fork yeah you know for this list of addresses replace you know it was yeah you know replace the the bytecode with this other bytecode and also yeah i think the moving was consolidating the child dowells i think i think that's what that was doing so it's like move the money from the child dowells back into the parent dowel and change the bytecode like i think you know if block equals this do a horrible thing

[[1:08:13]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4093s) **Victor:**
but in the UTC world where the Dell hack happened are those funds like did the hacker pull out those funds did okay so like yeah yeah interesting yeah i mean again laura shin

[[1:08:30]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4110s) **Bob:**
has a great write-up of all of this in her book the cryptopians um including um working out who it probably was oh wow okay well so um she didn't name names in the book but then she did a an article um like on the release day or just before uh naming who she thinks it was so that's an interesting story i can i'll dig out that article and send it to you guys so you can add it to the uh description here cool and but you know bob

[[1:09:05]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4145s) **Victor:**
you're a natural born bridge builder as we said you get along with everyone do you ever see the you know uh valley between ethereum and ethereum classic narrowing or getting better or do you

<h3 id="etc-future">ETC vs ETH relationship and future</h3>

[[1:09:20]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4160s) **Bob:**
I think it is getting better. I mean, the problem that Ethereum Classic has always had from the time of the split - and it comes back to money again - like I think that was the one thing that the foundation did wrong. Not talking about the developers or the decision on that or whatever, but was to only put the money on one side.

Because what that did is disenfranchised a good chunk of people who had invested in the pre-sale, who'd been part of that community, who'd genuinely been actively involved for those first two years. And they were just left in the dust. It's like, "Fuck you guys, we don't care what you think, goodbye." And the trademark's going this way and all the funds are going this way. And all the developers went that way as well.

And I mean, obviously the foundation couldn't control what people choose to work on. But what that meant is effectively that group of people got defunded. Totally disowned. "I'm sorry, my child, I disavow you and I'll kick you out of the house forever and I wish I'll never talk to you again."

I think in retrospect it should have been like: okay, funding is available for that other fork as well. And you may hate us and not want to talk to us, but - I guess it's like a child, whatever, teenager - "I'm fuck you dad, I'm leaving home." And it's like, "Okay, but I'm not going to stop putting aside savings and money for you. You might not love me now, but you're my child too and we'll find a way of making it happen."

Because same with the [ETC Cooperative](https://etccooperative.org/) - it could have been when that came into existence, the foundation could have gone, "Well okay, here's a body that can help, and there you go, we're going to fund it as well."

And there was something a little tiny bit like that with [Virgil](/people/virgil-griffith/). So [Virgil](/people/virgil-griffith/) was also a huge bridge builder between Ethereum and Ethereum Classic. So in 2018 he invited Anthony Lusardi, who was my predecessor, to speak at [EDCON](https://www.edcon.io/). So this was May 2018. And that was the first Ethereum Classic talk at an Ethereum event - being nearly two years at that point. And it was fine and it was cool and everyone was friendly. [Vitalik](/people/vitalik-buterin/) and various others came to that talk and it's all kind of friendly.

And Anthony invited me to Ethereum Classic Summit, which was in September 2018. So myself and [Virgil](/people/virgil-griffith/) went and spoke at that event. And around that time [Virgil](/people/virgil-griffith/) - they somehow found some ETC that the foundation still had. Generally they did a market dump at that time. But there was some stuff that they found - it's like 50 grand or something like that. And so we got that donated to the co-op, which was great. That was a really nice kind of thing.

But it was kind of like, here's a little gesture. But really, I think that was a real failing. Because it was a legitimate, irreconcilable difference. But it was made even worse by this "100 ETH" purity pledge combined again with all the money's gone.

So you end up with a very small community of mainly people who are very ideologically outraged by it. If you've got speculative token holders, obviously they're going to stick with Ethereum. "What's this other thing? There's a new thing and there's nothing."

So that's always been the issue that ETC's had - lack of money and interest really. More recently we've had support from [Bitmain](https://en.wikipedia.org/wiki/Bitmain). After the merge, with Ethereum moving to proof-of-stake, all of a sudden ETC is one of the larger mining ecosystems. So all of a sudden we're very aligned with [Bitmain](https://en.wikipedia.org/wiki/Bitmain). They want to sell ASICs, they want to be using [AntPool](https://www.antpool.com/) for mining. So they're supporting a grant program now.

But yeah, ETC is small. But you have some people and that's what they want.

[[1:14:22]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4462s) **Victor:**
yeah and as you said like you know like it's broken the mode of like sidechain surviving right like it really like you know it'd be it it's possible you know um

[[1:14:34]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4474s) **Kieren:**
no sorry go ahead karen i wanted to talk quickly about you know this the definition of success for blockchains market caps um and all that sort of thing and i was looking today because so there is market cap is in the 200 billions um here in classic is still at number 28 which is quite impressive and is you know 2.6 billion in market cap i think market cap is probably more of an indicator of popularity than anything we got a sort of truly long-term you know it's not quite like with companies where market cap is probably a better indicator of how important they are

[[1:15:18]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4518s) **Bob:**
but it is also still and then if you look yeah if you look in coin gecko so ethereum classic is higher than cosmos than filecoin than hedera than internet computer than than aptos than lido um than nia than optimism than arbitrum than the graph you know

[[1:15:44]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4544s) **Kieren:**
um and so i i wanted to to follow you know is market cap a good goal what what is your goal for etc if you were trying to you know make up the gap with ethereum well you know would you

[[1:16:00]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4560s) **Bob:**
do anything differently i mean i think to do that you just need vast investment into application layer um i mean i think i think that's somewhere where etc really can't compete with many other vc chains you know that have huge treasuries that can be spending you know tens or hundreds of millions on on grant programs you know that's you know we can't we can't compete that way but also it as you say it it's a bit of a vanity metric in a way you know like there are many other vanity metrics that we we commonly see in the space um because yeah you know if you want whatever the fastest chain or the most money or whatever like yeah that's not going to be etc like it can never be etc um but for people that are interested that's not the goal right they uh you know they're they're they're looking for something which is basically like bitcoin plus smart contracts you know with that kind of strong non-intervention kind of bias and also proof of work you know a lot of people see uh you know real value in proof of work and are very skeptical of of proof of existence so

[[1:17:21]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4641s) **Kieren:**
you know it's not you know it's not when it takes all um it's it's been interesting just how not a winner takes all the blockchain space has been they've had this they're like cockroaches they just kind of they you know keep going i know they get delisted occasionally but you know how many let's see how many pages you can get to on can we call them tree clippings instead of yeah yeah yeah that's that's quite a number and and very interesting um kind of in and of itself victor you were saying something when i made my comment oh no no i was just saying i um i was

[[1:18:07]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4687s) **Victor:**
gonna ask you more questions about um you know the early days of ea but i think we will have to invite you back because i'm pretty sure we could have another um you know another 90-minute conversation on that but it's been great to have you bob as always you're always been a great friend and a wealth of information on the space so thank you for joining us and we hope you'll come back

[[1:18:34]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4714s) **Bob:**
again soon well thank you and and sorry for monopolizing me no this is exactly that's why

[[1:18:41]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4721s) **Kieren:**
you're here yeah your story we've told plenty of ours uh should we uh you know i see on on other podcasts should we send people anywhere um where can people find you do you want them to find you

[[1:18:54]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4734s) **Bob:**
etc um yeah i could yeah i can i can drop you some links afterwards um but yeah my own website is bobsonworld.com uh ethereumclassic.org is uh there's the main sort of landing page for

[[1:19:08]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4748s) **Kieren:**
uh for ecc awesome fantastic well thank you very much really appreciate your time and uh i'm sure we will follow up we'll put our heads together and uh do another one yes we'll

[[1:19:21]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4761s) **Victor:**
have to have a round two there's plenty there's plenty more stories that we haven't even touched

[[1:19:25]](https://www.youtube.com/watch?v=28OPUQP7Wa4&t=4765s) **Kieren:**
on yet okay cheers guys all right cheers

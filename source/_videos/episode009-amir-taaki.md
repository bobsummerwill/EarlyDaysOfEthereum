---
title: "Early Days of Ethereum - Episode 9 - Amir Taaki"
date: 2025-12-31
show: true
guests: ["Amir Taaki"]
hosts: ["Bob Summerwill"]
description: "Bitcoin developer and privacy technologist Amir Taaki recounts finding Bitcoin, early development (Libbitcoin and BIPs), Dark Wallet, meeting Vitalik Buterin, and his perspective on Ethereum’s early days and DarkFi."
img: /images/covers-for-conversations/episode009-amir-taaki.png
embed:
  url: https://www.youtube.com/embed/c5VcpUIU_6w
table_of_contents:
  - link: "#introduction"
    title: "Introduction"
  - link: "#finding-bitcoin"
    title: "Finding Bitcoin (2010)"
  - link: "#early-bitcoin-development"
    title: "Early Bitcoin development, Libbitcoin, and BIPs"
  - link: "#sovereign-individual-and-surveillance"
    title: "The Sovereign Individual and surveillance"
  - link: "#squats-and-dark-wallet"
    title: "Squats, privacy tech, and Dark Wallet"
  - link: "#meeting-vitalik-and-calafou"
    title: "Meeting Vitalik: London, Calafou, and Bitcoin Magazine"
  - link: "#ethereum-early-days-and-toronto-2014"
    title: "Ethereum early days and Bitcoin Expo Toronto (2014)"
  - link: "#dark-wallet-libbitcoin-and-syria"
    title: "Dark Wallet, Libbitcoin, and Syria"
  - link: "#reflections-on-ethereum"
    title: "Reflections on Ethereum"
  - link: "#darkfi"
    title: "DarkFi"
---

## Audio

<audio controls style="width: 100%; max-width: 600px;">
  <source src="/assets/audio/episode009-amir-taaki.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>


## Transcript

<!-- TABLE_OF_CONTENTS -->

<h3 id="introduction">Introduction</h3>

[[00:03]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3s) **Amir Taaki:** Hello, hello.

[[00:04]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=4s) **Bob Summerwill:** Hello, hello. Great to see you, my friend. So we are here. We are here in Prague, in beautiful Prague. [Dark Prague](https://darkprague.com/), the inaugural [Dark Prague](https://darkprague.com/) Zero.  Congress, Conference? I'm not quite sure what you'd call it. But yeah, delighted to talk to you today, really within a context of this [Early Days of Ethereum](https://earlydayseth.org/) project that I've been looking at. And one of the things I remember seeing earliest was the "Two Amirs" that you had, [Capitalist Amir](/people/amir-chetrit) and [Anarchist Amir](/people/amir-taaki). So tell me, you know, before all that started even, you know.

{% include content-embed.html
  url="https://darkprague.com/"
  title="Dark Prague"
  description="Dark Prague is a premier conference and community hub for blockchain, cryptography, and decentralized technologies in Prague."
  site="darkprague.com"
  img="/images/darkprague.com/2026.01.05/wp-content/uploads/2025/07/Untitled-6.png"
%}

[[00:54]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=54s) **Amir Taaki:** Just curious.  How come you're doing this project?

[[00:57]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=57s) **Bob Summerwill:**  How come I'm doing it?  Well, it was quite, I mean, it was quite coincidental, you know. I'd gathered a bunch of information back in 2017, 2018, basically because Ming Chan was getting hoofed out and I asked [Vitalik](/people/vitalik-buterin) what I could do to help with the transition or whatever. And he said, can you go and talk to people in the community and sort of see what they think the Ethereum Foundation should be? Like, what should we be doing?

[[01:38]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=98s) **Amir Taaki:** Oh dear, if you ask that question, it's already a bad sign.

[[01:42]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=102s) **Bob Summerwill:** Well, my question at that point was, so [Ming](/people/ming-chan) was terrible. She was one of the least professional people I've ever worked with. She was an absolute nightmare. And my thought was, well, what the hell was happening before that, that she looked like a good choice. And there was a real sort of shroud of mystery as to what had happened then, even though it was only like three or four years before. And so like, there just was no canonical history. Nobody really knew what happened. Even something as basic as like, was [Charles](/people/charles-hoskinson) like kind of a co-founder or not? He kind of says he was maybe, but maybe he wasn't. Which is just crazy because, you know, he was there, like, doing videos and, like, there's just tons of evidence. But anyway, so I started digging back into that stuff.

[[02:35]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=155s) **Amir Taaki:** What about Anthony Di Iorio as well?

![anthony](https://duncan.co/wp-content/uploads/2014/04/Duncan-Rawlinson-Photo-89385-Ethereum-Meetup-Toronto-Ontario-Canada-20140409-IMGL8770-1024x575.jpg)

[[02:37]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=157s) **Bob Summerwill:** Anthony Di Iorio, yes, that's right.  There were three ...

[[02:39]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=159s) **Amir Taaki:** Didn't he get rugged or something?

[[02:41]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=161s) **Bob Summerwill:** There was Anthony Di Iorio.

[[02:43]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=163s) **Amir Taaki:** I don't know the history.

[[02:44]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=164s) **Bob Summerwill:** There was Anthony D'Onofrio that was "[Texture](/people/anthony-d-onofrio/)". And there was another guy called Anthony Eufemio who did this Digix gold thing. But anyway, that's where I started getting interested in Ethereum history. It's just like, well, what the hell happened? I mean, what ended up happening is everything I recommended to [Vitalik](/people/vitalik-buterin) never happened. It was just completely a disaster, you know. [Ming](/people/ming-chan) went and he just got [Aya](/people/aya-miyaguchi/). Here you go, it's a new one. No changes. Like, the what people wanted was like transparency, they wanted community input, they wanted like professional executive like operational. It's like, you know, let's have organization to help the devs basically. But primarily it was like don't be a Swiss opaque foundation with no accountability or any public information at all. Anyway, so I put the stuff aside at that point. It's like, great, that was a good use of my time, you know, advising the millionaire for free for months. But then just recently, so the guys I now work with, they started recording some videos because, so [Kieren](/people/kieren-james-lubin/) is, [Kieren James-Lubin](/people/kieren-james-lubin/) is [Joe](/people/joe-lubin/)'s son. So he was actually around from March 2014 and the others were sort of involved from 2015 and they were just like, we should like, get some of these memories down, right? It was like eight years ago at that point. So they did a couple of those videos and I really loved them and I was making [tons of notes](https://bobsummerwill.com/2023/10/17/the-early-days-of-ethereum-videos/) and finding [links and photos](https://bobsummerwill.com/2023/11/10/notes-from-blockapps-the-early-days-of-ethereum-part-iii-bob-summerwill-guest-appearance/") and all of this. And then they interviewed me for [the third one](/videos/episode003-bob-summerwill/). But then more recently, I did interviews [with Taylor Gerring](/videos/episode004-taylor-gerring/) and [with Texture](/videos/episode005-anthony-d-onofrio/). And just tons of stuff came out of that. And then I just kind of like shoved those together. And there you go. That's [Early Days of Ethereum](https://earlydaysofeth.org) is this sort of combination of sort of biographical stuff and photos and videos, links to articles. And then, you know, [conversations with people](/conversations). And it's really just because it's like this is history, right?  This stuff ...

[[05:13]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=313s) **Amir Taaki:** It's crazy seeing, being in crypto since like, you know, almost the beginning and seeing the stuff that happens but seeing what got recorded, right? And it's like, wow, like history really is just written by the victors. Yeah, it's just, it's crazy.

[[05:35]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=335s) **Bob Summerwill:** So the one thing on that score, which I don't know if you know, is so the [original Bitcointalk post for announcing Ethereum](https://web.archive.org/web/20140208053651/https://bitcointalk.org/index.php?topic=428589.0), so that was done on the 23rd of January 2014, right, just before the Bitcoin Miami. That page got changed.

![original](/images/bitcointalk.org/2014.01.23/screenshot.png)

[[05:58]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=358s) **Amir Taaki:** Oh, what the fuck?

[[06:00]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=360s) **Bob Summerwill:** About eight months later, probably around August, September, it got quick edited. And a whole load of people that were there [got written out](https://bitcointalk.org/index.php?topic=428589.0/index.php?topic=428589.0).

![original](/images/bitcointalk.org/2025.12.31/screenshot.png)

[[06:13]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=373s) **Amir Taaki:** Oh, you mean like just somebody, they?

[[06:16]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=376s) **Amir Taaki:** Well, I mean, I guess you can edit [Bitcointalk](https://bitcointalk.org/) pages.

[[06:22]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=382s) **Amir Taaki:** But what about the people getting deleted and stuff?

[[06:24]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=384s) **Bob Summerwill:** So yeah, just a whole bunch of people got deleted out.

[[06:27]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=387s) **Amir Taaki:** By who, the admins?

[[06:29]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=389s) **Bob Summerwill:** Well, by [Vitalik](/people/vitalik-buterin), I imagine.

[[06:31]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=391s) **Amir Taaki:** But how do you edit people out of your thread?

[[06:35]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=395s) **Bob Summerwill:** No, no. The [original post](https://web.archive.org/web/20140208053651/https://bitcointalk.org/index.php?topic=428589.0) said, hey, we're Ethereum, blah, blah, blah, blah, blah. This is the team. This is what we're doing. So that post, which at the start went, look, here's about the 30 people that are working on things, went down to, oh, right, [Charles](/people/charles-hoskinson) and [Amir](/people/amir-chetrit). Well, [Amir](/people/amir-chetrit), I don't think, was in the original post because he didn't want to be. But [Charles](/people/charles-hoskinson) got edited out. [Stephan](/people/stephan-tual) and Taylor Gerring got edited in and all the rest of the team got [shoved off the page](https://bitcointalk.org/index.php?topic=428589.0/index.php?topic=428589.0).

*(Bob: Looking again, Taylor Gerring got shafted, actually!  He was one of those removed in new post despite being one of the co-founders of the Ethereum Foundation, alongside Vitalik Buterin and Mihai Alisie.  The "can be found here" link goes to a page [long deleted but archived](https://web.archive.org/web/20150214231051/https://blog.ethereum.org/team/) which, to be fair, does have many of the people listed in the original post.)*

Yeah. But, you know, many, many people that were involved early, you know, they're just like forgotten. You know, they were on, you know, if you go back to early Internet Archive versions, you can find some names. So, I mean, some people... Like Mr. Ryan Taylor over here. So Ryan worked on all the early websites for months. You know, these pages that thousands or tens of thousands of people have seen as, you know, this is the main Ethereum page. Nobody knew who did it. I didn't know. Like, you know, just on one of the early ones, just for a little while, it just said, like, Ryan Taylor "Web". I don't know who Ryan Taylor is. Like, so a number of these names, you know, I don't know who they are or maybe start to find them. And basically, you know, it's like the work of many hands, right? This is something I was talking about is, you know, you've got, like, great man theory, right? The thought that you have these exceptional people and by amazing powers of, you know, intellectual skills and power of force that they bend the universe to their will. And, you know, that's kind of the story that people like.

[[08:23]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=503s) **Amir Taaki:** It's kind of like [feudalism](https://en.wikipedia.org/wiki/Feudalism). It's like you [pledge your allegiance](https://en.wikipedia.org/wiki/Homage_(feudal)) to "his liege".

[[08:28]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=508s) **Bob Summerwill:** That's right.

[[08:29]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=509s) **Amir Taaki:** And if your liege becomes popular, you will gain through him. You will live vicariously.

[[08:38]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=518s) **Bob Summerwill:** Right.

[[08:39]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=519s) **Amir Taaki:** That's how the tech world operates.

[[08:41]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=521s) **Bob Summerwill:** Yeah, well, you know, like people are looking for heroes and, you know, their champions to cheer. You know, in the highest case, you know, something like [North Korea](https://en.wikipedia.org/wiki/North_Korea), they literally think the leader is, you know, [is a god](https://en.wikipedia.org/wiki/North_Korean_cult_of_personality). You know, they're just crying in front of him, just...

![crying](https://assets.korearisk.com/uploads/2023/12/Copy-of-Featured-Image-Empty-2023-12-12T153311.774.png)

[[09:00]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=540s) **Amir Taaki:** Wow, that's amazing.

[[09:00]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=542s) **Bob Summerwill:**  So, yeah, I'm trying to record the real truth and give people their voices and just make sure stuff doesn't get lost, right? So many things have already been lost.

[[09:11]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=551s) **Amir Taaki:** [Pete Rizzo](https://x.com/pete_rizzo_) did that for Bitcoin. Right. He did really, really deep history of Bitcoin stuff.

[[09:19]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=559s) **Bob Summerwill:** Yeah, yeah. So...

[[09:21]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=561s) **Amir Taaki:** You should check him out as well.

[[09:23]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=563s) **Bob Summerwill:** Yeah. So, yeah, I'm finding stuff. And, you know, you shared your [old YouTube channel](https://www.youtube.com/@BoxxyBrassin) with me as well. You seem to have a reasonable number of artefacts of various ages that have been preserved about you.

[[09:39]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=579s) **Amir Taaki:** It's funny because I was just filming and I was just putting my video camera on the internet on YouTube. So that's why I have that page.

[[09:48]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=588s) **Bob Summerwill:** Right. It's funny. There's a guy called Freddie Heartline who was one of the guys that started the main kind of like, it was like [Bitcoin co-working space or whatever in Vancouver](https://www.dctrl.wtf/). But he was saying he's got loads of stuff on his Facebook account of all things. Basically, even though it's like as boomer as you can imagine, it's like, yep, loads of other people have had things on so many other platforms and everything. They've all got lost and fucked. I've just posted shit on my Facebook page and it's, you know, it's up there forever. Obviously like preserving things yourself is way better than relying on any of these platforms. But yeah, like so much stuff is just like rotted because people have deleted their accounts or like a platform isn't around anymore or just, you know, general, general kind of rot. But...

[[10:50]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=650s) **Amir Taaki:** Everything I have that's survived is because I uploaded it to a normie platform.

[[10:57]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=657s) **Bob Summerwill:** Yes, this is it.

[[10:58]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=658s) **Amir Taaki:** I periodically have a cleansing. It's not accidental, but it's just like every few years, your data just resets to zero. I don't know, it sucks, but you know.

[[11:12]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=672s) **Bob Summerwill:** Well, that's it. Yeah. I mean, so yeah, that was [Freddie](/people/freddie-heartline)'s super normie story is still using Facebook even though, you know, it's Facebook. So, yeah, I mean, you know, you were a [free software](https://en.wikipedia.org/wiki/Free_software) guy and a general developer on that thread and early Bitcoin dev. So how did you find Bitcoin?

<h3 id="finding-bitcoin">Finding Bitcoin (2010)</h3>

[[11:45]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=705s) **Amir Taaki:** So I was working on [free software](https://en.wikipedia.org/wiki/Free_software) for five, six years. And then I became a professional poker player.

[[11:57]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=717s) **Bob Summerwill:** Right.

[[11:58]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=718s) **Amir Taaki:** That was for over two years. And the poker sites, you know, you're playing against other players. Right. But the way the sites operate, the platform, they take a cut out of every pot, basically, every game that you play. Right. But the sites charge a huge amount of fees for a really crappy service. So I had this idea, what if you could have a P2P site, then it wouldn't have rake and fees. Right. So I had like the design for it, but then the main issue was the payment system. And so then I was on IRC in this channel with other anarcho-hackers, I know. And I was telling them about that. And this guy is like a mathematician that worked for the W3C. His name's Melvin.

*(Bob - It looks like this was [Melvin Carvalho](https://x.com/melvincarvalho) who Grok describes as "a mathematician and computer scientist who has contributed to W3C initiatives, particularly around semantic web technologies and standards like RDF and linked data.  He studied mathematics at Cambridge University under Stephen Hawking and is a life member of the Cambridge University Computer Laboratory Ring.  Carvalho has a background in both math and web development, with involvement in various open-source and decentralized projects.  Carvalho himself has engaged with Bitcoin and crypto topics over the years, including discussions on Lightning Network and broader web payments.")*

![melvin](https://avatars.githubusercontent.com/u/65864?v=4)

[[12:54]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=774s) **Amir Taaki:** He dumped just like 10 links in there. And they're like random open source projects for money. And there's stuff like LETS. Have you heard of LETS?

[[13:05]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=785s) **Bob Summerwill:** No, no.

*(Bob - So LETS is apparently "[Local exchange trading system](https://en.wikipedia.org/wiki/Local_exchange_trading_system)".  As per Wikipedia this is "a locally initiated, democratically organised, not-for-profit community enterprise that provides a community information service and records transactions of members exchanging goods and services by using locally created currency. LETS allow people to negotiate the value of their own hours or services,[2] and to keep wealth in the locality where it is created.")*

[[13:06]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=786s) **Amir Taaki:** At one point, people were really into that. But it's like, you but off, I think it's like offering your labor, you get like a token or something. But anyway, so I was going through all of these links and they're going no, no, no, no. I saw Bitcoin, I opened the page for Bitcoin, it goes Bitcoin is a P2P currency that cannot be controlled by governments or central banks. And I was like, that's garbage, like obviously not. That's just because there's like loads of random projects like that on the [SourceForge](https://en.wikipedia.org/wiki/SourceForge) back in the day. Like I once saw like a Jurassic Park video game and it was going like you could do everything, you can punch through the walls, you can hack the terminals, you can hunt the dinosaurs. And I was like, whoa, sounds amazing. And I checked the code and it said like main.cpp and they had like just, you know, like.

[[14:03]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=843s) **Bob Summerwill:** One file!

[[14:05]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=845s) **Amir Taaki:** Yeah, like it just got bored of it, like got, it just wrote the idea. Right, right. And then like I kept checking months, every so often. And there was like zero progress on that. So I thought Bitcoin was like one of those kind of projects. I went, no, no, no. And then I was like, oh, they're all shit. So I was like, okay, let's take a deeper look at all of them then. And so then when it came to Bitcoin, I downloaded the source code. And I started going through the source code. And I was like, oh, that's really interesting. First of all, Bitcoin source code is about 15,000 lines of code at that time. Which, you know, 15,000 lines of code, it's actually a small amount of lines of code. Like some programmers can even do that in like a week or something, like very talented programmers. But so I was like, oh, but it's not nothing either. It's not like that Jurassic Park game I was just describing. So it's like 20, you know, 15,000 lines of code, like less.

[[15:01]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=901s) **Bob Summerwill:** You can read through and kind of understand that pretty well.

[[15:04]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=904s) **Amir Taaki:** Yeah, so I printed it all out and I covered it all over my floor.

[[15:06]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=906s) **Bob Summerwill:** Right.

[[15:07]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=907s) **Amir Taaki:** You know, it's like my pornography that I'm looking at. I started studying it.

[[15:11]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=911s) **Bob Summerwill:** Yeah.

[[15:11]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=911s) **Amir Taaki:** And it started to make sense. I was like, oh, very interesting. Oh, interesting. And so when I figured out how it worked, I was like, whoa, this is amazing. I'm going to work on this.

[[15:22]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=922s) **Bob Summerwill:** So what month do you think that was?

[[15:24]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=924s) **Amir Taaki:** That was the summer of 2010. Right. So that's when I, like, basically, I was like, okay, I'm just doing this from now on. And so then I had, like, I made, like, a plan of, like, oh, in 10 years we'll be here, et cetera.

[[15:38]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=938s) **Bob Summerwill:** Right, right.

[[15:39]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=939s) **Amir Taaki:** Because this is like a long-term thing I'm going to work on. But then that basically just happened really quickly. It just started growing massively. So it was pretty crazy. But I started working on Bitcoin. I started writing code. I was one of the first five Bitcoin developers, which I was listed on [bitcoin.org](https://bitcoin.org). But that page is gone from the internet. So people, it's like, they don't like that.

[[16:01]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=961s) **Bob Summerwill:** Maybe it got archived.

[[16:03]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=963s) **Amir Taaki:** No, I don't think so.

[[16:04]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=964s) **Bob Summerwill:** No, just gone.

[[16:05]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=965s) **Amir Taaki:** Bitcoin web page with the list of names. Right. So I had a war with Gavin Andresen. Yeah. Because he was like, he's a motherfucker in many ways. But basically, he really likes regulations and the state and stuff like that. He's a statist. And he's into the banks and stuff. But also, he was just not that good a dev. And when there was other young devs that were coming up, instead of trying to nurture them, he was instead trying to push them out and try and keep control. So I became his main enemy, basically. I was like his first enemy.  And then he kind of ...

![gavin](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTerSDloHoN5DfRO64ocL5jurIqZCcPnIHkS7NXqsVIfk6DNjMyYCbXzDPB2LzU57HHjQUA77uwzUsIEPvOaF6qHT8YgGaAoOz52dfTgTY&s=10)

[[16:41]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1001s) **Bob Summerwill:** Seemed like he never wanted the role, even.  He just sort of ...

[[16:47]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1007s) **Amir Taaki:** Lucked into it.  And then he was there and he's like, I want to keep it. I really like it. I went to the very first event presenting Bitcoin to an audience of bankers. And so I did my talk and afterwards Gavin Andresen, he DM'd me and he goes, I think you should not talk at conferences ever again. I was like, who the fuck is this guy? You're not in charge of your project. Fuck you.

[[17:14]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1034s) **Bob Summerwill:** Was this in London or in the US somewhere? Amsterdam. Amsterdam, right.

*(This was the [EPCA Payment Conference](https://www.pymnts.com/news/2010/epca-payment-conference-2011-amsterdam/) in Amsterdam, 4th-6th April 2011).  EPCA is [European Payments Consulting Association](https://europeanpaymentadvisors.com/).  Amir told me that he was invited there by Sirius ([Marti Malmi](https://x.com/marttimalmi)).*

{% include content-embed.html
  src="https://www.youtube.com/embed/v0m2UN3nT0c"
  url="https://www.youtube.com/watch?v=v0m2UN3nT0c"
  title="Amir Taaki at EPCA Conference 2011 - witcoin.com developed by Jason Khanlar, enthusiastically presented by Amir Taaki"
  description="Amir Taaki at EPCA Conference 2011 - witcoin.com developed by Jason Khanlar, enthusiastically presented by Amir Taaki"
  author="Jason Khanlar"
  date="2011-04-11"
  site="YouTube"
%}

[[17:18]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1038s) **Amir Taaki:** But anyway, so... You know, one of the first things that Gavin Andresen did was to try and get my name off of that list. He got his name added. But anyway, so he was like that. And, you know...

<h3 id="early-bitcoin-development">Early Bitcoin development, Libbitcoin, and BIPs</h3>

[[17:37]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1057s) **Bob Summerwill:** I mean, did you end up starting [Libbitcoin](https://libbitcoin.info/) quite early then?

[[17:42]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1062s) **Amir Taaki:** Yeah, 2011, yeah. Like March 2011 or something.

*(Bob - The first commit was on [18th May 2011 by "phantomcircuit"](https://github.com/libbitcoin/libbitcoin-system/commit/9dea4682bf0e4247f3c4cb8a6c140ade61bf7df7).  That is [Patrick Strateman](https://github.com/pstratem), who also collaborated with Amir on Britcoin and Intersango as part of Bitcoin Consultancy), with Amir's first commit [on the following day](https://github.com/libbitcoin/libbitcoin-system/commit/f75697ab92894a37841f6617b8f5154dfbdc93a6) as "genjix".  His first pull request against [bitcoin/bitcoin](https://github.com/bitcoin/bitcoin) was opened on [16th Apr 2011](https://github.com/bitcoin/bitcoin/pull/164))*

[[17:46]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1066s) **Bob Summerwill:** And was that around the same time as BIPs? Was that kind of like you were coordinating that? It's kind of like, right, we need specs, we need multiple clients.

*(Bob - BIPs is the Bitcoin Improvement Proposals process, based on a similar process for Python, [PEPs](https://peps.python.org/).  The first commit for the BIPs system was made on [29th October 2011](https://github.com/genjix/bips/commit/392e9f72b2fb866b3ca880ac6adb663d1c2e2039)))*

[[17:56]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1076s) **Amir Taaki:** Yeah, because [Gavin](/people/gavin-andresen) saw Bitcoin not as an open source project but as a startup. Right. So he's like we need to like pull ranks and we need to like make these features and changes so we can make a payment system that's fast

[[18:15]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1095s) **Bob Summerwill:** Make a roadmap?

[[18:17]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1097s) **Amir Taaki:** Yeah, I don't know. It was more like he wanted to operate it like a business.

[[18:19]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1099s) **Bob Summerwill:** Right.

[[18:20]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1100s) **Amir Taaki:** And so I was very worried because he wasn't treating it like an open source protocol. It was like, we need to add this thing, we need to add that thing. So I was like, there needs to be some constraint on his wild ideas. So that's why I proposed that system. And the thing is, like, [Gavin](/people/gavin-andresen), I mean, I don't want to talk shit about people, but anyway. Yeah, so I made that BIP system for that reason. I was just afraid of that direction, that side of Bitcoin, which they later [made a foundation for](https://en.wikipedia.org/wiki/Bitcoin_Foundation). And they put themselves as Chief Scientist and they tried to do this takeover of business guys on Bitcoin. And they wanted, they were like, we have to push out the anarchists. Yeah, it was just like, it's like this attitude of like, oh, these crazy anarchists, they've invented this like new plaything. And it's just so, it's like really interesting toy. And if we just pry it out of their hands, then we can get it accepted by big banks and then it can do something useful.

[[19:30]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1170s) **Bob Summerwill:** You're putting people off.  You're putting people off all this anarchist talk. We're trying to sell this thing.

[[19:36]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1176s) **Amir Taaki:** Yeah, our side was like more like, oh, this is like an actual new economic paradigm, right. And, you know, so it's interesting because now all the Bitcoin maxis are very Bitcoin maxi. But I'm, for example, when I first met [Pieter Wuille](https://github.com/sipa). Yeah, or [Sipa](https://github.com/sipa), one of the core devs of Bitcoin, in 2011, and I was talking to him in a conference and he says, he says, oh, "I'm not really interested in the monetary aspect of Bitcoin. Right. I'm more interested just in the scripting."

![sipa](https://avatars.githubusercontent.com/u/548488?v=4)

[[20:11]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1211s) **Bob Summerwill:** Just the tech.

[[20:12]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1212s) **Amir Taaki:** No, the scripting language.

[[20:13]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1213s) **Bob Summerwill:** Okay, right.

[[20:14]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1214s) **Amir Taaki:** Because it enables smart contracts and programmability. Yeah. He wasn't interested in the money thing. Right. So this new Bitcoin fanatic ideology is like retroactive. Back then, people in Bitcoin were like, oh, we want to explore.

[[20:31]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1231s) **Bob Summerwill:** Yeah, yeah, yeah.  Well, I mean, for the longest time, there was this thought that, you know, all innovation that happens elsewhere will come back to Bitcoin, right? It's inevitable. You know, we don't have to be like pushing anything ourselves because, you know, like it'll just all come home.

[[20:47]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1247s) **Amir Taaki:** Yeah, the problem with Bitcoin is that it became taken over by these people that they like going to conferences. Right. It's like, you know, they see people they know, you know, a lot of, you know, culty, massive Bitcoin people. You know, they will want to like, like, oh, I love you. You're amazing. You know, like... And these people, they're not interested in the bigger mission or sense of purpose. It's like it's about themselves. And so Bitcoin got taken over by these like influencers, essentially. And the thing is, when somebody comes and says, you know, let's do something big, let's rock the boat, they're going to see that as an enemy. Because that's why Bitcoin is so conservative is because it's been taken over by this class of people.

[[21:38]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1298s) **Bob Summerwill:** There was like, (Michael) [Saylor](https://x.com/saylor/)'s like absolutely the worst for this. There was a little video of him I saw the other day or yesterday, which was saying the biggest risk to Bitcoin is like competent and enthusiastic devs.

![saylor](https://pbs.twimg.com/profile_images/1485632175932383235/8t0DGo6V_400x400.jpg)

*(Bob: So the exact quote ([source](https://crypto.news/michael-saylor-debate-over-bitcoin-spam-filter-removal/)) was “I think protocol proposals, however well-intentioned, can go horribly wrong. And I think that this debate we see right now over the OP_RETURN limit. The biggest danger is a very talented, well-funded, well-intentioned developer trying to do something good. The good ideas will destroy the company. The good idea for Bitcoin will destroy Bitcoin. If I wanted to destroy Bitcoin, I would just fund infinite developers who are very talented and tell them to make it better" at Bitcoin Corporate Day in September 2025.)*

[[21:59]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1319s) **Amir Taaki:** Well, I need to see the full quote, because that sounds ridiculous.

[[22:03]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1323s) **Bob Summerwill:** But he basically seems to have gone for this absolute, full-on ossification of saying, you know, these developers, they want to actually change things, and that's a problem. We should never change anything. We need to be thinking in 100-year timelines. Because this is the store of value that's going to save humanity. And that's all there is, right? That store of value narrative. And don't use it. Don't use your Bitcoin.

<h3 id="sovereign-individual-and-surveillance">The Sovereign Individual and surveillance</h3>

[[22:46]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1366s) **Amir Taaki:** Well, the thing is, there's this book from the 90s, which is [The Sovereign Individual](https://en.wikipedia.org/wiki/The_Sovereign_Individual), right. I'm not saying I agree with all the book, but it does make interesting analysis. It's definitely worth studying. And it says that, it's from 1997, and it's talking about cryptocurrency, and it's saying how the invention of cryptography will enable the proliferation of markets, like cyber markets in cyberspace, right. And the capital will become hyper liquid and will be able to flow from any place to any other place. And the governments would lose their power to tax this capital or control this capital. And therefore, it would inherently change the logic of violence. And this is also a very big idea originally in crypto as well. Early days of Bitcoin, people would always bring up this book. And yet, it hasn't come to fruition. So, you know, just in case, it hasn't come to fruition. And so we have to ask ourselves why. Like, I don't think the thesis is wrong. I just, I think the thing that they missed was surveillance because the surveillance apparatus obviously can monitor all the flows or the activity of people. And if you can do that, then now you have law enforcement. Right. So, yeah.

![sovereign](/images/m.media-amazon.com/2026.01.05/images/I/51wvIwu63vL._SL240_.jpg)

[[24:43]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1483s) **Bob Summerwill:** And, you know, you...

[[24:46]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1486s) **Amir Taaki:** I'll be able to pause a sec. For sure. Yeah, I just need to listen to this. Yeah, yeah.

[[24:52]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1492s) **Bob Summerwill:** So, you know, from what I could see, you know, you started traveling around the world a bit, right? You were in various different places at different times. I mean, were you, you know, were you going around meeting different people, like building, you know, building different things? How was that?

<h3 id="squats-and-dark-wallet">Squats, privacy tech, and Dark Wallet</h3>

[[25:13]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1513s) **Amir Taaki:** Yeah, I was traveling a bit. I actually come from a movement of anarchist hackers in Europe, which were living in squatted buildings. Right, right. So, you know, there's like in Europe, there's all these squatter's laws, which if a building is like abandoned, you can move into the building. And some squats, they last for years. Yeah. And we'd get amazing buildings. So in Amsterdam, we had a huge house. Imagine we're working on free software. We're broke devs. It's a really useful lifeline to have. And also like living in the center of the cities. I mean, like now, and even working in crypto, I look at the price of property and like it's ridiculous. Yeah. It's like really ridiculous. I think like societies really need that kind of stuff, like support people working on projects and software and stuff like that. It's a shame we don't. But anyway, I was part of those hacker movements, so I had lots of places in Europe I could go to. We would have communities, people working on free software in Barcelona, in London, in different places.

[[26:36]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1596s) **Bob Summerwill:** So when did your focus switch to [Dark Wallet](https://github.com/darkwallet/darkwallet)?

![amir and cody](/images/m.media-amazon.com/2026.01.05/images/M/MV5BNDNhZmMxNmEtMDUxNy00MTU1LTliNTEtNmU1MTI5ODJlNzUzXkEyXkFqcGdeQWRpZWdtb25n._V1_.jpg)

[[26:42]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1602s) **Amir Taaki:** So actually, I made the first [CoinJoin](https://en.bitcoin.it/wiki/CoinJoin) and [Stealth implementations](https://github.com/darkwallet/stealth.js) in Bitcoin, which are the very first privacy techniques. And so I was working on Bitcoin implementations, nodes, but I was also focused on the privacy. So I already did those projects before.

[[27:03]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1623s) **Bob Summerwill:** Right.

[[27:04]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1624s) **Amir Taaki:** And then the [Dark Wallet](https://github.com/darkwallet/darkwallet), I was like, we need to create a product. We need to create a wallet or something. Right. So that's why we made the [Dark Wallet](https://github.com/darkwallet/darkwallet).

[[27:15]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1635s) **Bob Summerwill:** And when did you first meet [Vitalik](/people/vitalik-buterin)?  Can you remember?

<h3 id="meeting-vitalik-and-calafou">Meeting Vitalik: London, Calafou, and Bitcoin Magazine</h3>

[[27:20]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1640s) **Amir Taaki:** Yeah. So I said I was living in these squats around Europe. Yeah. So after 2012, then... There was a friend I met many, many years ago when I was hitchhiking, and he was a really cool dude. And I just saw him randomly on the internet and I was like, bro, I'm making a conference. Come to my conference. And he's like, okay. And I didn't hear back from him. It turns out he walked onto a ferry without any documentation. He came from Estonia across Europe. He came into England and he now looked like Jesus. But he had long hair and long beard and stuff.

[[28:00]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1680s) **Bob Summerwill:** Didn't look good for an entry.

[[28:02]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1682s) **Amir Taaki:** Anyway, [Mihai](/people/mihai-alisie) ... Yeah, met him at the conference. It was like enchanted by him. He was like, "I just met this guy, your friend. He looks like Jesus, man." Like, and then I can't remember like how it happened, but yeah. So then he was meant to come back with me to my house, but actually he missed the train. And so he ended up just walking into a random building in London. And that was like the building of the [Occupy activists](https://en.wikipedia.org/wiki/Occupy_movement). So then I went there. And then [Mihai](/people/mihai-alisie) came and we just started living there. And then we started setting up our hack lab there. But then also I have friends in Spain that are hackers that also they're making these communities. They also had [Calafou](https://calafou.org/). So then they decided to make [Calafou](https://calafou.org/), which was eco-industrial.

![calafou](https://anoiadiari.cat/static/articles/5nfy3/61964.jpg)

[[28:50]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1730s) **Bob Summerwill:** Near Barcelona, right?

[[28:51]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1731s) **Amir Taaki:** Yeah. So I was living with [Mihai](/people/mihai-alisie), I think, for like a year in London.

[[28:54]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1734s) **Bob Summerwill:** Right.

[[28:55]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1735s) **Amir Taaki:** And then we went to [Calafou](https://calafou.org/) in Barcelona. Right. And [Mihai](/people/mihai-alisie) co-founded the [Bitcoin Magazine](https://en.wikipedia.org/wiki/Bitcoin_Magazine) with [Vitalik](/people/vitalik-buterin).

![bitcoin magazine](https://store.bitcoinmagazine.com/cdn/shop/files/Vol-1_Issue_Product_Image-1.png?v=1761681804&width=1080)

[[29:03]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1743s) **Bob Summerwill:** Right, right.

[[29:04]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1744s) **Amir Taaki:** And so then I was also working on the [Bitcoin Magazine](https://en.wikipedia.org/wiki/Bitcoin_Magazine) with them.

[[29:08]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1748s) **Bob Summerwill:** Oh, I see. Right, right.

[[29:10]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1750s) **Amir Taaki:** You know, I didn't write loads of stuff. It was mainly those guys writing stuff. But, like, for example, I helped [Mihai](/people/mihai-alisie) with the graphic design.

[[29:18]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1758s) **Bob Summerwill:** Right.

[[29:18]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1758s) **Amir Taaki:** Like, some of the covers I helped design when we were high.

[[29:22]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1762s) **Bob Summerwill:** There you go.

{% include content-embed.html
  src="https://www.youtube.com/embed/4oZs6RpLuak"
  url="https://www.youtube.com/watch?v=4oZs6RpLuak"
  title="Vitalik Buterin Interview - Bitcoin And The World At Large"
  description="Vitalik Buterin is the lead writer and co-founder of Bitcoin Magazine, and has been actively involved in Bitcoin-related projects. His interests include math, computer science, online education, economics and linguistics."
  author="BoxxyBrassin"
  date="2013-08-31"
  site="YouTube"
  img="https://i.ytimg.com/vi/4oZs6RpLuak/maxresdefault.jpg"
%}


[[29:23]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1763s) **Amir Taaki:** So then, anyway, we went to [Calafou](https://calafou.org/), and then [Vitalik](/people/vitalik-buterin) came to live with us. Yeah. And so then it was, and then there was like two other Spanish hackers, which are old friends of mine. And we were working together on projects. Yeah, so I'm, right, that was when we started [Dark Wallet](https://github.com/darkwallet/darkwallet), right? I knew [Cody](/people/cody-wilson) (Wilson) from the conference.  So I says like, [Cody](/people/cody-wilson), let's start... 

![cody](https://upload.wikimedia.org/wikipedia/commons/5/54/Cody_Wilson.jpg)

[[29:46]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1786s) **Bob Summerwill:** Which conference from the Amsterdam conference, the London one, that's the one that you, right, right? Was that the one that you organized?

[[29:58]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1798s) **Amir Taaki:** Yeah, I did the [2011 one in Prague](https://bitcointalk.org/index.php?topic=40272.0). Right. And the [2012 one in London](https://www.bitmex.com/blog/london-2012-the-2nd-bitcoin-conference) as well.

[[30:02]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1802s) **Bob Summerwill:** Right, right.

[[30:03]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1803s) **Amir Taaki:** Yeah. So, yeah, at the time we were working together in the hack lab. [Mihai](/people/mihai-alisie) had his, I think it was [Akasha](https://akasha.org/). I'm not sure.

[[30:13]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1813s) **Bob Summerwill:** No, I think he did that later.

[[30:15]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1815s) **Amir Taaki:** Oh, no, it was Agora or something.

*(Bob: The project was called [egora](https://web.archive.org/web/20131011013639/http://egora.me/) but there is very little I can find about it)*

[[30:17]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1817s) **Bob Summerwill:** Right.

[[30:18]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1818s) **Amir Taaki:** Anyway, he was creating, I guess, what [DarkFi](https://dark.fi) is going to be now, like a social network marketplace kind of thing. Okay. So then he was working on that, and my friends were working on that. And [Vitalik](/people/vitalik-buterin) was working on Bitcoin stuff. I was working on Bitcoin stuff. And then he was also working, they were working on the magazine. Yeah. So we were doing a whole bunch of stuff there in the hack lab. And then, you know, we co-founded the [Dark Wallet](https://github.com/darkwallet/darkwallet).

[[30:49]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1849s) **Bob Summerwill:** Right, right. And Peter Todd as well? No, Peter Todd came later.

[[30:56]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1856s) **Amir Taaki:** But you can see the original [Dark Wallet](https://github.com/darkwallet/darkwallet) announcement video on YouTube. And it has all the co-founders listed.

{% include content-embed.html
  src="https://www.youtube.com/embed/Ouo7Q6Cf_yc"
  url="https://www.youtube.com/watch?v=Ouo7Q6Cf_yc"
  title="Dark Wallet"
  description="Trick or Treat, Western Civilization."
  author="Defence Distributed"
  date="2013-10-31"
  site="YouTube"
%}

{% include content-embed.html
  src="https://www.youtube.com/embed/w5zmLVBxSGs"
  url="https://www.youtube.com/watch?v=w5zmLVBxSGs"
  title="The Coming of Darkwallet"
  description="Join us on an adventure at the crossroads of two historical narratives. Your life, mine and others stand before an epochal decision. The choice, is up to us."
  author="BoxxyBrassin"
  date="2014-10-02"
  site="YouTube"
%}

[[31:04]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1864s) **Bob Summerwill:** Right, right.

[[31:06]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1866s) **Amir Taaki:** So, yeah, we were working on that. So the [CIC was a network of 10,000 cooperatives throughout Catalonia](https://es.wikipedia.org/wiki/Cooperativa_Integral_Catalana). Okay. And the whole reason that was made is because there's like a big anarchist movement in [Catalonia](https://en.wikipedia.org/wiki/Catalonia). Yeah, yeah. And they... You know, they'd been doing their thing for many years.

*(Bob: the 10,000 cooperatives figure seems to be very inflated.  The Spanish-language Wikipedia article says "In 2014, the CIC has around 300 individual or collective productive projects, about 30 local centers, so-called ecoxarxes, 15 community life projects and about 1,700 individual and collective partners. The cooperative itself estimates that 4,000 to 5,000 people are involved")*

[[31:29]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1889s) **Bob Summerwill:** Right.

[[31:30]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1890s) **Amir Taaki:** But then they started to mature as anarchists, and they were like, so to think more about economics.

[[31:35]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1895s) **Bob Summerwill:** Right.

[[31:35]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1895s) **Amir Taaki:** And organization and stuff. Right. It's something I also like about this [Spanish tradition of anarchists](https://en.wikipedia.org/wiki/Anarchism_in_Spain). Right. They're a lot more organized than, for example, like London, where it's just like crazy people going, you know, like. Yeah. So they... Yeah, so they were like, okay, we need to make a network of [cooperatives](https://en.wikipedia.org/wiki/Cooperative). And cooperatives need to provide all the basic things that people need to live. And we would therefore become autonomous from the state. So we'd become our own parallel system, which is cool, cool stuff. And so our team was actually the cryptocurrency part of that. They were interested in cryptocurrency because, for example, trading inside the network allowed people to avoid paying taxes because they consume from each other. But they also wanted to exchange outside of it. So they were like, oh, we can use cryptocurrency to do that. So we set up the [first ATMs in Catalonia](https://bitcoinmagazine.com/culture/bitcoin-trendy-spain-100-atm-installations-1393463954). Right, right. Cryptocurrency is part of this cooperative.

*(Bob: So it seems it was not quite the first ATM in Catalonia, but very close!)*

[[32:35]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1955s) **Bob Summerwill:** Right.

[[32:35]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1955s) **Amir Taaki:** But they also had a research lab, which was a giant factory complex in the Catalan countryside. Right. Which is, it was burnt down and the people came there with a proposal to the owner to buy it from the owner. Right. But then also there they had like, it's like a village basically, it's massive. Right. But they had like an industrial research sector, electronics. One of them was the hacking stuff, which is our hack lab.

[[33:02]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1982s) **Bob Summerwill:** Right.

[[33:02]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1982s) **Amir Taaki:** And that's where we were doing our cryptocurrency stuff.

[[33:04]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1984s) **Bob Summerwill:** Right, right.

[[33:06]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=1986s) **Amir Taaki:** But anyway, as part of that research of the [CIC](https://es.wikipedia.org/wiki/Cooperativa_Integral_Catalana) and the tools that the [CIC](https://es.wikipedia.org/wiki/Cooperativa_Integral_Catalana) needed, that's how we came up with these ideas, which is the ones maybe you've seen the page. It's on archive.

[[33:20]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2000s) **Bob Summerwill:** Right.

[[33:20]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2000s) **Amir Taaki:** On System One. It's about BitLaw. Hmm. Anyway, I'm not sure. Anyway, there's like a bunch of pages on our old wiki.

[[33:27]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2007s) **Bob Summerwill:** Right.

[[33:28]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2008s) **Amir Taaki:** And it's talking about like, oh, what the applications we need to build with Bitcoin.

[[33:31]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2011s) **Bob Summerwill:** Right.

[[33:32]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2012s) **Amir Taaki:** So then that's when [Vitalik](/people/vitalik-buterin) started to become interested in those ideas.

[[33:37]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2017s) **Bob Summerwill:** Right.

[[33:38]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2018s) **Amir Taaki:** Right. So then afterwards he left [Mastercoin](https://www.omnilayer.org/). First he asked the Bitcoin. He was like, oh, let's loosen the restrictions on the opcodes. And the Bitcoin people were like, no, we're not changing anything. And so then he went to [Mastercoin](https://www.omnilayer.org/) and then he went to do Ethereum.

[[33:56]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2036s) **Bob Summerwill:** He was saying he'd also seen what happened with [Counterparty](https://en.wikipedia.org/wiki/Counterparty_(platform)), right, where they were like chopping down the, you know, the [OP_RETURN stuff](https://en.bitcoin.it/wiki/OP_RETURN). Yeah, it's like, okay, don't want to like build some [metaprotocol on top](https://bitcoinmagazine.com/technical/you-cannot-stop-bitcoin-metaprotocols) of this if it's going to get like, they're going to change the mind next month and it's like, right, you know, your protocol's dead.

[[34:17]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2057s) **Amir Taaki:** Yeah, so... Yeah, so they... Then when they were making Ethereum, that's, you know, with Anthony Di Iorio and all those people.

[[34:32]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2072s) **Bob Summerwill:** Well, yeah.

[[34:33]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2073s) **Amir Taaki:** I forgot also a bit before. The first [Dark Wallet](https://github.com/darkwallet/darkwallet) hackathon was in Milan.

{% include content-embed.html
  src="https://www.youtube.com/embed/-AyMF24EE6c"
  url="https://www.youtube.com/watch?v=-AyMF24EE6c"
  title="Dark Wallet meeting"
  description="Bitcoin wallet development by The Unsystem Crew. 'Your key, your privacy, your sovereignty'"
  author="Solene Cravic"
  date="2013-11-28"
  site="YouTube"
%}

[[34:42]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2082s) **Bob Summerwill:** Yeah, I was going to mention. So [Mihai](/people/mihai-alisie) was in Milan for a fair bit, right?

[[34:48]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2088s) **Amir Taaki:** Yeah, we were all together. We would travel together and go to these places. But anyway, Macao's also like a really big...

[[34:57]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2097s) **Bob Summerwill:** Gambling?

[[34:59]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2099s) **Amir Taaki:** Huh? No, in Milan.

[[35:02]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2102s) **Bob Summerwill:** Oh, I thought you said...

[[35:03]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2103s) **Amir Taaki:** It's a community centre called [Macao](https://www.facebook.com/macaomilano/). Oh, I see. Yeah, it's huge as well. It used to be a meat processing plant. But anyway, they have loads of cultural things there. But anyway... Yeah, yeah. They let us use it for a month to do our event. Right. So that's when [Taylor](/people/taylor-gerring) ... Yeah, right. A lot of those early Ethereum guys.

![macao](https://c4r.info/user/pages/06.ecosystem/80.macao-milano/Image-MacaoMilano-zero.jpg)

[[35:23]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2123s) **Bob Summerwill:** Right. [Hive, Hive Wallet](https://en.bitcoin.it/wiki/Hive).

[[35:25]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2125s) **Amir Taaki:** Yeah. They came there and that's how they all met each other. Right. The early co-founders. Yeah. And then also Richard Stott. Yeah, designer. Yeah, he was also my friend from London. Oh, right. That's how [Mihai](/people/mihai-alisie) met him.  And [Gav Wood](/people/gavin-wood) also came to visit us in London.

*(Bob: Amir told me that Richard was a friend of a friend, through "Bitcoin Andy" ... "Andy was in the snow in 2011 preaching Bitcoin.  Occupy London")*

<h3 id="ethereum-early-days-and-toronto-2014">Ethereum early days and Bitcoin Expo Toronto (2014)</h3>

[[35:40]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2140s) **Bob Summerwill:** See, yeah. So, so [Vitalik](/people/vitalik-buterin) had shared like a few years ago, shared early, his first communications with [Gav](/people/gavin-wood), where [Gav](/people/gavin-wood) contacted him on the 19th of December 2013 through [about.me](https://about.me/). And [Gav](/people/gavin-wood) said, I... He said, "Where are you with Ethereum? I can do C++, basically". And then four days later, he'd created his repo to start working on cpp-ethereum. But the other bit I forgot there is, "Johnny gave me the heads up". That's what he said, which was "Johnny Bitcoin" ([Jonathan James Harrison](/people/jonathan-james-harrison/)), who he had met through you, right? So [Gav](/people/gavin-wood) came to the squat at some point in London?

{% include twitter-embed.html
  url="https://x.com/VitalikButerin/status/895518902817480708"
%}

[[36:49]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2209s) **Amir Taaki:** Yeah. Yeah, we were hanging out because he said he's a [KDE](https://en.wikipedia.org/wiki/KDE) developer.

[[36:54]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2214s) **Bob Summerwill:** Right.

[[36:54]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2214s) **Amir Taaki:** He's written [LIRC](https://www.lirc.org/).

[[36:56]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2216s) **Bob Summerwill:** Right. I think in one of the interviews he said, I'm going to give my [KDE](https://en.wikipedia.org/wiki/KDE) email because that will give me cred.

*(Bob: that was in his [Epicenter Bitcoin interview](https://epicenter.tv/episodes/259/) on 31st October 2018)*

[[37:06]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2226s) **Amir Taaki:** Oh yeah, it did. I was impressed by it. I was like, whoa, he's got a [KDE](https://en.wikipedia.org/wiki/KDE) email.

[[37:13]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2233s) **Bob Summerwill:** That's impressive. That's right.

[[37:15]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2235s) **Amir Taaki:** That's funny.

[[37:19]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2239s) **Bob Summerwill:** It worked. It did. So he came along and then I guess he was talking to [Johnny](/people/jonathan-james-harrison/) and [Johnny](/people/jonathan-james-harrison/) must have mentioned [Vitalik](/people/vitalik-buterin) and Ethereum and pointed him onwards.

[[37:34]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2254s) **Amir Taaki:** Yeah, I... Yeah, I also, when I visit them in Anthony Di Iorio's, that's where that hackathon...

[[37:44]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2264s) **Bob Summerwill:** Yeah, so, so yeah.

[[37:45]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2265s) **Amir Taaki**: Is Anthony Di Iorio a co-founder of Ethereum?

[[37:48]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2268s) **Bob Summerwill:**  Yeah.

[[37:49]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2269s) **Amir Taaki**: So put money into Ethereum.

[[37:51]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2271s) **Bob Summerwill:** Yeah, he did.

[[37:52]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2272s) **Amir Taaki**: Oh, what happened to that money?

[[37:54]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2274s) **Bob Summerwill:** Like, I... He did things.

[[38:00]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2280s) **Bob Summerwill:** Yeah, he got... So he basically lent money to the project for those early months of development, and he did get paid back out of the crowd sale. There was some court case where it was like, did he get it back as Bitcoin or as fiat? There was some kind of disagreement on that, but that got finished off. But yeah, the timeline was [Vitalik](/people/vitalik-buterin) did the white paper in about November 2013. He shared it with a bunch of people. I don't know if he shared it with you, if you were on that list of people who got it early. Oh, right, the [BitLaw](https://web.archive.org/web/20150309190939/https://wiki.unsystem.net/en/index.php/Bitlaw). Yeah, yeah. Right. So just a whole bunch of different, right. So yeah, transparency, arbitration, auditing and transparency, multisigs. Yeah, a whole bunch of cryptocurrency 2.0 use cases.

[[39:01]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2341s) **Amir Taaki:** So they did ask me to be the lead Ethereum dev? Right, but I just didn't, I was like, we can build this on Bitcoin. Right, right. Why do you need a new thing? Yeah, because I know you can build it on Bitcoin. Right, at the time. But yeah, that December, and I kept, I kept also pressing the guy, right, to explain to me what it can be used for. Yeah. And he, he just kind of in frustration just went, marriage contracts.

[[39:35]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2375s) **Bob Summerwill:** Not so appealing. No, no.

[[39:36]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2376s) **Amir Taaki:** I don't see the point.

[[39:37]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2377s) **Bob Summerwill:** But yeah, December.

[[39:38]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2378s) **Amir Taaki:** It's interesting because sometimes you can be too closed minded about things.

[[39:42]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2382s) **Bob Summerwill:** Right, right. But yeah, that December, you know, after he shared the White Paper around, you know, various people started gathering around.

[[39:49]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2389s) **Amir Taaki:** I think what led to Ethereum's success was having a token. Having the token is really good because it allows the project to accrue value. Whereas working on Bitcoin, we were always broke.

[[40:01]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2401s) **Bob Summerwill:** Right, right, right. Yeah, I mean, those early months, you know, no one was being paid on Ethereum either. And it's like, you know, we will have a token sale. You will get paid back. But, you know, it's, you know, hope and a dream. But yeah, the hackathon that you're talking about was in April of 2014 in Toronto. So Anthony Di Iorio running that, he'd got, you know, [Bitcoin Decentral](https://decentral.ca/) sort of co-working space and venue. There were a bunch of projects running out of there. You know, it's kind of like, yeah, he'd say sort of like businesses running. I mean, I don't know how great businesses they were. Projects were operating out of there. And then one of the things that they did was organize this first Canadian Bitcoin conference (Bitcoin Expo), to which, it's funny, so he'd got the space. He was the head of the [Bitcoin Association of Canada](https://bitcoinmagazine.com/culture/blockchain-association-canada-new-vision-beyond-bitcoin). The Bitcoin Association were running the conference. Ethereum were the main sponsor for the conference. So it was like his space, his organization, his conference, his sponsors. And somebody said at some point, is this how marketing works? That you've just got all these different hands that are all paying each other, you know? It's like, oh, there's a lot of activity here, but it's all, you know, from that same source. But yeah, but there was a hackathon.

*(Bob: That was said by Taylor Gerring in The Cryptopians.  The quote is "Taylor thought, so this is how marketing works. Throw an event so you have something to sponsor")*

{% include content-embed.html
  url="https://web.archive.org/web/20171124124825/http://bitcoinexpo.ca/"
  title="Bitcoin Expo 2014 Toronto"
  description="Attend the first Bitcoin Expo in Canada"
  date="April 11, 2014"
  site="bitcoinexpo.ca"
  img="/images/archive.org/bitcoinexpo.ca/20171124124825/Screenshot.png"
%}

[[41:37]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2497s) **Amir Taaki:** So he did get cucked.

[[41:41]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2501s) **Bob Summerwill:** I don't know. But yeah, so there was the hackathon that you were at, you and [Cody](/people/cody-wilson), presenting, you know, Dark, well, I guess it was [Dark Market](https://github.com/darkwallet/darkmarket), wasn't it, that you got that one?

[[41:58]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2518s) **Amir Taaki:** Which became [OpenBazaar](https://github.com/OpenBazaar).

{% include video-embed.html
  name="In Crypto We Trust Hackathon Pitches - Bitcoin Expo 2014"
%}

{% include video-embed.html
  name="Crypto Hackathon – Bitcoin Expo 2014!"
%}

[[42:00]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2520s) **Bob Summerwill:** Right. And then there was the main conference with, so yes, the aforementioned Peter Todd was there, Andreas Antonopoulos, Dave Johnston. You'd got Adam B. Levine as well, and a bunch of others. But yeah, that conference was also the only conference where there was ever like an Ethereum stall, you know, like the Expo area. They were like, hey, you know, we're like, you know, it was like a business, right? It's like here's a business project at that point. And [Anthony](/people/anthony-di-iorio)'s thought and expectation was like, all of this is going to happen out of Toronto, right? Ethereum is just one of N projects that are happening out of [Bitcoin Decentral](https://decentral.ca) there. But lots of the projects in that hackathon were on Ethereum as well. But what you were building was not.

![peter](/images/x.com/2025.09.07/TaylorGerring/status/1514260990564741120/1514260990564741120_1.jpg)

![booth](/images/x.com/2025.09.07/TaylorGerring/status/1514973024394653710/1514973024394653710_2.jpg)

{% include video-embed.html
  name="Ethereum Booth at the Bitcoin Expo 2014"
%}

[[43:06]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2586s) **Amir Taaki:** Yeah, that's what I was saying. Didn't need to be. No, no. The thing is, I was quite an expert in Bitcoin. So obviously it's like difficult for people who don't know Bitcoin deeply to do those things. So that's the thing I missed is actually having something with like a language, etc. It's like it's easier for people.

[[43:28]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2608s) **Bob Summerwill:** Yeah, absolutely. So, I mean, can you remember like what the vibe was like at that conference as compared to other Bitcoin conferences you've been at?

[[43:39]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2619s) **Amir Taaki:** It was a fun conference. It wasn't like an exceptional conference. Yeah, I had a good time. I was just going around chatting to people. Yeah, it was good.

[[43:48]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2628s) **Bob Summerwill:** Yeah, yeah.

[[43:50]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2630s) **Amir Taaki:** I remember Adam Levine and [Stephanie](/people/stephanie-murphy) and [Andreas](/people/andreas-antonopoulos).

[[43:55]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2635s) **Bob Summerwill:** Right, yeah, yeah.

[[43:56]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2636s) **Amir Taaki:** They hung out with each other a lot.

[[43:57]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2637s) **Bob Summerwill:** Yeah, yeah. So, I mean, I guess, you know, Ethereum kind of, you know, kept ticking along there. Like, was that something, you know, happening in parallel or were you still kind of crossing paths with these people through that year?

[[44:16]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2656s) **Amir Taaki:** No, I didn't interact with Ethereum after that.

<h3 id="dark-wallet-libbitcoin-and-syria">Dark Wallet, Libbitcoin, and Syria</h3>

[[44:19]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2659s) **Bob Summerwill:** No, no. Yeah. And I mean, in terms of like...

[[44:27]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2667s) **Amir Taaki:** I think all the money started to come in and they all started to go, and then I was in Europe, and then [I went to Syria](https://www.bbc.com/news/uk-39417937).

![syria](https://ichef.bbci.co.uk/ace/standard/976/cpsprodpb/3D81/production/_95354751_amir_taaki_outside.jpg.webp)

[[44:34]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2674s) **Bob Summerwill:** Yes, yes. But yeah, I mean, the timeline of that was Ethereum White Paper November, kind of team starting to gather about December, BTC Miami. Were you at BTC Miami in January? Did you go to that one? No.

[[44:52]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2692s) **Amir Taaki:** I went to the Toronto thing.

[[44:54]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2694s) **Bob Summerwill:** Right. So then, yeah, Toronto in April and the crowd sale actually was like July, August-ish of 2014. And then you had the [Ethereum Foundation](/articles/stiftung-ethereum/) starting to do the crowd sale. And then, yeah, early contributors, got like paid back for their work in those prior months and, you know, Ethereum was off and live.

[[45:28]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2728s) **Amir Taaki:** We did the [Dark Market](https://github.com/darkwallet/darkmarket) just purely for money.

[[45:31]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2731s) **Bob Summerwill:** Right.

[[45:32]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2732s) **Amir Taaki:** Because, you know, $15K.

[[45:35]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2735s) **Bob Summerwill:** Right.

[[45:36]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2736s) **Amir Taaki:** So that was pretty cool.

[[45:38]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2738s) **Bob Summerwill:** And, I mean, with [Dark Wallet](https://github.com/darkwallet/darkwallet), like, what kind of time span were you working on that for?

[[45:48]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2748s) **Amir Taaki:** We... I think we started in 2013, and then we were working on it all the way to the end of 2014. Right. And we [released an alpha](https://github.com/darkwallet/darkwallet/releases/tag/0.8.0), which the crowdfunding was for the alpha, but we never released the stable.

[[46:03]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2763s) **Bob Summerwill:** Right.

[[46:03]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2763s) **Amir Taaki:** And that's mainly because I went to Syria, but I thought the dev team would at least just finish it. Right. They had enough money and everything.

[[46:11]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2771s) **Bob Summerwill:** Right. Didn't happen.

[[46:13]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2773s) **Amir Taaki:** They kind of like, it just fizzled out without my presence. Which is like, it's a failing of my leadership not to create an organization that doesn't fizzle out when, you know, one person disappears. So...

[[46:26]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2786s) **Bob Summerwill:** And with [Libbitcoin](https://libbitcoin.info/), was that ongoing as well as what you were doing on the other projects?

[[46:32]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2792s) **Amir Taaki:** So [Libbitcoin](https://libbitcoin.info/) had serious technical innovation in there. It has the fastest blockchain database of any Bitcoin node. And this guy, [Eric Voskuil](https://x.com/evoskuil), who's a really skilled developer, he came and he took on that mission and he's still continuing it. Yeah, he's just really into it. I've tried a few times to poach him to [DarkFi](https://dark.fi), ZK, other stuff. He's a really good developer, but he's just like, no, I just like Bitcoin. Yeah, I just work on [Libbitcoin](https://libbitcoin.info/). So, yeah, he's laser focused on that.

![eric](/images/bitcoinsaigon.org/2026.01.05/assets/images/voskuil.jpg)

[[47:03]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2823s) **Bob Summerwill:** Yes, I've got to meet him in person for the first time last year, I think, after lots of, you know.

[[47:11]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2831s) **Amir Taaki:** Not like me advanced, dysregulated focus.

[[47:16]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2836s) **Bob Summerwill:** Right. Yeah. Well, I mean, he's just been at that for 10 years.

[[47:22]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2842s) **Amir Taaki:** Yeah, it's crazy.

[[47:23]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2843s) **Bob Summerwill:** It will be 10 years.

[[47:25]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2845s) **Amir Taaki:** Imagine working on one project.

[[47:27]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2847s) **Bob Summerwill:** And also, you know, he's like, yeah, it's not production ready yet.

[[47:31]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2851s) **Amir Taaki:** He's a really good developer.

[[47:35]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2855s) **Bob Summerwill:** But yeah, he is. And he's also, he's published some stats, you know, the last year or so.

{% include twitter-embed.html
  url="https://x.com/evoskuil/status/1999650844095000986"
%}

[[47:40]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2860s) **Amir Taaki:** They just need money, really.

[[47:42]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2862s) **Bob Summerwill:** I mean, but he's cool with it as well. He's just like, yeah, you know, I'm just working and I'll keep working until it's done. And yeah, I mean, he's got to the point where he's published some stats in the last year or so and, you know, it's just massively better, you know. It's just, yeah, just the whole thing rethunk, right, and re-stripped down and built up from that base. Yeah, yeah.

So, I mean, [Early Days of Ethereum](https://earlydaysofeth.org). What are your thoughts on Ethereum? Like having seen it being birthed, what's Ethereum to you?

<h3 id="reflections-on-ethereum">Reflections on Ethereum</h3>

[[48:24]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=2904s) **Amir Taaki:** It is the closest expression of the [Agora](https://en.wikipedia.org/wiki/Agora) as existing crypto now. They've done a lot of really good research. I have like... You know, I think Ethereum needs to develop a political philosophy. The one with Ethereum is it's very ahistorical. Like, if you do science, your, like, evidence is... If you're doing... When you do science, you need evidence to, like, support your theories. It's, like, all well and good having models, like, abstract, like, deductive mathematical models. But you need to like backtest your ideas. And when we talk about like social systems, what that is, is history. The thing is with Ethereum, whenever they talk about history, it's always like the most minor or like society, most minor examples are completely inoffensive because they don't want to take a stance on anything. And I don't think you can be like that. I think you have to take, go deep into things, take them apart, etc., you know. So I think that's really harming them. Especially they like want to change the world, do things of social benefit. That's why they're making now these, you know, these, [Zuzalu](https://www.palladiummag.com/2023/10/06/why-i-built-zuzalu/) kind of network state communities. Yeah, they're trying to recreate the [Calafou](https://calafou.org/) thing, the [Calafou](https://calafou.org/) experience. Yeah, where we were developing tools for the [CIC](https://es.wikipedia.org/wiki/Cooperativa_Integral_Catalana), the cooperatives, and that allowed us to see what people need. I respect the intention, but I think the problem is that when you make a project, you don't gather a group of people together and go, what should we do? First you come up with the idea, you develop the idea, and then you recruit people for roles to fulfill that objective, that mission. So they're doing the opposite. They're trying to bring loads of people together and see what happens. And I think there's the reason why Ethereum has these like roadmap diagrams which are like these are really arcane plots of stuff, but it's like what's the organizing idea underneath that? And they don't have one. So anyway...

[[50:45]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3045s) **Bob Summerwill:** No, I mean, it's been a criticism I've had for a number of years is you'll see [Vitalik](/people/vitalik-buterin), you know, plop out this big roadmap diagram thing. And I remember first looking at it and there were three little boxes in the top corner that were "transition to proof of stake". Three boxes that took eight years. And you've got 50 odd things on this diagram. And it's like there's decades and decades of work to do all of this. And also, you know, the plan's going to change every year anyway. You're never going to get to the end of that. And it's like, yeah, what's "feature complete"? What are you aiming for? When's good enough?

![roadmap](/images/reddit.com/2026.01.03/r/ethereum/comments/18uowrb/vitalik_updated_roadmap_diagram/roadmap.webp)

[[51:30]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3090s) **Amir Taaki:** I also think Ethereum needs to be more product-focused. I don't mean product-focused by paying lots of useless focus groups or UI designers that used to work at Facebook or something like that. I mean actually going, what is it we want to do and how do we develop the tech to fulfill that objective and aggressively pursue one or two use cases, deliver them and expand that. Like, not like, Ethereum is like, it was made in a time when you can launch absolutely anything and it would succeed. And, you know, they did really well. But the thing is, people see what Ethereum did and they think that's gospel for how to start a new project in crypto, right, playbook. And I think that's maybe that's hampering a lot of people. And the, actually, you know, the, when you, the Ethereum early on was like, we're like apolitical, we're a neutral technology, you know, blah blah, application platform. Yeah. And I think it just didn't... They need to be more strategic. When you make a project, you have an end goal that you want to get to, you have a strategy, and you have a roadmap, and you have milestones in the roadmap. And I think it's really important that underlying technologies are developed in parallel to applications and the people using them. So when you develop applications and you field them, then you see how the technology needs to evolve. Otherwise, you know, when you give technology to the hands of technologists, and this is what Ethereum has also suffered from.

[[53:30]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3210s) **Bob Summerwill:** They're like... And build stuff that's interesting to them.

[[53:33]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3213s) **Amir Taaki:** Yeah, exactly. And again, it becomes arcane. Like, oh, we need this, and we need this, and we need this, and we need this. And it's like, actually, it doesn't even fulfill any of the use cases that well.

[[53:44]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3224s) **Bob Summerwill:** No, no, no. No, I mean, it shouldn't be hard, right? It's thinking, okay, well, who are our users and what do they want to do? And let's do that.

[[53:54]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3234s) **Amir Taaki:** It's really difficult to talk to the Ethereum clique core thing. It's very cliquey. So they have a big political problem, I think.

*(Bob: Péter Szilágyi, the long-time Geth lead developer wrote an [excellent memo](https://gist.github.com/karalabe/a2bc53436f29e0711fe680d59e180f6c) talking about some of the political/clique issues at the Ethereum Foundation in 2024 which is well worth a read.)*

[[54:03]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3243s) **Bob Summerwill:** Yeah, and I think that sort of almost unbounded scope is problematic. Something Nick Szabo talks about is the idea of "argument surface". So he's drawing an analogy with attack surface for security stuff and is saying on a social level, the argument surface for a system is basically like how much stuff is there that's like up for grabs, that's not like defined, that you can have a reasonable argument about, we should do this, we should do that, we should do the other.

{% include twitter-embed.html
  url="https://x.com/NickSzabo4/status/1068960876416258049"
%}

And if you have a really well-defined system, right, where it's very clear what this thing is for and what it's meant to do and like, have we met these needs or not? You don't have all the arguments because you all know what you're building. You don't fuck about like changing the design or plans or anything because you've all got that common goal. So then the criticism there of Ethereum is that there's almost infinite argument surface. It's become like a parliament, right? So you've all got protocol politicians and lobbying groups and you can sit and fucking argue about that for years on end of like, oh, we should have this feature, that feature, this protocol, this, the other. And a lot of those aren't necessarily actually moving you to something that is actually solving real use case problems. That's actually getting people, you know, using the tech

*(One of Nick Szabo's most famous essays is ["Money, blockchains and social scalability"](https://unenumerated.blogspot.com/2017/02/money-blockchains-and-social-scalability.html))*

Okay. Well, thanks. Well, thank you very much for your time.

<h3 id="darkfi">DarkFi</h3>

[[54:03]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3243s) **Bob Summerwill:** Would you like to just say a little bit about [DarkFi](https://dark.fi) before we wrap?

[[55:50]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3350s) **Amir Taaki:** Yeah, [DarkFi](https://dark.fi)'s an L1. Oh yeah, sorry. [DarkFi](https://dark.fi)'s an L1, you can do everything with it, but anonymous. So, you know, you can buy and sell, you can make anonymous DAOs, do OTC, etc. That's what we need to build the [Agora](https://en.wikipedia.org/wiki/Agora), so...

[[56:16]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3376s) **Bob Summerwill:** I've heard some people say perhaps [Monero](https://en.wikipedia.org/wiki/Monero) with smart contracts. Would that be reasonable?

[[56:23]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3383s) **Amir Taaki:** But we're not using ring signatures, we're using ZK.

[[56:26]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3386s) **Bob Summerwill:** [Zcash](https://en.wikipedia.org/wiki/Zcash) with smart contracts.

[[56:30]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3390s) **Amir Taaki:** Yeah, well, yeah, maybe, yeah.

[[56:34]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3394s) **Bob Summerwill:** Okay, thanks so much.

[[56:36]](https://www.youtube.com/watch?v=c5VcpUIU_6w&t=3396s) **Amir Taaki:** Thank you.

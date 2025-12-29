---
title: "Early Days of Ethereum - Episode 9 - Amir Taaki"
date: 2025-12-31
show: true
guests: ["Amir Taaki"]
hosts: ["Bob Summerwill"]
description: "Amir Taaki was a Bitcoin developer from 2010 onwards and connected Vitalik Buterin and Gavin Wood."
img: /images/covers-for-conversations/episode009-amir-taaki.png

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

**[00:03] Amir Taaki:** Hello, hello.

**[00:04] Bob Summerwill:** Hello, hello. Great to see you, my friend. So we are here. We are here in Prague, in beautiful Prague. Dark Prague, the inaugural Dark Prague Zero Congress, conference, I'm not quite sure what you'd call it. But yeah, delighted to talk to you today, really within a context of this early days of Ethereum project that I've been looking at. And one of the things I remember seeing earliest was the two Amirs that you had, capitalist Amir and anarchist Amir. So tell me, you know, before all that started even, you know, how did yours... yeah, how come you're doing this project? How come I'm doing it? Yeah.

**[00:55] Bob Summerwill:** Well, it was quite, I mean, it was quite coincidental, you know. I'd gathered a bunch of information back in 2017, 2018, basically because Ming Chan was getting hoofed out and I asked Vitalik what I could do to help with the transition or whatever. And he said, can you go and talk to people in the community and sort of see what they think the Ethereum Foundation should be? Like, what should we be doing?

**[01:38] Amir Taaki:** Oh dear, if you ask that question, it's already a bad sign.

**[01:42] Bob Summerwill:** Well, my question at that point was, so Ming was terrible. She was one of the least professional people I've ever worked with. She was an absolute nightmare. And my thought was, well, what the hell was happening before that, that she looked like a good choice. And there was a real sort of shroud of mystery as to what had happened then, even though it was only like three or four years before. And so like, there just was no canonical history. Nobody really knew what happened. Even something as basic as like, was Charles like kind of a co-founder or not? He kind of says he was maybe, but maybe he wasn't. Which is just crazy because, you know, he was there, like, doing videos and, like, there's just tons of evidence. But anyway, so I started digging back into that stuff.

**[02:35] Amir Taaki:** What about Anthony Di Iorio as well?

**[02:37] Bob Summerwill:** Anthony Di Iorio, yes, that's right.

**[02:39] Amir Taaki:** Didn't he get rocked or something?

**[02:41] Bob Summerwill:** There was Anthony Di Iorio.

**[02:43] Amir Taaki:** I don't know the history.

**[02:44] Bob Summerwill:** There was Anthony D'Onofrio that was Texture. And there was another guy called Anthony Eufemio who did this Digix Gold thing. But anyway, that's where I started getting interested in Ethereum history. It's just like, well, what the hell happened? I mean, what ended up happening is everything I recommended to Vitalik never happened. It was just completely a disaster, you know. Ming went and he just got Aya. Here you go, it's a new one. No changes. Like, the what people wanted was like transparency, they wanted community input, they wanted like professional executive like operational. It's like, you know, let's have organization to help the devs basically. But primarily it was like don't be a Swiss opaque foundation with no accountability or any public information at all. Anyway, so I put the stuff aside at that point. It's like, great, that was a good use of my time, you know, advising the millionaire for free for months. But then just recently, so the guys I now work with, they started recording some videos because, so Kieran is, Kieran James-Lubin is Joe's son. So he was actually around from March 2014 and the others were sort of involved from 2015 and they were just like, we should like, get some of these memories down, right? It was like eight years ago at that point. So they did a couple of those videos and I really loved them and I was making tons of notes and finding links and photos and all of this. And then they interviewed me for the third one. But then more recently, I did interviews with Taylor Gerring and with Texture. And just tons of stuff came out of that. And then I just kind of like shoved those together. And there you go. That's early days of Ethereum is this sort of combination of sort of biographical stuff and photos and videos, links to articles. And then, you know, conversations with people. And it's really just because it's like this is history, right?

**[05:13] Amir Taaki:** This stuff was crazy seeing, being in crypto since like, you know, almost the beginning and seeing the stuff that happens but seeing what got recorded, right? And it's like, wow, like history really is just written by the victors. Yeah, it's just, it's crazy.

**[05:35] Bob Summerwill:** So the one thing on that score, which I don't know if you know, is so the original Bitcointalk post for announcing Ethereum, so that was done on the 23rd of January 2014, right, just before the Bitcoin Miami. That page got changed. Oh, what the fuck? About eight months later, probably around August, September, it got quick edited. And a whole load of people that were there got written out. Oh, you mean like just somebody, they, well, I mean, I guess you can edit Bitcointalk pages.

**[06:22] Amir Taaki:** But what about the people getting deleted and stuff?

**[06:24] Bob Summerwill:** So yeah, just a whole bunch of people got deleted out. By who, the admins? Well, by Vitalik, I imagine.

**[06:31] Amir Taaki:** But how do you edit people out of your thread?

**[06:35] Bob Summerwill:** No, no. The original post said, hey, we're Ethereum, blah, blah, blah, blah, blah. This is the team. This is what we're doing. So that post, which at the start went, look, here's about the 30 people that are working on things, went down to, oh, right, Charles and Amir. Well, Amir, I don't think, was in the original post because he didn't want to be. But Charles got edited out. Stefan and Taylor Gerring got edited in and all the rest of the team got shoved off the page. Yeah. But, you know, many, many people that were involved early, you know, they're just like forgotten. You know, they were on, you know, if you go back to early Internet Archive versions, you can find some names. So, I mean, some people... Like Mr. Ryan Taylor over here. So Ryan worked on all the early websites for months. You know, these pages that thousands or tens of thousands of people have seen as, you know, this is the main Ethereum page. Nobody knew who did it. I didn't know. Like, you know, just on one of the early ones, just for a little while, it just said, like, Ryan Taylor Webb. I don't know who Ryan Taylor is. Like, so a number of these names, you know, I don't know who they are or maybe start to find them. And basically, you know, it's like the work of many hands, right? This is something I was talking about is, you know, you've got, like, great man theory, right? The thought that you have these exceptional people and by amazing powers of, you know, intellectual skills and power of force that they bend the universe to their will. And, you know, that's kind of the story that people like.

**[08:23] Amir Taaki:** It's kind of like feudalism. It's like you pledge your allegiance to his liege.

**[08:28] Bob Summerwill:** That's right.

**[08:29] Amir Taaki:** And if your liege becomes popular, you will gain through him. You will live vicariously.

**[08:38] Bob Summerwill:** Right.

**[08:39] Amir Taaki:** That's how the tech world operates.

**[08:41] Bob Summerwill:** Yeah, well, you know, like people are looking for heroes and, you know, their champions to cheer. You know, in the highest case, you know, something like North Korea, they literally think the leader is, you know, is a god. You know, they're just crying in front of him, just... Wow, that's amazing. So, yeah, I'm trying to record the real truth and give people their voices and just make sure stuff doesn't get lost, right? So many things have already been lost.

**[09:11] Amir Taaki:** Pete Rizzo did that for Bitcoin. Right. He did really, really deep history of Bitcoin stuff.

**[09:19] Bob Summerwill:** Yeah, yeah. So... You should check him out as well. Yeah. So, yeah, I'm finding stuff. And, you know, you shared your old YouTube channel with me as well. You seem to have a reasonable number of artefacts of various ages that have been preserved about you.

**[09:39] Amir Taaki:** It's funny because I was just filming and I was just putting my video camera on the internet on YouTube. So that's why I have that page.

**[09:48] Bob Summerwill:** Right. It's funny. There's a guy called Freddie Hartline who was one of the guys that started the main kind of like, it was like Bitcoin co-working space or whatever in Vancouver. But he was saying he's got loads of stuff on his Facebook account of all things. Basically, even though it's like as boomer as you can imagine, it's like, yep, loads of other people have had things on so many other platforms and everything. They've all got lost and fucked. I've just posted shit on my Facebook page and it's, you know, it's up there forever. Obviously like preserving things yourself is way better than relying on any of these platforms. But yeah, like so much stuff is just like rotted because people have deleted their accounts or like a platform isn't around anymore or just, you know, general, general kind of rot. But...

**[10:50] Amir Taaki:** Everything I have that's survived is because I uploaded it to a normie platform. Yes, this is it. I periodically have a cleansing. It's not accidental, but it's just like every few years, your data just resets to zero. I don't know, it sucks, but you know.

**[11:12] Bob Summerwill:** Well, that's it. Yeah. I mean, so yeah, that was Freddie's super normie story is still using Facebook even though, you know, it's Facebook. So, yeah, I mean, you know, you were a free software guy and a general developer on that thread and early Bitcoin dev. So how did you find Bitcoin?

<h3 id="finding-bitcoin">Finding Bitcoin (2010)</h3>

**[11:45] Amir Taaki:** So I was working on free software for five, six years. And then I became a professional poker player.

**[11:57] Bob Summerwill:** Right.

**[11:58] Amir Taaki:** That was for over two years. And the poker sites, you know, you're playing against other players. Right. But the way the sites operate, the platform, they take a cut out of every pot, basically, every game that you play. Right. But the sites charge a huge amount of fees for a really crappy service. So I had this idea, what if you could have a P2P site, then it wouldn't have rake and fees. Right. So I had like the design for it, but then the main issue was the payment system. And so then I was on IRC in this channel with other anarcho-hackers, I know. And I was telling them about that. And this guy is like a mathematician that worked for the W3C. His name's Melvin. He dumped just like 10 links in there. And they're like random open source projects for money. And there's stuff like LETS. Have you heard of LETS? No, no. At one point, people were really into that. But it's like, you but off, I think it's like offering your labor, you get like a token or something. But anyway, so I was going through all of these links and they're going no, no, no, no. I saw Bitcoin, I opened the page for Bitcoin, it goes Bitcoin is a P2P currency that cannot be controlled by governments or central banks. And I was like, that's garbage, like obviously not. That's just because there's like loads of random projects like that on the SourceForge back in the day. Like I once saw like a Jurassic Park video game and it was going like you could do everything, you can punch through the walls, you can hack the terminals, you can hunt the dinosaurs. And I was like, whoa, sounds amazing. And I checked the code and it said like main.cpp and they had like just, you know, like one file. Yeah, like it just got bored of it, like got, it just wrote the idea. Right, right. And then like I kept checking months, every so often. And there was like zero progress on that. So I thought Bitcoin was like one of those kind of projects. I went, no, no, no. And then I was like, oh, they're all shit. So I was like, okay, let's take a deeper look at all of them then. And so then when it came to Bitcoin, I downloaded the source code. And I started going through the source code. And I was like, oh, that's really interesting. First of all, Bitcoin source code is about 15,000 lines of code at that time. Which, you know, 15,000 lines of code, it's actually a small amount of lines of code. Like some programmers can even do that in like a week or something, like very talented programmers. But so I was like, oh, but it's not nothing either. It's not like that Jurassic Park game I was just describing. So it's like 20, you know, 15,000 lines of code, like less.

**[15:01] Bob Summerwill:** You can read through and kind of understand that pretty well.

**[15:04] Amir Taaki:** Yeah, so I printed it all out and I covered it all over my floor.

**[15:06] Bob Summerwill:** Right.

**[15:07] Amir Taaki:** You know, it's like my pornography that I'm looking at. I started studying it.

**[15:11] Bob Summerwill:** Yeah.

**[15:11] Amir Taaki:** And it started to make sense. I was like, oh, very interesting. Oh, interesting. And so when I figured out how it worked, I was like, whoa, this is amazing. I'm going to work on this.

**[15:22] Bob Summerwill:** So what month do you think that was?

**[15:24] Amir Taaki:** That was the summer of 2010. Right. So that's when I, like, basically, I was like, okay, I'm just doing this from now on. And so then I had, like, I made, like, a plan of, like, oh, in 10 years we'll be here, et cetera.

**[15:38] Bob Summerwill:** Right, right.

**[15:39] Amir Taaki:** Because this is like a long-term thing I'm going to work on. But then that basically just happened really quickly. It just started growing massively. So it was pretty crazy. But I started working on Bitcoin. I started writing code. I was one of the first five Bitcoin developers, which I was listed on Bitcoin.org. But that page is gone from the internet. So people, it's like, they don't like that.

**[16:01] Bob Summerwill:** Maybe it got archived.

**[16:03] Amir Taaki:** No, I don't think so.

**[16:04] Bob Summerwill:** No, just gone.

**[16:05] Amir Taaki:** Bitcoin web page with the list of names. Right. So I had a war with Gavin Andresen. Yeah. Because he was like, he's a motherfucker in many ways. But basically, he really likes regulations and the state and stuff like that. He's a statist. And he's into the banks and stuff. But also, he was just not that good a dev. And when there was other young devs that were coming up, instead of trying to nurture them, he was instead trying to push them out and try and keep control. So I became his main enemy, basically. I was like his first enemy.

**[16:41] Bob Summerwill:** And then he kind of seemed like he never wanted the role. Even he just sort of got kind of locked into it.

**[16:47] Amir Taaki:** And then he was there and he's like, I want to keep it. I really like it. I went to the very first event presenting Bitcoin to an audience of bankers. And so I did my talk and afterwards Gavin Andresen, he DM'd me and he goes, I think you should not talk at conferences ever again. I was like, who the fuck is this guy? You're not in charge of your project. Fuck you.

**[17:14] Bob Summerwill:** Was this in London or in the US? Amsterdam. Amsterdam, right.

**[17:18] Amir Taaki:** But anyway, so... You know, one of the first things that Gavin Andresen did was to try and get my name off of that list. He got his name added. But anyway, so he was like that. And, you know...

<h3 id="early-bitcoin-development">Early Bitcoin development, Libbitcoin, and BIPs</h3>

**[17:37] Bob Summerwill:** I mean, did you end up starting Libbitcoin quite early then?

**[17:42] Amir Taaki:** Yeah, 2011, yeah. Like March 2011 or something.

**[17:46] Bob Summerwill:** And was that around the same time as BIPs? Was that kind of like you were coordinating that? It's kind of like, right, we need specs, we need multiple clients.

**[17:56] Amir Taaki:** Yeah, because Gavin saw Bitcoin not as an open source project but as a startup. Right. So he's like we need to like pull ranks and we need to like make these features and changes so we can make a payment system that's fast, make a roadmap. Yeah, I don't know. It was more like he wanted to operate it like a business.

**[18:19] Bob Summerwill:** Right.

**[18:20] Amir Taaki:** And so I was very worried because he wasn't treating it like an open source protocol. It was like, we need to add this thing, we need to add that thing. So I was like, there needs to be some constraint on his wild ideas. So that's why I proposed that system. And the thing is, like, Gavin, I mean, I don't want to talk shit about people, but anyway. Yeah, so I made that BIP system for that reason. I was just afraid of that direction, that side of Bitcoin, which they later made a foundation for. And they put themselves as chief scientist and they tried to do this takeover of business guys on Bitcoin. And they wanted, they were like, we have to push out the anarchists. Yeah, it was just like, it's like this attitude of like, oh, these crazy anarchists, they've invented this like new plaything. And it's just so, it's like really interesting toy. And if we just pry it out of their hands, then we can get it accepted by big banks and then it can do something useful. You're putting people off.

**[19:30] Bob Summerwill:** You're putting people off all this anarchist talk. We're trying to sell this thing.

**[19:36] Amir Taaki:** Yeah, our side was like more like, oh, this is like an actual new economic paradigm, right. And, you know, so it's interesting because now all the Bitcoin maxis are very Bitcoin maxi. But I'm, for example, when I first met Pieter Wuille. Yeah. In, or Sipa, one of the core devs of Bitcoin, in 2011, and I was talking to him in a conference and he says, he says, oh, I'm not really interested in the monetary aspect of Bitcoin. Right. I'm more interested just in the scripting.

**[20:11] Bob Summerwill:** Just the tech.

**[20:12] Amir Taaki:** No, the scripting language.

**[20:13] Bob Summerwill:** Okay, right.

**[20:14] Amir Taaki:** Because it enables smart contracts and programmability. Yeah. He wasn't interested in the money thing. Right. So this new Bitcoin fanatic ideology is like retroactive. Back then, people in Bitcoin were like, oh, we want to explore. Yeah, yeah, yeah.

**[20:31] Bob Summerwill:** Well, I mean, for the longest time, there was this thought that, you know, all innovation that happens elsewhere will come back to Bitcoin, right? It's inevitable. You know, we don't have to be like pushing anything ourselves because, you know, like it'll just all come home.

**[20:47] Amir Taaki:** Yeah, the problem with Bitcoin is that it became taken over by these people that they like going to conferences. Right. It's like, you know, they see people they know, you know, a lot of, you know, culty, massive Bitcoin people. You know, they will want to like, like, oh, I love you. You're amazing. You know, like... And these people, they're not interested in the bigger mission or sense of purpose. It's like it's about themselves. And so Bitcoin got taken over by these like influencers, essentially. And the thing is, when somebody comes and says, you know, let's do something big, let's rock the boat, they're going to see that as an enemy. Because that's why Bitcoin is so conservative is because it's been taken over by this class of people.

**[21:38] Bob Summerwill:** There was like, Saylor's like absolutely the worst for this. There was a little video of him I saw the other day or yesterday, which was saying the biggest risk to Bitcoin is like competent and enthusiastic devs.

**[21:59] Amir Taaki:** Well, I need to see the full quote, because that sounds ridiculous.

**[22:03] Bob Summerwill:** But he basically seems to have gone for this absolute, full-on ossification of saying, you know, these developers, they want to actually change things, and that's a problem. We should never change anything. We need to be thinking in 100-year timelines. Because this is the store of value that's going to save humanity. And that's all there is, right? That store of value narrative. And don't use it. Don't use your Bitcoin.

<h3 id="sovereign-individual-and-surveillance">The Sovereign Individual and surveillance</h3>

**[22:46] Amir Taaki:** Well, the thing is, there's this book from the 90s, which is The Sovereign Individual, right. I'm not saying I agree with all the book, but it does make interesting analysis. It's definitely worth studying. And it says that, it's from 1997, and it's talking about cryptocurrency, and it's saying how the invention of cryptography will enable the proliferation of markets, like cyber markets in cyberspace, right. And the capital will become hyper liquid and will be able to flow from any place to any other place. And the governments would lose their power to tax this capital or control this capital. And therefore, it would inherently change the logic of violence. And this is also a very big idea originally in crypto as well. Early days of Bitcoin, people would always bring up this book. And yet, it hasn't come to fruition. So, you know, just in case, it hasn't come to fruition. And so we have to ask ourselves why. Like, I don't think the thesis is wrong. I just, I think the thing that they missed was surveillance because the surveillance apparatus obviously can monitor all the flows or the activity of people. And if you can do that, then now you have law enforcement. Right. So, yeah.

**[24:43] Bob Summerwill:** And, you know, you...

**[24:46] Amir Taaki:** I'll be able to pause a sec. For sure. Yeah, I just need to listen to this. Yeah, yeah.

**[24:52] Bob Summerwill:** So, you know, from what I could see, you know, you started traveling around the world a bit, right? You were in various different places at different times. I mean, were you, you know, were you going around meeting different people, like building, you know, building different things? How was that?

<h3 id="squats-and-dark-wallet">Squats, privacy tech, and Dark Wallet</h3>

**[25:13] Amir Taaki:** Yeah, I was traveling a bit. I actually come from a movement of anarchist hackers in Europe, which were living in squatted buildings. Right, right. So, you know, there's like in Europe, there's all these squatter's laws, which if a building is like abandoned, you can move into the building. And some squats, they last for years. Yeah. And we'd get amazing buildings. So in Amsterdam, we had a huge house. Imagine we're working on free software. We're broke devs. It's a really useful lifeline to have. And also like living in the center of the cities. I mean, like now, and even working in crypto, I look at the price of property and like it's ridiculous. Yeah. It's like really ridiculous. I think like societies really need that kind of stuff, like support people working on projects and software and stuff like that. It's a shame we don't. But anyway, I was part of those hacker movements, so I had lots of places in Europe I could go to. We would have communities, people working on free software in Barcelona, in London, in different places.

**[26:36] Bob Summerwill:** So when did your focus switch to Dark Wallet?

**[26:42] Amir Taaki:** So actually, I made the first CoinJoin and Stealth implementations in Bitcoin, which are the very first privacy techniques. And so I was working on Bitcoin implementations, nodes, but I was also focused on the privacy. So I already did those projects before.

**[27:03] Bob Summerwill:** Right.

**[27:04] Amir Taaki:** And then the Dark Wallet, I was like, we need to create a product. We need to create a wallet or something. Right. So that's why we made the Dark Wallet.

**[27:15] Bob Summerwill:** And when did you first meet Vitalik?

<h3 id="meeting-vitalik-and-calafou">Meeting Vitalik: London, Calafou, and Bitcoin Magazine</h3>

**[27:20] Amir Taaki:** Can you remember? Yeah. So I said I was living in these squats around Europe. Yeah. So after 2012, then... There was a friend I met many, many years ago when I was hitchhiking, and he was a really cool dude. And I just saw him randomly on the internet and I was like, bro, I'm making a conference. Come to my conference. And he's like, okay. And I didn't hear back from him. It turns out he walked onto a ferry without any documentation. He came from Estonia across Europe. He came into England and he now looked like Jesus. But he had long hair and long beard and stuff.

**[28:00] Bob Summerwill:** Didn't look good for an entry.

**[28:02] Amir Taaki:** Anyway, Mihai... Yeah, met him at the conference. It was like enchanted by him. He was like, I just met this guy, your friend. He looks like Jesus, man. Like, and then I remember like how it happened, but yeah. So then he was meant to come back with me to my house, but actually he missed the train. And so he ended up just walking into a random building in London. And that was like the building of the Occupy activists. So then I went there. And then Mihai came and we just started living there. And then we started setting up our hack lab there. But then also I have friends in Spain that are hackers that also they're making these communities. They also had Calafou. So then they decided to make Calafou, which was eco-industrial.

**[28:50] Bob Summerwill:** Near Barcelona, right?

**[28:51] Amir Taaki:** Yeah. So I was living with Mihai, I think, for like a year in London.

**[28:54] Bob Summerwill:** Right.

**[28:55] Amir Taaki:** And then we went to Calafou in Barcelona. Right. And Mihai co-founded the Bitcoin Magazine with Vitalik.

**[29:03] Bob Summerwill:** Right, right.

**[29:04] Amir Taaki:** And so then I was also working on the Bitcoin Magazine with them.

**[29:08] Bob Summerwill:** Oh, I see. Right, right.

**[29:10] Amir Taaki:** You know, I didn't write loads of stuff. It was mainly those guys writing stuff. But, like, for example, I helped Mihai with the graphic design.

**[29:18] Bob Summerwill:** Right.

**[29:18] Amir Taaki:** Like, some of the covers I helped design when we were high.

**[29:22] Bob Summerwill:** There you go.

**[29:23] Amir Taaki:** So then, anyway, we went to Calafou, and then Vitalik came to live with us. Yeah. And so then it was, and then there was like two other Spanish hackers, which are old friends of mine. And we were working together on projects. Yeah, so I'm, right, that was when we started Dark Wallet, right? I knew Cody from the conference.

**[29:46] Bob Summerwill:** So I says like, Cody, let's start... Which conference from the Amsterdam conference, the London one, that's the one that you, right, right? Was that the one that you organized?

**[29:58] Amir Taaki:** Yeah, I did the 2011 one in Prague. Right. And the 2012 one in London as well.

**[30:02] Bob Summerwill:** Right, right.

**[30:03] Amir Taaki:** Yeah. So, yeah, at the time we were working together in the hack lab. Mihai had his, I think it was Akasha. I'm not sure.

**[30:13] Bob Summerwill:** No, I think he did that later.

**[30:15] Amir Taaki:** Oh, no, it was Agora or something.

**[30:17] Bob Summerwill:** Right.

**[30:18] Amir Taaki:** Anyway, he was creating, I guess, what DarkFi is going to be now, like a social network marketplace kind of thing. Okay. So then he was working on that, and my friends were working on that. And Vitalik was working on Bitcoin stuff. I was working on Bitcoin stuff. Right, right. And then he was also working, they were working on the magazine. Yeah. So we were doing a whole bunch of stuff there in the hack lab. Yeah, right. And then, you know, we co-founded the Dark Wallet.

**[30:49] Bob Summerwill:** Right, right. And Peter Todd as well? No, Peter Todd came later.

**[30:56] Amir Taaki:** But you can see the original Dark Wallet announcement video on YouTube. And it has all the co-founders listed.

**[31:04] Bob Summerwill:** Right, right.

**[31:06] Amir Taaki:** So, yeah, we were working on that. So the CIC was a network of 10,000 cooperatives throughout Catalonia. Okay. And the whole reason that was made is because there's like a big anarchist movement in Catalonia. Yeah, yeah. And they... You know, they'd been doing their thing for many years.

**[31:29] Bob Summerwill:** Right.

**[31:30] Amir Taaki:** But then they started to mature as anarchists, and they were like, so to think more about economics.

**[31:35] Bob Summerwill:** Right.

**[31:35] Amir Taaki:** And organization and stuff. Right. It's something I also like about this Spanish tradition of anarchists. Right. They're a lot more organized than, for example, like London, where it's just like crazy people going, you know, like. Yeah. So they... Yeah, so they were like, okay, we need to make a network of cooperatives. And cooperatives need to provide all the basic things that people need to live. And we would therefore become autonomous from the state. So we'd become our own parallel system, which is cool, cool stuff. And so our team was actually the cryptocurrency part of that. They were interested in cryptocurrency because, for example, trading inside the network allowed people to avoid paying taxes because they consume from each other. But they also wanted to exchange outside of it. So they were like, oh, we can use cryptocurrency to do that. So we set up the first ATMs in Catalonia. Right, right. Cryptocurrency is part of this cooperative.

**[32:35] Bob Summerwill:** Right.

**[32:35] Amir Taaki:** But they also had a research lab, which was a giant factory complex in the Catalan countryside. Right. Which is, it was burnt down and the people came there with a proposal to the owner to buy it from the owner. Right. But then also there they had like, it's like a village basically, it's massive. Right. But they had like an industrial research sector, electronics. One of them was the hacking stuff, which is our hack lab.

**[33:02] Bob Summerwill:** Right.

**[33:02] Amir Taaki:** And that's where we were doing our cryptocurrency stuff.

**[33:04] Bob Summerwill:** Right, right.

**[33:06] Amir Taaki:** But anyway, as part of that research of the CIC and the tools that the CIC needed, that's how we came up with these ideas, which is the ones maybe you've seen the page. It's on archive.

**[33:20] Bob Summerwill:** Right.

**[33:20] Amir Taaki:** On System One. It's about BitLaw. Hmm. Anyway, I'm not sure. Anyway, there's like a bunch of pages on our old wiki.

**[33:27] Bob Summerwill:** Right.

**[33:28] Amir Taaki:** And it's talking about like, oh, what the applications we need to build with Bitcoin.

**[33:31] Bob Summerwill:** Right.

**[33:32] Amir Taaki:** So then that's when Vitalik started to become interested in those ideas.

**[33:37] Bob Summerwill:** Right.

**[33:38] Amir Taaki:** Right. So then afterwards he left Mastercoin. First he asked the Bitcoin. He was like, oh, let's loosen the restrictions on the opcodes. And the Bitcoin people were like, no, we're not changing anything. And so then he went to Mastercoin and then he went to do Ethereum.

**[33:56] Bob Summerwill:** He was saying he'd also seen what happened with Counterparty, right, where they were like chopping down the, you know, the OP_RETURN stuff. Yeah, it's like, okay, don't want to like build some meta protocol on top of this if it's going to get like, they're going to change the mind next month and it's like, right, you know, your protocol's dead.

**[34:17] Amir Taaki:** Yeah, so... Yeah, so they... Then when they were making Ethereum, that's, you know, with Anthony Di Iorio and all those people.

<h3 id="ethereum-early-days-and-toronto-2014">Ethereum early days and Bitcoin Expo Toronto (2014)</h3>

**[34:32] Bob Summerwill:** Well, yeah.

**[34:33] Amir Taaki:** I forgot also a bit before. The first Dark Wallet hackathon was in Milan.

**[34:42] Bob Summerwill:** Yeah, I was going to mention. So Mihai was in Milan for a fair bit, right?

**[34:48] Amir Taaki:** Yeah, we were all together. We would travel together and go to these places. But anyway, Macao's also like a really big... Gambling. Huh?

**[35:00] Bob Summerwill:** Gambling? Oh, no, in Milan. Oh, I thought you said...

**[35:03] Amir Taaki:** It's a community centre called Macao. Oh, I see. Yeah, it's huge as well. It used to be a meat processing plant. But anyway, they have loads of cultural things there. But anyway... Yeah, yeah. They let us use it for a month to do our event. Right. So that's when Taylor... Yeah, right. A lot of those early Ethereum guys. Right. Hive, Hive Wallet. Yeah. They came there and that's how they all met each other. Right. The early co-founders. Yeah. And then also Richard Stott. Yeah, designer. Yeah, he was also my friend from London. Oh, right. That's how Mihai met him.

**[35:40] Bob Summerwill:** See, yeah. So, so Vitalik had shared like a few years ago, shared early, his first communications with Gav, where Gav contacted him on the 19th of December 2013 through about.me. And Gav said, I... He said, where are you with Ethereum? I can do C++, basically. And then four days later, he'd created his repo to start working on cpp-ethereum. But the other bit I forgot there is, Johnny gave me the heads up. That's what he said, which was Johnny Bitcoin, who he had met through you, right? So Gav came to the squat at some point in London?

**[36:49] Amir Taaki:** Yeah. Yeah, we were hanging out because he said he's a KDE developer.

**[36:54] Bob Summerwill:** Right.

**[36:54] Amir Taaki:** He's written LIRC.

**[36:56] Bob Summerwill:** Right. I think in one of the interviews he said, I'm going to give my KDE email because that will give me cred.

**[37:06] Amir Taaki:** Oh yeah, it did. I was impressed by it. I was like, whoa, he's got a KDE email.

**[37:13] Bob Summerwill:** That's impressive. That's right.

**[37:15] Amir Taaki:** That's funny.

**[37:19] Bob Summerwill:** It worked. It did. So he came along and then I guess he was talking to Johnny and Johnny must have mentioned Vitalik and Ethereum and pointed him onwards.

**[37:34] Amir Taaki:** Yeah, I... Yeah, I also, when I visit them in Anthony Di Iorio's, that's where that hackathon... Yeah, so, so yeah. Is Anthony Di Iorio a co-founder of Ethereum? Yeah. So put money into Ethereum. Yeah, he did. Oh, what happened to that money? Like, I... He did things well. Yeah, he got...

**[38:00] Bob Summerwill:** So he basically lent money to the project for those early months of development, and he did get paid back out of the crowd sale. There was some court case where it was like, did he get it back as Bitcoin or as fiat? There was some kind of disagreement on that, but that got finished off. But yeah, the timeline was Vitalik did the white paper in about November 2013. He shared it with a bunch of people. I don't know if he shared it with you, if you were on that list of people who got it early. Oh, right, the BitLaw. Yeah, yeah. Right. So just a whole bunch of different, right. So yeah, transparency, arbitration, auditing and transparency, multisigs. Yeah, a whole bunch of cryptocurrency 2.0 use cases.

**[39:01] Amir Taaki:** So they did ask me to be the lead Ethereum dev? Right, but I just didn't, I was like, we can build this on Bitcoin. Right, right. Why do you need a new thing? Yeah, because I know you can build it on Bitcoin. Right, at the time. But yeah, that December, and I kept, I kept also pressing the guy, right, to explain to me what it can be used for. Yeah. And he, he just kind of in frustration just went, marriage contracts. Not so appealing.

**[39:35] Bob Summerwill:** No, no.

**[39:36] Amir Taaki:** I don't see the point.

**[39:37] Bob Summerwill:** But yeah, December.

**[39:38] Amir Taaki:** It's interesting because sometimes you can be too closed minded about things.

**[39:42] Bob Summerwill:** Right, right. But yeah, that December, you know, after he shared the white paper around, you know, various people started gathering around.

**[39:49] Amir Taaki:** I think what led to Ethereum's success was having a token. Having the token is really good because it allows the project to accrue value. Whereas working on Bitcoin, we were always broke.

**[40:01] Bob Summerwill:** Right, right, right. Yeah, I mean, those early months, you know, no one was being paid on Ethereum either. And it's like, you know, we will have a token sale. You will get paid back. But, you know, it's, you know, hope and a dream. But yeah, the hackathon that you're talking about was in April of 2014 in Toronto. So Anthony Di Iorio running that, he'd got, you know, Bitcoin Decentral sort of co-working space and venue there. Were a bunch of projects running out of there. You know, it's kind of like, yeah, he'd say sort of like businesses running. I mean, I don't know how great businesses they were. Projects were operating out of there. And then one of the things that they did was organize this first Canadian Bitcoin Conference, to which, it's funny, so he'd got the space. He was the head of the Bitcoin Association of Canada. The Bitcoin Association were running the conference. Ethereum were the main sponsor for the conference. So it was like his space, his organization, his conference, his sponsors. And somebody said at some point, is this how marketing works? That you've just got all these different hands that are all paying each other, you know? It's like, oh, there's a lot of activity here, but it's all, you know, from that same source. But yeah, but there was a hackathon.

**[41:37] Amir Taaki:** So he did get cocked.

**[41:41] Bob Summerwill:** I don't know. But yeah, so there was the hackathon that you were at, you and Cody, presenting, you know, Dark, well, I guess it was Dark Market, wasn't it, that you got that one?

**[41:58] Amir Taaki:** Which became OpenBazaar.

**[42:00] Bob Summerwill:** Right. And then there was the main conference with, so yes, the aforementioned Peter Todd was there, Andreas Antonopoulos, Dave Johnston. You'd got Adam B. Levine as well, and a bunch of others. But yeah, that conference was also the only conference where there was ever like an Ethereum stall, you know, like the expo area. They were like, hey, you know, we're like, you know, it was like a business, right? It's like here's a business project at that point. And Anthony's thought and expectation was like, all of this is going to happen out of Toronto, right? Ethereum is just one of N projects that are happening out of Bitcoin Decentral there. But lots of the projects in that hackathon were on Ethereum as well. But what you were building was not.

**[43:06] Amir Taaki:** Yeah, that's what I was saying. Didn't need to be. No, no. The thing is, I was quite an expert in Bitcoin. So obviously it's like difficult for people who don't know Bitcoin deeply to do those things. So that's the thing I missed is actually having something with like a language, etc. It's like it's easier for people.

**[43:28] Bob Summerwill:** Yeah, absolutely. So, I mean, can you remember like what the vibe was like at that conference as compared to other Bitcoin conferences you've been at?

**[43:39] Amir Taaki:** It was a fun conference. It wasn't like an exceptional conference. Yeah, I had a good time. I was just going around chatting to people. Yeah, it was good.

**[43:48] Bob Summerwill:** Yeah, yeah.

**[43:50] Amir Taaki:** Yeah, I remember Adam Levine and Stephanie and Andreas.

**[43:55] Bob Summerwill:** Right, yeah, yeah.

**[43:56] Amir Taaki:** They hung out with each other a lot.

**[43:57] Bob Summerwill:** Yeah, yeah. So, I mean, I guess, you know, Ethereum kind of, you know, kept ticking along there. Like, was that something, you know, happening in parallel or were you still kind of crossing paths with these people through that year?

**[44:16] Amir Taaki:** No, I didn't interact with Ethereum after that.

<h3 id="dark-wallet-libbitcoin-and-syria">Dark Wallet, Libbitcoin, and Syria</h3>

**[44:19] Bob Summerwill:** No, no. Yeah. And I mean, in terms of like...

**[44:27] Amir Taaki:** I think all the money started to come in and they all started to go, and then I was in Europe, and then I went to Syria.

**[44:34] Bob Summerwill:** Yes, yes. But yeah, I mean, the timeline of that was Ethereum, white paper November, kind of team starting to gather about December, BTC Miami. Were you at BTC Miami in January? Did you go to that one? No.

**[44:52] Amir Taaki:** I went to the Toronto thing.

**[44:54] Bob Summerwill:** Right. So then, yeah, Toronto in April and the crowd sale actually was like July, August-ish of 2014. And then you had the Ethereum Foundation starting to do the crowd sale. And then, yeah, early contributors, look, got like paid back for their work in those prior months and, you know, Ethereum was often live.

**[45:28] Amir Taaki:** We did the Dark Market just purely for money.

**[45:31] Bob Summerwill:** Right.

**[45:32] Amir Taaki:** Because, you know, 15K.

**[45:35] Bob Summerwill:** Right.

**[45:36] Amir Taaki:** So that was pretty cool.

**[45:38] Bob Summerwill:** And, I mean, with Dark Wallet, like, what kind of time span were you working on that for?

**[45:48] Amir Taaki:** We... I think we started in 2013, and then we were working on it all the way to the end of 2014. Right. And we released an alpha, which the crowdfunding was for the alpha, but we never released the stable.

**[46:03] Bob Summerwill:** Right.

**[46:03] Amir Taaki:** And that's mainly because I went to Syria, but I thought the dev team would at least just finish it. Right. They had enough money and everything.

**[46:11] Bob Summerwill:** Right. Didn't happen.

**[46:13] Amir Taaki:** They kind of like, it just fizzled out without my presence. Which is like, it's a failing of my leadership not to create an organization that doesn't fizzle out when, you know, one person disappears. So...

**[46:26] Bob Summerwill:** And with Libbitcoin, was that ongoing as well as what you were doing on the other projects?

**[46:32] Amir Taaki:** So Libbitcoin had serious technical innovation in there. It has the fastest blockchain database of any Bitcoin node. And this guy, Eric Voskuil, who's a really skilled developer, he came and he took on that mission and he's still continuing it. Yeah, he's not just really into it. I've tried a few times to poach him to DarkFi, ZK, other stuff. He's a really good developer, but he's just like, no, I just like Bitcoin. Yeah, I just work on Bitcoin. So, yeah, he's laser focused on that.

**[47:03] Bob Summerwill:** Yes, I've got to meet him in person for the first time last year, I think, after lots of, you know, me like advanced, dysregulated focus. Right. Yeah. Well, I mean, he's just been at that for 10 years.

**[47:22] Amir Taaki:** Yeah, it's crazy.

**[47:23] Bob Summerwill:** It will be 10 years.

**[47:25] Amir Taaki:** Imagine working on one project.

**[47:27] Bob Summerwill:** And also, you know, he's like, yeah, it's not production ready yet.

**[47:31] Amir Taaki:** He's a really good developer.

**[47:35] Bob Summerwill:** But yeah, he is. And he's also, he's published some stats, you know, the last year or so.

**[47:40] Amir Taaki:** They just need money, really.

**[47:42] Bob Summerwill:** I mean, but he's cool with it as well. He's just like, yeah, you know, I'm just working and I'll keep working until it's done. And yeah, I mean, he's got to the point where he's published some stats in the last year or so and, you know, it's just massively better, you know. It's just, yeah, just the whole thing re-shrunk, right, and re-stripped down and built up from that base. Yeah, yeah. So, I mean, early days of Ethereum. What are your thoughts on Ethereum? Like having seen it being birthed, what's Ethereum to you?

<h3 id="reflections-on-ethereum">Reflections on Ethereum</h3>

**[48:24] Amir Taaki:** It is the closest expression of the Agora as existing crypto now. They've done a lot of really good research. I have like... You know, I think Ethereum needs to develop a political philosophy. The one with Ethereum is it's very ahistorical. Like, if you do science, your, like, evidence is... If you're doing... When you do science, you need evidence to, like, support your theories. It's, like, all well and good having models, like, abstract, like, deductive mathematical models. But you need to like backtest your ideas. And when we talk about like social systems, what that is, is history. The thing is with Ethereum, whenever they talk about history, it's always like the most minor or like society, most minor examples are completely inoffensive because they don't want to take a stance on anything. And I don't think you can be like that. I think you have to take, go deep into things, take them apart, etc., you know. So I think that's really harming them. Especially they like want to change the world, do things of social benefit. That's why they're making now these, you know, these kind of network state communities. Yeah, they're trying to recreate the Calafou thing, the Calafou experience. Yeah, where we were developing tools for the CIC, the cooperatives, and that allowed us to see what people need. I respect the intention, but I think the problem is that when you make a project, you don't gather a group of people together and go, what should we do? First you come up with the idea, you develop the idea, and then you recruit people for roles to fulfill that objective, that mission. So they're doing the opposite. They're trying to bring loads of people together and see what happens. And I think there's the reason why Ethereum has these like roadmap diagrams which are like these are really arcane plots of stuff, but it's like what's the organizing idea underneath that? And they don't have one. So anyway...

**[50:45] Bob Summerwill:** No, I mean, it's been a criticism I've had for a number of years is you'll see Vitalik, you know, plop out this big roadmap diagram thing. And I remember first looking at it and there were three little boxes in the top corner that were transitioned to proof of stake. Three boxes that took eight years. And you've got 50 odd things on this diagram. And it's like there's decades and decades of work to do all of this. And also, you know, the plan's going to change every year anyway. You're never going to get to the end of that. And it's like, yeah, what's feature complete? What are you aiming for? When's good enough?

**[51:30] Amir Taaki:** I also think Ethereum needs to be more product-focused. I don't mean product-focused by paying lots of useless focus groups or UI designers that used to work at Facebook or something like that. I mean actually going, what is it we want to do and how do we develop the tech to fulfill that objective and aggressively pursue one or two use cases, deliver them and expand that. Like, not like, Ethereum is like, it was made in a time when you can launch absolutely anything and it would succeed. And, you know, they did really well. But the thing is, people see what Ethereum did and they think that's gospel for how to start a new project in crypto, right, playbook. And I think that's maybe that's hampering a lot of people. And the, actually, you know, the, when you, the Ethereum early on was like, we're like apolitical, we're a neutral technology, you know, blah blah, application platform. Yeah. And I think it just didn't... They need to be more strategic. When you make a project, you have an end goal that you want to get to, you have a strategy, and you have a roadmap, and you have milestones in the roadmap. And I think it's really important that underlying technologies are developed in parallel to applications and the people using them. So when you develop applications and you field them, then you see how the technology needs to evolve. Otherwise, you know, when you give technology to the hands of technologists, and this is what Ethereum has also suffered from.

**[53:30] Bob Summerwill:** They're like... And build stuff that's interesting to them.

**[53:33] Amir Taaki:** Yeah, exactly. And again, it becomes arcane. Like, oh, we need this, and we need this, and we need this, and we need this. And it's like, actually, it doesn't even fulfill any of the use cases that well.

**[53:44] Bob Summerwill:** No, no, no. No, I mean, it shouldn't be hard, right? It's thinking, okay, well, who are our users and what do they want to do? And let's do that.

**[53:54] Amir Taaki:** It's really difficult to talk to the Ethereum clique core thing. It's very cliquey. So they have a big political problem, I think.

**[54:03] Bob Summerwill:** Yeah, and I think that sort of almost unbounded scope is problematic. Something Nick Szabo talks about is the idea of argument surface. So he's drawing an analogy with attack surface for security stuff and is saying on a social level, the argument surface for a system is basically like how much stuff is there that's like up for grabs, that's not like defined, that you can have a reasonable argument about, we should do this, we should do that, we should do the other. And if you have a really well-defined system, right, where it's very clear what this thing is for and what it's meant to do and like, have we met these needs or not? You don't have all the arguments because you all know what you're building. You don't fuck about like changing the design or plans or anything because you've all got that common goal. So then the criticism there of Ethereum is that there's almost infinite argument surface. It's become like a parliament, right? So you've all got protocol politicians and lobbying groups and you can sit and fucking argue about that for years on end of like, oh, we should have this feature, that feature, this protocol, this, the other. And a lot of those aren't necessarily actually moving you to something that is actually solving real use case problems. That's actually getting people, you know, using the tech. Okay. Well, thanks. Well, thank you very much for your time.

<h3 id="darkfi">DarkFi</h3>

**[54:03] Bob Summerwill:** Would you like to just say a little bit about DarkFi before we wrap?

**[55:50] Amir Taaki:** Yeah, DarkFi's an L1. Oh yeah, sorry. DarkFi's an L1, you can do everything with it, but anonymous. So, you know, you can buy and sell, you can make anonymous DAOs, do OTC, etc. That's what we need to build the Agora, so...

**[56:16] Bob Summerwill:** I've heard some people say perhaps Monero with smart contracts. Would that be reasonable?

**[56:23] Amir Taaki:** But we're not using ring signatures, we're using ZK.

**[56:26] Bob Summerwill:** Zcash with smart contracts.

**[56:30] Amir Taaki:** Yeah, well, yeah, maybe, yeah.

**[56:34] Bob Summerwill:** Okay, thanks so much.

**[56:36] Amir Taaki:** Thank you.

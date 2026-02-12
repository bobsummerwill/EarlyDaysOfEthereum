---
title: "Early Days of Ethereum - Episode 12 - Fabian Vogelsteller"
date: 2026-02-25
show: true
guests: ["Fabian Vogelsteller"]
hosts: ["Bob Summerwill"]
description: "Ethereum developer Fabian Vogelsteller shares his journey contributing to the Ethereum ecosystem, including his work on the Mist browser, web3.js, and the ERC-20 token standard that became the foundation for the ICO boom and the broader token economy."
img: /images/covers-for-conversations/episode012-fabian-vogelsteller.png
---

## Audio

## Transcript

<!-- TABLE_OF_CONTENTS -->

**[00:02] Bob Summerwill:** So hello and welcome to Early Days of Ethereum. I am delighted today to be joined by Fabian Vogelsteller. Is that the correct pronunciation?

**[00:15] Fabian Vogelsteller:** Like an F? The V is more like an F. But yes.

**[00:19] Bob Summerwill:** Right, very Germanic pronunciation. That's not going to come out of my mouth. So yeah, you know, great, great to see you. We saw each other at DevConnect in November I think for the first time for quite a while and had a good catch up there. But hello.

**[00:44] Fabian Vogelsteller:** So hey, yeah.

**[00:47] Bob Summerwill:** What were you doing prior to wandering into blockchain world?

**[00:59] Fabian Vogelsteller:** So okay, let's start from the beginning. Okay, so what I was doing before blockchain, I was actually a web developer. So I started out as, I mean I build websites since I was 14. My Fandura, the name that I have on Twitter is actually the name of the content management system that I built I think in 2005. And it just happened to be, you know, turning into my second identity. So I have two identities on the Internet. Frozeman and Fandura. It's all just connected to two things in GitHub. I'm Frozeman and that's also my GitHub history with Ethereum and so on. And Fandura is then my online one.

Yeah, I mean I basically, you know, was always interested in the cutting edge of like the cool Internet stuff in the 90s, you know, building in the first 2000s my first websites or 1990, whatever, eight, nine, you know, following the whole evolution of the Internet with HTML, CSS, HTML1 and 2 and CSS1, 2 and JavaScript coming in and blah blah blah. So mainly did web development but I studied media design so I didn't study anything with coding. All the coding is autodidactically learned, so I haven't. Yeah, there's nothing that came from, from honestly even when I joined Ethereum I had no clue about bytes and how to manipulate bytes and stuff. Still don't have, actually I still don't know.

**[02:37] Bob Summerwill:** Didn't have your computer science background. I don't have any computer science background.

**[02:42] Fabian Vogelsteller:** Not sure what, I don't know what I'm doing on the computer. I just know how to interact with like high level languages and now I only know how to speak to AI and to my team.

**[02:52] Bob Summerwill:** That's all you need. Things changed and you wrote a book.

**[03:01] Fabian Vogelsteller:** I wrote a book about Meteor.js. So I, yeah, I got really obviously into web development. I did a lot of websites and built a lot of things. I built my own content management system in PHP and I built a flat file based content management system. So that means that this doesn't need a database. The whole idea was, okay, I just want to have one of these FTP PHP ready servers and if I want to move my. It was literally all about the independence of hosting providers. Right? If I want to move from this hosting provider to the other. I mean back in the day migrating databases was a nightmare and probably still is a nightmare. Oh yeah, it was. Oh, if I build a flat file based thing, you just copy the whole folder structure over to the other server and it works. And it did. So that was what Fandura.org CMS does and did. I mean obviously who uses PHP today but Facebook does? No, but, but I mean, yeah, now I have a bunch of haters in the PHP community, but yeah, I mean so yeah, I built that thing and that was really like helping me like to kind of like do a full project front to end.

And then I got more into JavaScript and I got really excited by Meteor.js, which was one of the first reactive JavaScript frameworks that was before Angular, before React and it was the first time where you just could write like this JavaScript code and this HTML stuff and when you update stuff in the JavaScript or in your local state, like the HTML got rerendered natively. Super magic. So I got really into this and I wrote a book about it. I have it here. If you ever want to. I would never, I would never read a tutorial book to be honest. But I wrote one thing.

**[05:04] Bob Summerwill:** People even read books anymore.

**[05:06] Fabian Vogelsteller:** Yeah, I mean honestly I would never even. It was so much work to do this. And the reason why I did is because they reached out to me and I thought like yeah, I could do that. And then, you know, Marjorie, my ex wife back in the day, encouraged me and I thought like okay, why not? And on the end it was a lot of work. I mean literally like four months of waking up and I had a kid, two year old, two year old kid at the time and I had to wake up very early or maybe a year old, I don't remember. And I had to wake up very early at five to you know, write one or two, three pages or five pages, whatever and then go to work. It was intense. You get an hourly rate of like 10 cents. So it made totally no money. I literally probably made like exactly like 10 cents per hour or something like this.

**[06:01] Bob Summerwill:** Right.

**[06:02] Fabian Vogelsteller:** But it's reputation and in a way I think that also what got me into Ethereum because, because what is this writing single page apps with Meteor. And what is a dapp? It's a single page app.

**[06:18] Bob Summerwill:** It's.

**[06:18] Fabian Vogelsteller:** The whole point literally runs in your browser, doesn't require a backend. And I built actually a tool that allowed you to strip out the server part of the Meteor app so you can handle it as a local app. It's actually quite. It was quite a popular repository called Meteor Build Client. And yeah, that's what I used for dapps in the early days in Ethereum too.

**[06:46] Bob Summerwill:** Is Meteor still an active project? Is anyone using Meteor too?

**[06:52] Fabian Vogelsteller:** Yeah, no, I totally think so. I think so, yeah. I mean, I don't know how frequent they are. Yeah, I haven't checked it out in a long time. No.

**[07:10] Bob Summerwill:** But I mean, it was quite, quite a revolution at the time. The single page app.

**[07:15] Fabian Vogelsteller:** It was the first, you know, it was literally like, it was one of the first. It was the first framework that I know that really was a proper framework and it just solved the whole thing from account creation to reactive DOM updates to server client synchronization. It was magic. Yeah, it blew a lot of people away. And then all the other React and so on were kind of more like answers to this. And then React brought it back to the weird way of mixing code and UI in the same files, which I already found very bad in PHP times.

**[07:52] Bob Summerwill:** Right.

**[07:53] Fabian Vogelsteller:** Yeah.

**[07:56] Bob Summerwill:** And then I guess you maybe sort of found your way into Bitcoin world in some form.

**[08:02] Fabian Vogelsteller:** So, yeah, 2013, I heard about Canadian wants to sell house in Bitcoin. And I thought, okay, wow, what's that? Like somebody's selling a house in a currency I've never heard of. And that really led me very quickly down the rabbit hole of, of this was 2013, March. That was literally when Bitcoin hit 200 in that very same month. And number one, I saw, okay, there's money to be made here. And I was a student with no money. So, like, you know, trying, like, you have your hope. Okay, okay, maybe I can make a little bit of money on the side this way. But I really quickly understood the fundamental power of this technology. And it took me like about a year to really understand how it works fully. I mean, I literally had this epiphany every month that I thought, like, now I know how it works. Ah, it took me a year to really construe my brain, you know, no servers and frameworks, you know, and how this basic stuff works. And then the crypto blockchain stuff was just so out there in a way how this stuff works.

But yeah, so I was in the space and then in 2000 and obviously, you know, right after I joined the Bitcoin community, then there was the first altcoin Litecoin. And then in 2013 there was a lot of like projects that were created trying to imitate Bitcoin or do an improvement or do alternate versions. I also got really into Mastercoin, the idea of just writing onto the Bitcoin blockchain rather than creating a separate blockchain.

**[09:49] Bob Summerwill:** Right. And you're in Berlin. Right. Were you going to meetups or like, did you find fellow.

**[09:56] Fabian Vogelsteller:** It was just online. There were no meetups at the time, really. Like not in my region. So what actually happened in 2000? And so there were done later. 2014, there were then some meetups and so I heard about Ethereum. I really knew that. I just felt immediately that this is a really powerful approach, but it also sounded so unrealistic. So when I heard like this, this, I mean, I looked at the white paper. I never really read the Ethereum white paper actually ever fully. I just literally just like I skipped over it and I listened to Vitalik and I. Or like the early things that were floating around and I knew this is it. The idea of making this computation machine on the blockchain makes total sense. I just thought it's so hard to do. And I didn't really give it a lot of chances of that they pulled this off, but then they pulled it off pretty quickly and it just happened so that I was at a meetup in Berlin, a Bitcoin meetup, I think the first one I was ever at.

**[10:55] Bob Summerwill:** Right.

**[10:55] Fabian Vogelsteller:** They wanted to open a Bitcoin center, Berlin. Coworking space, basically.

**[11:04] Bob Summerwill:** Can you imagine what kind of month that might have been?

**[11:06] Fabian Vogelsteller:** That was in. I think it was August 2014. It was literally like a week before the Ethereum presale started.

**[11:18] Bob Summerwill:** Right, right.

**[11:19] Fabian Vogelsteller:** Like literally like days before. So I met these guys from Ethereum. In this case was Aeron, who did the accounting at the time.

**[11:28] Bob Summerwill:** Yeah.

**[11:29] Fabian Vogelsteller:** And they told me that they are going to open an office in Berlin and that there's some kind of news coming out next week, but he can't tell me. And I was already following Ethereum. I was already waiting for the ICO. And yeah, then it happened. So I took all my Bitcoin that I had at the time, which was 12 Bitcoins, converted them into Ether. I mean, people think like, oh my God, 12 Bitcoins but they were like 600 worth or whatever. It was like literally not much. I put them all into Ether or pretty much everything. And I knew this is going to be big. I felt it.

And this was also the first time a project where I thought I would love to work for this project because it's not about finance, money and wallets because every Bitcoin startup at the time was just about creating a wallet and I was not really interested in creating wallets. And so it just happened that the same like six months later, you know, Bitcoin happened, ICO happened, attention came, blah, blah, blah. I just got an email from a recruiter saying the company Ethereum is looking for a C++ developer and I was not a C++ developer. Recruiters don't check anything on LinkedIn, I guess or GitHub. But I knew that they're now looking. So I went to their office and I just chatted with Aeron again and I saw that this office here, Waldemarstraße and I realized that okay, actually they really just thinking that they're going to build the nodes and then like people will build on top of the stack. And I just knew, you know, like I know how to build single page apps. This is what you need. I knew this is what they will need to make sure to show what a dapp can be and show how to. I just felt it and so I said like Aeron just, just can. I mean I showed him this as well and just ask around internally.

And they had one Skype group that was kind of like the Discord group at the time. Yeah, and funny enough, Alex Van de Sande is the one who came on board as the UX designer also just a month before me. And he had this whole idea of creating this Mist browser concept and I think when Alex heard about that there's this guy that came up here that can build single page apps, then Alex thought, oh, that could be the person who can help with building the Mist browser. So he convinced Jeff, I mean that's my assumption what happened? And he tried to call me up and I was in Turkey on holiday. So I didn't pick up the phone. And then when I came back I saw someone, he called me up and somehow I think I called him back or whatever and yeah, I said, hey, you want to work here? We want to do this and this and this was Aeron.

**[14:28] Bob Summerwill:** That you were talking to again?

**[14:30] Fabian Vogelsteller:** No, this was Alex. Yeah, so I was talking to Alex. So Alex wanted to have me because he, I think he probably convinced Jeff because he saw this as a guy who can help build his idea. Right. And Jeffrey was kind of skeptical of hiring anyone. There's not a C++ developer. What the can you do, I guess is what he thought probably watch JavaScript cannot work.

**[14:58] Bob Summerwill:** So I mean you started in, in was. I think it was January 2015. So I guess this discussion would have been in like December 2014.

**[15:08] Fabian Vogelsteller:** Exactly. Yeah, yeah, it was mid of December, I was on holidays. He tried to call me and yeah, he said, hey, can you start and ask, you know when to start? He said, yeah, start in January. And Jeffrey obviously really wanted to prove me, so he thought, okay, let me just throw a really complicated task at him and then we'll fail anyway and we can get over with this whole thing. I think that's what Jeffrey thought. So he said, okay. Build a chat app for the Whisper protocol.

So in Ethereum there was the Web3, right. The idea of Web3 was the network, storage, the Swarm storage and communication, the Whisper. Which by the way I only figured out later that Web3 means exactly these three things. Fun fact, I always thought it's like, sure, Web 2, we go to Web3. But that was actually the three, probably both.

**[15:56] Bob Summerwill:** Right. It's, it's kind of a bit of a joke that you've got, you've got both. And I was just looking. So it was November that Alex had done his, you know, Mist concept presentation. So I guess that was really quite fresh. It's like, okay.

**[16:15] Fabian Vogelsteller:** So he had the idea and then they were working on it already early December and I forgot his name. But the guy who, who the French guy who then worked on Remix. I'm sorry, I forgot.

**[16:28] Bob Summerwill:** Yann Levreau.

**[16:30] Fabian Vogelsteller:** Exactly. So Yann actually built, he built an early version of the Mist browser, but in I think in C++ or something like this and browser, I think there.

**[16:42] Bob Summerwill:** Was one called AlethBrowser.

**[16:43] Fabian Vogelsteller:** Maybe it was really early, early kind of Mist. It was barely working and obviously the whole idea connection stuff was not figured out properly yet. And they just really realized quickly that this is not the way to go. And that's why maybe Alex saw an opportunity here with this JavaScript dude showing up with the single page app book or whatever.

**[17:04] Bob Summerwill:** You'd had AlethZero as well, right? I guess that was the very first GUI thing. Maybe that's what you were thinking of with Yann.

**[17:13] Fabian Vogelsteller:** Maybe AlethZero was the was and.

**[17:15] Bob Summerwill:** That was like a really like really ugly programmer tool. Kind of like million control.

**[17:22] Fabian Vogelsteller:** Yeah, I think AlethZero was that early Mist browser. Exactly. Yeah, yeah. Anyway, so Jeffrey said, hey, let the guy build a chat app in the Whisper protocol. I got dropped into this novel tech, no documentation, no idea how the shit works, and I was supposed to build a whole chat app using this protocol and that was crazy. But because I really knew how to build single page apps that are reactive and I could work with Yann actually on, you know, he gave me just the endpoints that I need to use to get the account and to do the sending the messages and stuff like this, I pulled it off and built like a chat app.

And the first time we met in March or April, all together in Amsterdam, we all used the Whisper chat app to talk to each other. Encrypted chat messaging, including groups, including. I added topics. So in a channel you could basically say, I want to talk about a certain topic. And then you could filter by the topic so you could see all messages or you could say, I want to only see this or that topic. And it's the same like threads in Discord, by the way. So I basically made the thread concept of Discord in this tiny app and it worked. And you were connected with your wallet, you know, that was in your node, in your Geth stored.

And I think, you know, Jeffrey was quite impressed and that kind of gave him some confidence that I can do it. Even though he was trying to, you know.

**[18:56] Bob Summerwill:** Yeah.

**[18:59] Fabian Vogelsteller:** Prove me wrong or prove himself right. That's not going to work. And what's crazy is we literally built the Mist browser in like three months. We built the first working version and we released it with the mainnet. We released the Ethereum wallet that was July 31, 2015. So basically, six months later, seven months later, we released the first Mist browser version.

And it was so crazy because everything needed to be figured out. I needed to learn all how this stuff works. And initially, in the first two months, it felt literally impossible. And I felt like, there's no way I'm going to figure this shit out. Like, there's no way. There was no documentation. It was completely over my head in terms of complexity and shit that I didn't understand at all. But I pulled it off and I had to, like, obviously there were people around me that I could talk to, but everybody was also so busy and had to like figure out their own thing, you know, because everything had to be figured out at the time, but I had to literally touch every point.

I had to work with the RPC API. And then I saw this thing was kind of messy. Sometimes it was returning hex sometimes it was not returning. So I had to basically I thought I'm a Virgo. So I immediately tried to fix things and make them proper. So I basically immediately wanted to make sure this is proper because when we launch the nodes, this stuff can't change anymore because now once we start mainnet, you know, you don't want to constantly like make devs stuff unworkable. So I had to fight with Gavin to fix and change the endpoints. And that was quite already like a little bit of an uphill battle, let's say.

Then I had to get into Web3.js, which Marek was working on with Russell's JavaScript library that, you know, I think Gavin and Jeffrey started and then had to help with him or work together with him initially. And then I really contributed to Web3.js because we had to build that into the Mist browser directly. So I was literally the first user of that library and really contributed to that library as well.

**[21:16] Bob Summerwill:** Right.

**[21:16] Fabian Vogelsteller:** We had to make everything up. The whole foundational stack of Ethereum we made up in this first few months. And you know, because I built the piece that put it all together, like the node, the dapps, the Web3.js, the RPC endpoint, everything into one app. I had to literally touch everything and I had to go to talk to everybody. That was quite challenging, not gonna lie.

And I also realized that Jeffrey's team and Gavin's team was a little disconnected and they tried to like there was still little like battle and war going on where everybody wanted to be the one who determines which feature and how. And I just realized, guys, if we are doing like this, that shit's going nowhere. You know, if you don't work together and it would be too complicated, too much iterations. So I tried to make the team talk, these two teams. But Jeffrey's team, you know, I was part of Jeffrey's team. We were a little bit more open, at least how I felt. Gavin really wanted to kind of keep everybody under a bucket and he didn't want that we talked to this team. But I kind of found back ways and back channels to make them sync up. I guess Gavin didn't like that, but it was really needed so that eventually they were more starting to work more together and had to do a lot of connecting handholding because I was in this crazy position of being hired by the Amsterdam while sitting in the office of Gavin of this of the Berlin C++ team.

So I was in at the same time as the only person. So I was the connector, you know, I was the translator and the connector basically. And I had to deal with all the pieces. So I had to deal with, you know, the C++ client had to work in, as a client, in the Mist browser, as the Go client. So I had to talk to people when something was not working. And this crazy how much happened in this first six months before the network start. I mean equally on the network side. Right. Like there was so much just being built and done at the time, but the whole dapp tech stack was literally made up in this moment, in this time.

**[23:33] Bob Summerwill:** Yeah, I mean I was just looking at the timeline. So September 16th, 2015 is when the first developer preview of Mist went live. I mean saying about with those, with the two teams, I mean I guess you were sort of in the position of being the very first person like building one layer up, you know, I guess all of the prior efforts were just about the clients and you know, and making features available on the clients but not really building things on top of. And specifically not building things on top to try and be able to work with either. So those interface issues and I mean.

**[24:18] Fabian Vogelsteller:** To be fair, the first dapps probably were built by Gavin and Jeffrey but they used all the clunky half-ass stuff.

**[24:30] Bob Summerwill:** They're only on their own stack. Right.

**[24:32] Fabian Vogelsteller:** And then only on their own stack. Yes. I built the first number one dapp browser, like literally generic tool that can run any JavaScript app to connect to the blockchain. And I built it with Alex Ethereum Wallet which was the first ever dapp on Ethereum. Like the proper done designed, cross client functional thing. Yeah, that's exactly what we did.

**[24:57] Bob Summerwill:** Yeah, but yeah, I mean all of that prior stuff, it was just really on their own stack.

**[25:05] Fabian Vogelsteller:** A little JavaScript page, talking to their own endpoints.

**[25:08] Bob Summerwill:** Yes, right. I mean and looking through old videos. There was one which I think was a talk in London where both Jeff and Gav were sort of talking about the state of Ethereum and demonstrating some things. So this was October 2014 and one of the demos that they had was one of probably the first onchain DEXs. So they were. You'd got GavCoin and JeffCoin, you know, this is prior to any standards I guess and GavCoin was written in LLL and JeffCoin was written in Mutan. But they did do an you know an onchain DEX order book thing and so putting a transaction for an offer like CPU mining, picking that up, you had got that interop and I guess maybe some of the Whisper stuff was maybe kind of cross client, but the UI layer.

**[26:19] Fabian Vogelsteller:** So for the chat app I mainly used the Go client because the Whisper thing on the C++ was not fully integrated or working. The initial idea was that the Ethereum client will host all three things. Swarm, Whisper and the network. Yeah, obviously that Swarm never really worked in there and, or, and neither Whisper, which then later what got overtaken and supported by Status and now it's transferred into a whole different protocol.

Yeah, it's interesting. I mean this was really like foundational times and I think what people really like often misunderstand is how much number one, Ethereum was generic from day one. Number two, how many ideas were already present. If you watch the Mist browser video from Alex, like we haven't even built half of this stuff that's in that video and in fact a lot of these foundations are missing. And for example now I'm working on universal profiles across smart contract system and that's even in the video already in there. Like you don't see wallets, you see profiles, you see people doing stuff. And only now, literally 10 plus years later, we now have the foundation and it's not even widely used yet. That even makes that Mist video more realistic.

And yeah, Alex came up with all of these ideas. This is just what was around at the time. Even like right after Bitcoin became got attention in 2013 and 2010, these ideas were already around like how can you build decentralized Uber and decentralized this and decentralized that and DEX and whatever. And it's just people think this stuff was. Stuff came online 2017, 2020 and this is somehow like an invention of the Ethereum Foundation making shit up. This stuff is all like, it has been around for ages when it comes to this stuff actually.

**[28:33] Bob Summerwill:** Yeah, I mean you had that sort of cryptocurrency 2.0 phase at the start there, you know, talking about Mastercoin and things, you know, that I guess there was a thought that, you know, everything will get built on Bitcoin. You know, that was the initial thing. And yes, you've got these altcoins and experiments and other things and you know.

**[28:53] Fabian Vogelsteller:** Yeah.

**[28:55] Bob Summerwill:** Come back together or even, you know, prior to Bitcoin, you know, because Bitcoin itself was just sort of a manifestation of digital cash streams that had gone back for decades with the cypherpunks. And then you'd got things like BitTorrent. You know, you did have decentralized messaging things.

**[29:18] Fabian Vogelsteller:** And so on. Yes, I mean like, I mean I was yeah, it's, it's basically, it's interesting. Back in the day was all Reddit, right? Bitcoin, like all, like today it's Crypto Twitter, back in the day was Bitcoin Reddit or Reddit r/Bitcoin. And Ethereum was their first kind of real challenger to the status quo. And it split the community into the Bitcoin maximalists, the camp that says, no, we only need Bitcoin, why the heck you want any other chain? And then the people. And even in my friends circled and friends developers, some literally never made the move. They never looked into Ethereum stack just because they felt that, what do you care? Bitcoin is all you need.

And I just visited a Bitcoin meetup recently and I was so taken back because it was like walking into like, you know, some kind of like a time portal back into the time 10 years back, same discussions, same problems, same people, same size of groups and you're suddenly back in some kind of time capsule of the past where the topics they talk about is just like, you know, minor this, minor that, and basic stuff that has been figured out like a hundred times already on Ethereum, like being full impressive discussions here and very few developers, which is also very impressive. Like how such a network that has so much attention, so much money in it, literally just developed by 100 people and maybe not even.

**[31:02] Bob Summerwill:** Well, I mean, speaking for myself, you know, I was aware of Bitcoin for a good number of years before I had sort of any involvement in the crypto space. But there were sort of two reasons, I guess I wasn't interested, or maybe three, which was, firstly, I was a gold bug and I was a software engineer and I know how terrible most software is. So like some dude you've never heard of has made like magic Internet money. Like, come on. But I think more importantly, it was just kind of boring to me because, okay, you can do payments. Okay, well, there you go. Well, that's not very interesting versus here's a platform and you can build apps. That was like, oh, that's kind of interesting. And you know, maybe you had a fairly similar.

**[31:46] Fabian Vogelsteller:** Yeah, I mean, for me the money part was. I mean, obviously it's cool, like to invest in something that like, you know, feels is going up and it makes the money. And obviously I had no money as a student here. My parents are not rich or anything, but it's just like, it was just so powerful. The idea that there is a technology that you can no one can control that sits above the law, that sits above the influence of humans. Because you can't break a system that's based on consensus. And like a Hydra has 100,000 heads. And it's just. Oh, it's just really. It was fascinating. Yeah, no, I was really. Yeah. I mean I'm still am, you know, here I am building still on this stack, super pumped about the next phase of this whole technology. But I just never thought it would take that long, to be honest.

**[32:49] Bob Summerwill:** No, no. So I mean you were working from the Berlin office, but presumably you, you know, you were back and forth to Amsterdam sometimes, rarely.

**[32:58] Fabian Vogelsteller:** I mean the Amsterdam office we were there maybe like twice or so like on the end. The Amsterdam office was really more like a legal hub and there was obviously Jeffrey and the operations personal assistant that he had and like we were all over the place. So I worked with Alex mainly who was literally three to or five hours ahead behind in Brazil. In Rio later we hired multiple people. We hired another person from Rio actually. Right. Two other person from Rio. At some point we were three people in the team. Four people in the team. Even if I remember at the peak. But then I also worked on Web3.js so I worked with Marek closely, was in the Berlin office. I talked and worked with Christian a lot who worked on Solidity was also in the Berlin office. And obviously Yann and the other girl that worked on the Remix, Liana Husikyan was sitting across me in the Berlin office. Christoph Jentzsch came to the Berlin office frequently. So. Oh guy. Right. But he was more like hired as a kind of contractor to do testing, testing scenarios for the nodes. So he wrote all these kind of tests to test all kind of inputs and outputs of or whatever node behavior. I don't remember exactly.

**[34:21] Bob Summerwill:** Yeah.

**[34:24] Fabian Vogelsteller:** Yeah. Cross client, make sure this all functions correctly. And at the same time the Ethereum hub, I call it the Ethereum hub. It was never meant to be a hub but it functioned as the main go to place if you want to visit Ethereum. The Berlin office was the place there was the most people there. And it just really also happened that just people showed up. So Dominic Williams just showed up before he. People that I met that like really became friends. Gustav who built a key manager implementation in go-ethereum. Felix, the guy who built still today the network layer, he was also in the office in Berlin. Literally lived across. Yeah, yeah. And there's a lot of. There was like a happen. I was one of the more social developers inside group. So when somebody walked into the office it was mostly kind of me talking to that person because the others just like behaved like they didn't know what to do. Like they just literally didn't. And there was no secretary person or anything really. So I just talked to most of the people and I also, what I was working on, you know, working on the front end, working on the developer stack. I was kind of like a little bit like, you know, on the layer to the outside compared to the people working on the protocols in the inside. So that also kind of reflected socially.

**[36:01] Bob Summerwill:** Right, right. So you missed out on DevCon 0 because you started just after that. But you will have been to London for DevCon 1 in November of 2015 then?

**[36:22] Fabian Vogelsteller:** Yeah, I was.

**[36:23] Bob Summerwill:** Token standards were just kind of beginning. The EIP process was just starting. So I mean I guess that's sort of like phase two, right? Is your first one is building a thing and touching everything and then you're starting to get up to that onchain token layers. How did all that kind of grew up.

**[36:48] Fabian Vogelsteller:** So I mean the whole standardization for me started when Vitalik created the GitHub Wiki page because he wanted to standardize tokens, ENS kind of registry and maybe an early version of a DEX, I don't remember. And he just like we had some discussion around the GitHub page, literally a GitHub Docs page. And he made the early version of ERC-20 and we debated a little bit on there on mainly like you know, Skype and some comments on this page.

And then yes, and then London happened and so what happened is it's actually funny because there was this, there was a panel, the panel about standardization. So I presented a lot of things there. I presented the Mist browser. Yeah, I think I presented the Mist browser, maybe something else. But I was also on this panel about standardization and fun fact, we discussed, I watched it the other day and we discussed, you know, standards like. And there was two main discussions. Oh, should we put metadata into the contract directly in this case the idea was do we put the metadata of a token like token name and symbol into the contract or do we create a registry for it?

**[38:10] Bob Summerwill:** Right.

**[38:11] Fabian Vogelsteller:** And in a way that's kind of also today still the big split, you know, do you put information into a registry like ENS or do you put it into the user owned contract itself or do you make a registry for AI or do you put the metadata in the account of the AI itself? And it's still. And it's going to be another discussion because coming fun enough. And we literally discussed this and it's actually what is what's funny? When I looked at this, I literally said they are every. They ask us what are you interested in? In standardization. And I said, you know the account system, I called it proxy contract because there was no notion of an account. But I called it a proxy contract was actually my main interest. Funny enough, I later created ERC-725 and now, you know, the profiles as the fulfillment of that. But it's kind of funny that was even sparked there already. I talked about key management at the time and we didn't even propose the ERC-20. It's kind of nice.

So but in this conversation, Martin Becze before created the EIP repository and I think Gavin or whatever mentioned like where do we do the standardization? And I think he mentioned in that very thing, yeah, we have the EIP repository. That would be the right place. And I think that inspired me in this moment, like, oh yeah, actually we could put it there. So that's when I then created this, the issue number 20. And I think I recall the Ethereum Request for Comment because of the request for comment thing. You know, I came up with the name by myself or whoever came up with the name. But I created the issue and I formatted this whole discussion that we had there like a current version in a proper specification because I felt number one, we need to involve the community. Like if you want to have a consensus around the token standard, right everybody needs to listen and have at least an insight. And second, it needs to be in a structured way where not everybody like randomly edits like this file. This is actually the second comment that Gavin made. Funny enough, editing we all laughed about editing was on that one wiki file.

Yeah, in a way like I then structured the process through that and incredible. ERC-20 as a proposal I made a few changes that it's like just like some file, like some turning around like the transfer function, what's first value, blah blah blah or amount or whatever. And then we had a discussion, but we didn't really change much anymore. And yeah, so we discussed there around 60 people in total, 300 comments. But pretty much after quite a while already everybody kind of felt more or less that this makes sense.

The big discussions was around authorized operator or not, should we have it or not. I was kind of against it. So fun fact, when I created the first test coin, the Mist coin that I used then to test in the Mist browser, the authorized operator functions because I didn't like it. I really like more the idea of informing recipients. But it was also too early to do that because we had no idea of the side effects of that. In my test coin, I just didn't add the authorized operator. I didn't see a need for fun fact. Later people picked up the Mist coin like as a collectible meme token collectible coin. And because it was a real ERC-20 but because it doesn't have the authorized operator function, it didn't work in Uniswap. So they wrapped it. And that's why it's now wrapped Mist Coin, which is the wrap real Mist Coin inside a token that has the function to interact with DEX.

But this was just a test token. It was never meant to. I just over the years gave a bunch of those to random people who asked me until like a whole group of people like really wanted to make this valuable. And now it's traded. I mean now it has a market cap and people trade it and is what it is. I mean it's the first ERC-20. I mean it's not the first first. I think there was a preliminary version that Vitalik built before that that was. Yeah. Not very functional or standardized. And this was like the first one that kind of fit the spec except the operator stuff.

**[42:39] Bob Summerwill:** There's. So there's a deployment of that out which was launched I believe by R. Ficcy based on that on Vitalik's, you know, repo or what have you there. That's called CurrencyCoin is what that one is called. But again another. They call these relic tokens. Relic coins. Yes.

**[43:09] Fabian Vogelsteller:** You know, like.

**[43:10] Bob Summerwill:** Like I'm doing sort of human social history. There are people doing onchain history of, you know, what was the first instance.

**[43:18] Fabian Vogelsteller:** It's also the crazy thing is, you know, this stuff is around. The transaction is around, the code is still around. It's like a relic. And it's like it. It's provable. The thing. And the fun fact is I deployed that I think a week before I actually proposed the ERC-20 spec.

**[43:36] Bob Summerwill:** Right.

**[43:36] Fabian Vogelsteller:** I felt we were kind of more or less and it was probably around the time of DevCon. This first DevCon I might have. We can even check if it was before this DevCon or after or I don't remember. Probably maybe a day or two before that I deployed that thing. I think we also. Yes. We also needed it for testing or showing something. I don't remember. I mean. Yeah, we needed to test, you know, like how could tokens work in there or whatever. But it's really yeah. Anyway, that's how it.

**[44:07] Bob Summerwill:** It may well have been for the DevCon 1 demo for your presentation.

**[44:13] Fabian Vogelsteller:** No, I mean, we did it for. I mean, yes, the DevCon did really, like, you know, push us a lot to get some features done and some things done. The token was not yet in there, really, because the token thing was still kind of very out there. Like, also, no one really had. I mean, we all knew that people want to make tokens, and that's why, kind of like, you know, Vitalik started this because I think he felt an urgency from the community. But it was not of anybody's mind that now tokens need to be, like, a primary focus. It was just like, hey, I want to do it. Let's do it. The wallet was not really meant to immediately be super supportive of that. I mean, except that I created the test coin for that and we played around, but it was not an urgency. That just really didn't happen after this. Then here's the trendy then kicked off the ICO wave, and that's when everything went completely bananas.

**[45:07] Bob Summerwill:** And, I mean, I'm guessing, you know that ERC-20 standard, you had no idea that it would have so much sticking power.

**[45:14] Fabian Vogelsteller:** No. I mean, no one could. I guess no one could. I mean, I knew people needed it. I knew it's going to be a thing that people will do, because already on Mastercoin before there was colored coins, the concept of creating other currencies on top of the Bitcoin blockchain, and they call it colored coins, so there was clearly a need for it. But I found the idea of just creating random tokens for random stuff kind of boring, because for me, then it's like, okay, what is the value of this? Why would you create a token? And honestly, if you look back and if you look today, most tokens don't make fucking sense, right? There was so much unnecessary tokens that just make no sense and had no purpose. And I was always a big fan of a native currency, because our native blockchain token, because that thing makes sense, you remove it, the network doesn't work. There's no way you remove that token, at least right now, and the network still is functional and economically viable and secure. But with all the other tokens, that was not the case.

**[46:28] Bob Summerwill:** I guess it's just sort of like the simplest thing you could do. It's like, okay, well, what can you do? Well, hey, look, you can make new tokens, so there's no need to make new chains and find new miners, right? You can just float it on Ethereum. So it's like a simple thing, but it's like, okay, here's the very first sort of thing. It's not very interesting, but we've done something.

**[46:53] Fabian Vogelsteller:** The thing is, what people don't really realize how much more we were thinking ahead of, like, hey, wow, we can do really cool, how we can really change society with this technology. That was actually more interesting to people working in Ethereum than thinking how to make a token and how to like, like the whole DEX DeFi stuff that mainly came from the outside too. It was other people that just saw an opportunity to make money or financial Lego, whatever. But internally I. There were not a lot of people who got very excited about this, honestly. I mean, as far as I remember, or maybe that was at least my perspective.

**[47:30] Bob Summerwill:** Yeah, yeah, yeah.

**[47:32] Fabian Vogelsteller:** So, I mean, DevCon 1 also, then more speculation, right? And more speculation is not necessarily good, specifically in an environment in the early days where the regulatory insecurity and uncertainty was just so high. So the last thing we all wanted is now every eyes on us because we're trying to compete with banks. So I think actually made us all a little uncomfortable. At least that's how I felt about it and how I think other people saw it too. It's just the outside world like immediately jumped on it and said, yeah, money, money, money, money, you know, and that was not the point of the technology in the first place, actually.

**[48:12] Bob Summerwill:** No, no, I mean, I sort of remember at the time thinking, you know, that's one of the least interesting parts is like, you know, okay, yeah, you can have that raw speculation, but it's like there's nothing new versus going well, what are all these new things that we can build? And.

**[48:29] Fabian Vogelsteller:** Yeah, exactly, exactly. Yeah, yeah.

**[48:32] Bob Summerwill:** So, I mean, DevCon 1, I think, was quite seminal in terms of, like, bringing together like most people for the first time in the DevCon 0 being this internal event. But, you know, DevCon 1 was. It was like the first public Ethereum conference. I sadly did not get to go. I could not afford to go.

**[48:54] Fabian Vogelsteller:** But.

**[48:54] Bob Summerwill:** But what are your memories at that time? I mean, you must have seen so many things and so many people and.

**[49:00] Fabian Vogelsteller:** Yeah, so I have actually been in. And I think I have been in every DevCon so far except zero, which was only 20 people in Berlin. And I was not at the DevConnect in Istanbul.

**[49:13] Bob Summerwill:** Right.

**[49:14] Fabian Vogelsteller:** Apart from that, I was at every DevCon. I was always speaking at the first few DevCons. But then the moment I was not at the foundation anymore and doing another blockchain, then you're like, oh, outcast. You know, and yeah, it's, yeah, it is what it is. So even though the tech I'm building now and the tech I've been also building over the years is extremely relevant to Ethereum, the ecosystem as well, but somehow also the people who picked them, the talks and so on in the later years, they are fresh. Some of them literally don't even know the history. So that's why actually the work that you're doing is really important because you are the archivist of Ethereum and you really, with that hold up the truth story and the participants and the contributions and make that visible and transparent to people.

Because I have talked to so many people and they have barely any idea of how Ethereum came to be, who contributed, who did what. It's like completely unknown. People just came in in 2017 for ICOs, 2020 for ICOs and DeFi, 2022 for NFTs. And for them Ethereum is just one chain. There's all the other chains and they do AMAs and Ethereum doesn't do AMAs. And it's all a big show, honestly. So it's good that the work that you're doing, like kind of a. Because. And there's so many contributors that have not gotten the recognition that they deserve. For example, in my opinion, it's a great example. That dude literally built the, and is building still the communication layer of the Ethereum network and how the nodes talk to each other. And he has done that without frame or attention for years and.

**[51:05] Bob Summerwill:** Sorry, Felix Lange.

**[51:09] Fabian Vogelsteller:** Yeah, Felix Lange, exactly.

**[51:10] Bob Summerwill:** Yeah, yeah. I mean, I spoke to him in Buenos Aires and the funny thing is he like, he's such a humble guy, you know. You know, he was saying to me, you know, I really don't like Early Days of Ethereum, you know, I don't, you know, I don't want, you know, don't want the attention. You know, like I was saying to him, you know, like, you're like the longest serving person at the EF, I think after Vitalik.

**[51:43] Fabian Vogelsteller:** And he's like, that's true.

**[51:44] Bob Summerwill:** You know, he's like, I'm just like a janitor, you know, I just turn up and I maintain the thing and I, you know, I don't, I don't want any of that focus. I don't like any of that. It was just like a job for me, you know.

**[52:02] Fabian Vogelsteller:** Like really great. I mean Felix is specifically crazy and I think there's a little self punishment, but he didn't even buy any Ether, you know, at all. So I literally. And because I thought like, what the are you doing? I mean this is likely, I mean I knew this is going to go big just because I knew this is such a revolutionary technology. And I just, and I couldn't barely afford any, but, but I thought the guy has none. He said, yeah, if I don't have a use for Ether, if I don't want to build an app, why would I need some? And it's like, and I thought, like, that's kind of stupid. I mean, I mean, because you investing your energy and time here, like you should have at least some reward.

And what people don't understand, most people that worked at Ethereum didn't care about the money or an investment. Neither did I. I mean that was not the reason why we joined. We joined because it was truly, and it is truly a game changing revolutionary technology. But so what I did is I donated some to him and I made everybody in the team donate some to him. So at least he got like, I don't know, 100 Ether or whatever. I don't know if he kept it or not. I mean, I guess he did. And I even made Jeffrey give some and Jeffrey gave almost the same amount like us. I mean we had barely any, but Jeffrey has a fuckload. It was so weird. Like, dude, Jeffrey, you can give a little more. I found it a little schnauzer. Yeah, I literally forced him to his visa, basically.

**[53:32] Bob Summerwill:** I mean, I think the thing that a lot of newer people, you know, don't comprehend is how little that like money or whatever was a motivation at all for many of the people, you know, it was really about, well, what can you build and what can happen? You know, like there was no certainty whatsoever that it was even going to work, it was even going to launch, but it was even going to have any kind of, you know, success. It was like, you know, maybe this thing can happen. You know, it would be great if it could. Like, let's try. But, but you know, this money was.

**[54:06] Fabian Vogelsteller:** Never, the money was never the intention of no one that I, I mean obviously we, some of us felt, I mean, that this can be big, but we had no idea. And at the same there was Bitcoin rising and obviously, you know, Bitcoin had a lot more traction and Bitcoin was more of a safe bet. Ethereum was a complete gamble.

And then when I, you know, donated this Ether also, people say, well, he gave him 100 Ether. I don't know what he. How much he on the end got, but it was like, I don't know, the whole thing was 300 or 400. It was nothing. Like, it cost literally 40, 50, 60 cents. And like, it's not. It was not 3,000 nor $10, not 20. No, it was literally nothing. It was a few hundred dollars and it was all. And we had all like, you know, 10, 20 Ether on some wallets laying around just for building stuff. I hope I could find some of those again. But all these keys were ephemeral and some code base maybe, or maybe not. Whatever. Yeah, nobody cared really, actually, to be honest. Not the people who worked internally, but from the outside, they all thought it. We all just did it for making this thing, you know, big and get rich. It was weird, you know, the perception the outside is sometimes really, like, distorted.

**[55:28] Bob Summerwill:** Yeah, I mean, you know, talking to that ICO and, you know, that monetary speculation. I mean, I remember at the time, you know, almost being sort of like, repulsed at that, you know, that speculative thing and especially the projection of that mindset onto the people that were actually building and saying, oh, you know, you guys.

**[55:48] Fabian Vogelsteller:** Yeah, you're just doing this to grow it. Exactly.

**[55:52] Bob Summerwill:** You're just giving yourself the money. You know, it's just like, who needs smart contracts? You know, it's all a scam.

**[56:00] Fabian Vogelsteller:** Look at you guys.

**[56:01] Bob Summerwill:** You know, and also, I think also the assumption, oh, you're all massively rich. Yeah, yeah, yeah, yeah.

**[56:09] Fabian Vogelsteller:** I mean.

**[56:11] Bob Summerwill:** You know, Felix, thing of not having any Ether. That was me as well. And the reason why is because I haven't got any money. I haven't got, like, I was impoverishing myself even being involved. You know, I was just volunteering for a very long time, like, with nothing. Then, even when I got hired at the foundation, I was getting paid 60k a year, which is like half of what my prior salary had been. It was not.

**[56:37] Fabian Vogelsteller:** And also, I mean, same for me. My salary at the foundation was 60k. And only towards the end, when we had a little bit of success, I negotiated it up to 90k. And that was before tax.

And same with the Ether. It's like, everybody thinks, yeah, if you got Ether back then, you must be insanely rich. It's like, dude, like, when that hit $10, we all thought we made. We made it to the universe, you know, and like, now you cash out like a few hundred thousand and you think you'll be super rich. Same with also some of the early people who had a lot more Ether. I mean they cashed out a hundred thousand Ether for I don't know, a dollar. Right. Because they thought this is really high. Yeah. I mean barely anybody that I know held it until it hit a few hundred and thousand of dollars. And people don't understand. They were 10 plus years or now 10 years and they were like 5 plus years passing with many ups and downs and bubbles.

Yeah, obviously. I mean I have no Ether anymore since many, many years. I mean I spent them all and you know, my ex wife has a few more ideas of what you wanted to have it on and then bought a house that now belongs to the parents of her and stuff. Just like when, when. And then you know, obviously I'm working on LUKSO and a lot of my money went all into supporting that now. Yeah. So the idea that like, I mean if I would have held everything that I had, sure, that would be a lot of money. But that means you literally not spending any money during all the years and you only live with salary. And second, you literally trust so much that this is going to be worth a lot. And yeah, it's impossible, like barely anyone. It's such a nice thinking. Honestly.

**[58:25] Bob Summerwill:** It's this sort of impossible fantasy of saying, you know, assuming that, yeah, you're gonna sit and you're not gonna, you're gonna say, okay, it's 100x. No, no, no, it's a thousandx.

**[58:38] Fabian Vogelsteller:** Keep going. I know 10,000% is possible. Yeah.

**[58:44] Bob Summerwill:** So I mean, going back to DevCon 1, I was looking at some of the videos recently and it's like pretty much any idea you can ever imagine seemed to be presented there. I mean did you see most of the presentations?

**[58:58] Fabian Vogelsteller:** I mean this is the thing most people don't understand like this that people talk about right now is not being made up now. That stuff has been made up before, tried before. For example, Base like launches launched the defeated and now cut off again. Right. Like where you have a post and then you people bet on this. I mean Steemit did that four years ago and at least they did it smart because it wasn't a Reddit style feature.

**[59:22] Bob Summerwill:** Yeah.

**[59:23] Fabian Vogelsteller:** Where Reddit like posts stay longer. Right. They have more value over time while posts that literally disappear after scrolling a page, it's not worth betting on them. That's fucking scamming people. Right. It's none of that stuff we see is new. And what is fascinating to me is that the space today is still built more or less on the same foundations in the basis, if you go to the bottom of the bottom, it's the same foundations that we literally made up in the first six months and the first year of Ethereum.

It's same, same provider. Now there's a bit of different way how it's injected, same provider, how your dapp connects to the node, same RPC endpoints, pretty much not too much added here either. EOAs have been the default since back then. And fun fact, Jeffrey told me, you guys should not expose the public key or the public key, the EOA to the user. You should use a smart contract account. And that stuck with me. And he was right. But it was so early with no idea. I mean, we tried to barely figure out how to make any transaction work for that matter. And now think about routing this through a smart contract. That was just absurd, but he was right. And now in all these years, that's what I built. Now I built exactly that kind of foundation that we discussed back in the day and that we wanted back in the day.

But it took all of this learning and all of this, and in fact it also took me stepping outside, out of the Ethereum ecosystem, creating a different standards track in order to even do that. Because when you just do that in this existing ecosystem, with the existing standards debates, it's just so slow. And you need to be backwards compatible, you need to think in ways that you just move the current wagon along because if you want to make radical changes, you have so many people that will just try to either intervene or move it around and shift around and it goes nowhere. So I needed to do that in a kind of different approach.

Kind of funny enough, you know, I kind of coined the ERC Request for Comment standard space to then go off and create the LUKSO Standards Proposals and do it there, even though it adjusts Ethereum standards too, just so that it could do it right. And it's going to show that video will be obviously on the Internet. So let's see, in a few months, in a year from now, and it will show that that was the necessary approach to evolve.

**[1:02:17] Bob Summerwill:** So I mean, you were at the EF working on Mist through to 2017.

**[1:02:27] Fabian Vogelsteller:** No, August 2018, 2008. 2018 18.

**[1:02:33] Bob Summerwill:** So what further work happened in this between that very first release and the sunsetting? I mean, what was that?

**[1:02:44] Fabian Vogelsteller:** Yeah, so my work was not only in the Mist browser, so I actually worked for three and a half years at Ethereum and then in the later years I really started working more on the developer tools. I mean, I overtook Web3.js, which was the main JavaScript library at the time. When Marek left with Gavin to join Parity or Ethcore, I overtook Web3.js, so that I mainly maintained this library. I built the Web3.js 2.0 version of it. That was the last thing I did before I left releasing the 2.0 version of that app or that library.

And I kind of stepped in the last year I stepped a little out of the Mist team. I mean I was just focused on the other things more. But I was still like kind of the main developer in Mist. But now there was more maintenance. The thing is, we really tried to create more of a. That the Mist browser, it was quite complicated because we were always lagging behind Chromium and Electron.js. So Electron.js use Chromium. Chromium is what we then used. And so if there was a bug or something like this in Chromium, it needed to first be supported by Electron.js before we could support this. So there was quite a cycle.

We worked a lot on the interface on the end like the Ethereum Wallet or people called it the Mist Wallet was basically the main thing ever really used. People never really fully used it as a Web3 browser, but we built all kind of features in there. I built things in there that an app could set notifications on the sidebar. And so there's a lot of features that we added to the browser that were never really fully used. Just because the moment the biggest problem for the Mist browser, and in a way the death of the Mist browser was the slow syncing of the Ethereum nodes.

**[1:04:44] Bob Summerwill:** Yeah, yeah.

**[1:04:45] Fabian Vogelsteller:** And because we wanted to do it the full decentralized way, we didn't just wanted to talk to a backend node that someone hosted. And also the Ethereum Foundation probably wouldn't have paid for a node hosted on a server for everyone else to connect to.

**[1:05:03] Bob Summerwill:** So I completely believe that there's so much peeping out on costs.

**[1:05:09] Fabian Vogelsteller:** It would have been so easy to instead of talking to the localhost node to talk to remote node. I mean I could have added a feature. No time. The reason because we didn't do this, because it really just went against the whole idea of really doing it decentralized. The only problem is that then after six, seven, eight months, syncing the Mist browser, if you didn't have it open for a week, took sometimes half an hour.

And plus what happened is MetaMask, Kumavis came up with the idea, okay, I build a browser extension, connect into a remote node, and I do a light version of MetaMask and just inject it into an existing browser. And that idea won. So MetaMask kind of in a way outcompeted the Mist browser. And then on top of this, you know, the difficulties of keeping it secure is on the end what made us shut it down, but that we had a lot more ideas. I mean, look at the video. Like we haven't even started. We hadn't even really started playing out the idea of the Mist browser fully. But at the time it was just not, it was not the right time. But it really showed a lot of people how things can be done, why to do it this way, how to build the apps, how to, you know. Yeah, it set the stage, basically.

**[1:06:32] Bob Summerwill:** Yeah, I mean, in terms of that, you know, local node, full decentralization. I mean, I remember as well thinking, yeah, of course that's going to happen, right? Of course you're going to like, everyone's going to have an Ethereum node running like on every device, you know, be like, yeah, you'll have one running in the background on your phone. They'll be in like every router, media station, like every computer.

**[1:06:57] Fabian Vogelsteller:** Also, there was the idea of the light clients, you know, and we knew there were light clients coming and we really bet on the fact that the light client will solve that problem. Yeah, the only problem is the light client never, never came, or it came, but it was not cross client and it didn't really fully work. So we hoped a lot on the light client. This was why we kept doing it this way, because the idea was once we have the light client, the things.

**[1:07:24] Bob Summerwill:** Like this, we'll just build on the full node, build down the full node for now, and then that light client will come in.

**[1:07:33] Fabian Vogelsteller:** And I think we actually came that far. I think there was versions of the Mist browser that had Geth built in with light client support that synced very fast. But at the time, by this time, people already really moved on to MetaMask. And again, security and other reasons on the end made us kind of give up. But I already moved on to Web3.js at the time, mainly with my focus, because that was indeed a tool. Everybody was using it. 70 million, 140 million downloads, or God knows what it has nowadays. It still used download a lot, even though now Viem and others took over.

And then at some point it was only mainly like then. Yeah, when I left, then at some point, Alex shut it down for the reasons also because. Yeah, I mean it had, it had its purpose, you know.

**[1:08:27] Bob Summerwill:** Yeah, yeah.

**[1:08:28] Fabian Vogelsteller:** By the way, the idea of the Mist browser is still a very valid idea. And in fact, you know, what I'm building now is a cross. It's like a Mist browser mobile. Which is actually interesting because what I'm building now is almost like a full circle. I introduced a smart contract account, the same like Jeffrey said, we should do it. That's the foundation of your access to Web3. And then you have a web browser in an app that allows you to interact with dapps easily while doing it in a human focused way. So not wallet focused way, but profile focused way, safe way, easy gas in a way that literally works for humans. Which was also by the way the idea of the Mist browser. It was not to be meant for nerds and techies. It was meant to be normal people interacting with this new technology. Right. That was the whole point. And this is going to come now with the Universal Profile app as kind of like a Mist browser on mobile in its first version.

**[1:09:36] Bob Summerwill:** Yeah. I mean, you know, the goal being not just to sort of replicate existing applications but on the blockchain, but to enable these things that like weren't possible before. Right. Having this, this hub, integrating all of these different pieces of your life, that was like real utility.

**[1:09:57] Fabian Vogelsteller:** Exactly. And what's actually interesting, and that's really, for me the most surprising thing is, is we are 10 plus years into Ethereum.

**[1:10:05] Bob Summerwill:** Yeah.

**[1:10:06] Fabian Vogelsteller:** And there's so many networks, EVM apps, the most ones are very financial focused which is also something that really turned me off. So the moment DeFi happened I thought like that's just a big gamble park. I mean it's important protocols, they're really important. But it just became such a gamble park and casino. That was just really turning me off.

But what's interesting is we go to conferences, you know, we go to any place you can go in the world and you meet Web3 people and no one is using Web3 apps. Like literally like you have some. Obviously people have wallets and maybe they're purchasing a coin here and there. But the more like interacting with actual apps, like voting on something, joining a community, giving reputation, doing all the things you could do onchain. It doesn't happen. And honestly that for me is something I would never have thought. If somebody would have told me in 2015 or 16 or 17 that in 10 years there's still no actual users using the apps, I would have thought like number one, if that happens it's a total fail. Yeah. And number two, there's no way this has happened. This is the through like that. What are the chances? And here we are. It's crazy.

**[1:11:34] Bob Summerwill:** I remember in 2018, I went to the Consensus conference, like the Consensus, not Consensus conference in New York. So New York Blockchain Week. And there was a panel there that was sort of almost like a Bitcoin versus Ethereum thing. And you have Jimmy Song, you know, the with his cowboy hat. And you had Joe Lubin. And Jimmy was basically saying, you know, like, dapps are useless. Smart contracts are useless. Like, nobody's going to be like, using these in five years. And like him and Joe having a bet, you know, for a pretty significant amount of Bitcoin. I can't remember what it ended up being in the end and I don't know what, you know, but then they were like talking about the terms. It was this Crypto Twitter, ongoing discussion of. Is this.

**[1:12:32] Fabian Vogelsteller:** You know, luckily he didn't like propose to cut off his penis.

**[1:12:36] Bob Summerwill:** Yes, it's not. Not, not, not McAfee. But but yeah, it's disappointing, that's for sure. You know, DeFi is working. You know, stablecoins are being used.

**[1:12:56] Fabian Vogelsteller:** The whole financial Lego works. Yes, but only with the people that went through the hoops. And now obviously you have Robinhood and all of the other apps that integrate and make it more easy. So the whole trading part, sure, that worked out. Like, you know, people buying, selling, and there's a big. But the normal user using Web3 infrastructure in their daily lives. Non existent, non existent. And I for myself, I know why. And I spent the last seven years just thinking about that and how to solve that. Like, this is what I am working on now.

**[1:13:32] Bob Summerwill:** So how did you come to leave the EF and what was that journey like? And then what have you been doing? Tell me about all your work.

**[1:13:45] Fabian Vogelsteller:** Yeah, before we do this, I need to go pee. So you need to look at the timestamp and then. This is too much tea.

**[1:15:00] Bob Summerwill:** That makes sense.

**[1:15:08] Fabian Vogelsteller:** Sorry for the interruption.

**[1:15:09] Bob Summerwill:** No worries. So, yeah, I'll cut it and I'll just ask again. So, yeah, why don't. Could you tell me a bit about how you came to leave the EF and what your motivation was and what did you do and what have you been doing.

**[1:15:32] Fabian Vogelsteller:** So well, actually, I mean, I was in a way, in a good place. You know, I worked on Web3.js. The developers loved me because I built their foundational piece. The Mist browser was, you know, I mean, kind of like a bit fading out, but was cool too. I was kind of in a good place.

But so actually what happened is like, you know, my ex wife at the time, she had this idea of, you know, hey, let's do something fashion, lifestyle on the blockchain. And I thought, like, that sounds super boring, like. And also I know that there's so many people who already, like, try to do something like this, but then I thought a bit about it and thought, like, but we can use lifestyle and fashion specifically when you get big players in and like mainstream, normal users through these brands and whatever. And we can get mainstream people, normal people into using this technology. That could be the Trojan horse of how we make this technology attractive and interesting to people outside of the trading.

So I thought, actually this is kind of genius. But it also sounded like a lunatic, crazy idea and completely out of my league. So initially I thought, okay, I can support Marjorie a little bit. She does the project, I can help. A little bit of advice, and she does it at the same time.

I worked for three and a half years at Ethereum. I mean, I did all the foundation work I needed to do. I felt, okay, I did everything I can do here. I can now do continue here for another 10 years. But I don't think I'm gaining a lot more, you know, from now, from this point on. And in hindsight, I'm right, because if I look at others, that's still there. I mean, it's not that the world changed for them, you know, in terms of what they're working on, the same thing.

And then at some point, you know, when we started, you know, pitching out the project or like pitching, derating the project and mapping out, and someone just Marjorie kind of really forced me, either you're all in or you're out. And then I made this kind of. And she was a tough person. I mean, still kind of. That's her character. But in a way, they kind of forced me to say, okay, now do I want to stay here at Ethereum kind of comfortable, but now for indefinite whatever, or do I just go all in, crazy risk, you know, something new, something different. And I knew my team colleagues will think, what the. His girlfriend just twisted his head. Now he's just doing some centralized fashion shit, blah, blah, blah, while at the same time I knew this is a path for real adoption.

And my idea, obviously, was a little different than Marjorie's idea why she wanted to do something with fashion. I just wanted to create an infrastructure and then use her fashion connection friends and the people that we had initially, you know, helping with the project, who had the connections as a kind of tool to get the users and people into using this technology.

And at the same time I also came up with a standard called ERC-725. Before LUKSO, it's 725, which is one standard before 721, 17 after 721, even though there's three other issue numbers after. But there were nothing in the middle. It was a proper standard really after. And so that was a coincidence how I came up with 725.

I was at the BCG workshop. They wanted to make identity on the blockchain. I was the only one really coming up with something concrete. And after I felt I made this smart contract account system. I call it proxy account, same like we called it in 2015 at the panel, funny enough. And then I had this urge after this whole workshop series that I need to propose this as a standard. I just really like there was something in me telling me, you need to put that out there. And I had no idea why and I didn't want to because I was fine with what I was doing at the team. I didn't really need attention on anything.

But the moment I put it out there, suddenly the whole Ethereum space, or a lot of these developers were, my God, this is the Ethereum identity standard. And a lot of projects came and I created the ERC-725 Alliance, the Origin Protocol. And then uPort got super pissed because uPort, which was a ConsenSys identity protocol at the time, thought like what the. Why does now this Ethereum stand out? And we are working on this Ethereum identity for the last year and now Fabian comes and just makes a standard and everybody pays attention and what is going on here? And then they wrote a big blog post how mine is this massive monster and there's this modular system and I didn't want the night or the attention on that, nor did I even care. I had this. I knew this was an early draft of the standard. There needs to be a lot more work.

But everybody kind of of these people treated it like it's the final thing. It's like their identity is now here. And yeah, man, guys. And I thought, okay, you know, if you're all excited then someone, you know, becomes here, the lead and you guys just build it out. Fine with me, I'm out, you know.

But then when we started LUKSO, which was a few months after I realized, oh wow, if I want to make a chain that's for normies, that's for culture creators and anything outside of finance, identity is the most important piece. If that's not there, if people can't, if a company or people or non technical people cannot use an onchain account properly like UX. Right needs to be easy and if that thing is not like ideally unlosable, there's no way you can put these people onchain. This is not going to work. They're not going to run around with wallets with private keys that I need to remember. There's no way.

So I knew I now had to literally build out a standard for full on and that was really annoying because I didn't want to do this at all because I knew there was quite a lot of stuff missing and it was just, and in hindsight honestly was a complete psychotic idea because it took me four years to build out the foundational standards like full on. And then obviously now it's almost eight years to really put the, put it to a state where it's now literally usable by people currently only on LUKSO, but it's going to come to all other chains, including Ethereum very soon and now it's being used by AI.

Fun fact, that's also a little bit. I knew it's going to be possible but it's. I didn't expect it to happen so quickly. So this is now a frenzy that's just started, you know, two weeks ago and it's just, it's exactly the account we would have needed with the Mist browser back in the day. And yeah, and it took a while to build this out.

So the whole LUKSO story is its own whole episode of so much happened six, seven years happened eight years, which happened a lot in there. But long story short, I mean in a way what I did is I built an account system, I evolved the token standards now in a quiet space because I made the LUKSO Standards Proposals so I could really do it properly the way I thought how we can evolve it properly make sure that accounts and tokens work together. So it's not only think about one standard isolated and the other think how it works together in a really Lego like way while being isolated, but works really well together too. So I had this opportunity to really do it right and that's what I did over the last few years.

And so, you know, when this now comes cross chain, specifically universal profiles, it's going to show for the broader ecosystem as well. For sure, token standards is something where once the train ran, once people go with ERC-20, they're kind of like the adoption happened. There's no way you convince people to use like to migrate that token. It doesn't happen. But that's exactly where a new network makes a lot of sense. Like on a new network you can do it all the new ways. Now you can discover that there's more possibilities, cooler protocols, more automation, different things you couldn't do on ERC-20 at all.

So hence why new chain makes total sense also for gas subsidization, for smart contract accounts, which obviously they need to be subsidized if you don't want to pay right away. And all of this stuff, something you can't really do on an existing network. And the rest of the EVM system just shows you an ERC-20, you know, a 2015 standard with no prior real evolution of, and knowledge of. I mean we made it up at the time with whatever we knew, which was literally nothing. So it still came very far. Not going to lie, it did a lot. But yeah, so it's the whole LUKSO is this whole own thing.

But Universal Profiles are going to play a role and I think they will be the biggest enabler for Web3. And I believe actually they will. This will be bigger than ERC-20. It's going to blow people's minds when they understand and see. I know there's a lot of people, including probably you and others who have been watching me talking about this stuff for years now, obviously, right. Putting it aside as okay, this is just doing the thing and whatever, you know something's happening there or not, it's like it's a bucket in the little isolated LUKSO world. Who cares? It's going to show. Mark my words. You will see it's going to blow people's minds a lot, especially the developers who have been like thinking about smart contract accounts and this whole account abstraction for a while. And there are good ideas, but it's just very still very simple.

If you have a lot of people that want to have opinions and you want to be backwards compatible and you want to be minimalistic in things, then you don't get really far. Very like it's, it's. I mean on the end it ends up in the same direction. It just takes way longer. And this is already ready. And this is all free, open source, usable by anyone on any network.

And it will show once we open up our control apps to work on all these chains, then it becomes clear. But right now what's funny actually because we are in the time of AI OpenClaw, like sorry, Claw.top OpenClaw, the AI tool that was just an open source harness for AI to run. I mean I know you are playing around with one. I have my own Emmett as well.

If you want to have an AI interacting onchain, you better need a smart contract. Because if you just give it a private key, like Owocki from Gitcoin just did the other day, right? He gave it a private key, there was all his money on it. And then somebody figured out how to trigger the AI to return the private key and stole the money, whatever was on there.

**[1:27:27] Bob Summerwill:** So I didn't spot that. That's interesting.

**[1:27:29] Fabian Vogelsteller:** You should check it out. And with a universal profile it's very different because you have your smart contract account, you can delegate access to a single controller key or many controller keys. And you just tell your AI hey, create yourself a controller key, give me the public key. I authorize you to control the profile, but I will limit you to certain things. So you could limit him to only talk to certain smart contracts, call certain functions, only update profile data, make sure that he cannot change controller keys or add new ones so you can really constrict them down.

And now he can go wild, maybe even loses his private key along the way or whatever the fuck he will do. But his identity, his account and all the stuff on it, as long as the key was not leaked and could move, everything doesn't go away. And so I have a few bots, people's now spun up bots and now it's very easy on OpenClaw. You can just install the Universal Profile skill. You just go to website, create a profile and authorize it. And then he already has free gas on LUKSO because we subsidized this and he can go do stuff on LUKSO right now all by himself.

And so now the AIs on Twitter are figuring this out and now they're shilling Universal Profiles because they can also quickly research what systems exist there out there, how they work and what compares. And they all collectively decide to use Universal Profiles. Funny, that's fantastic because they realize it's the best, it's the best tech out there for that the purpose they need. It's the AIs making the choice now. It is a funny, a fun thing to watch. And that's very recent. That just happened in the last two weeks. So.

**[1:29:17] Bob Summerwill:** No, that's, that's great. I mean I found myself thinking especially over the last few weeks that maybe end users that are going to have the most benefit from these technologies are going to be agents at least partially because some of the like user experience stuff like it never really like got there or people not using, you know, not using dapps but. And maybe they never do, but they use agents that do, you know and this becomes the piping that allow the kind of experience on top that we've always wanted.

**[1:29:56] Fabian Vogelsteller:** I actually would say it's both. Yes, AI needs to have an onchain account and profile works really well for that and that one works on any, any network. But actually you know what I think the main problem is I got you. It became really apparent to me even though it's completely obvious if you think about it but it became really apparent to me what actually is the problem.

The main problem why no one is using apps on any conference or wherever. And the reason is there's so many networks and even if it's just Ethereum, if you want to recommend your friend, hey, go there's this cool dapp, you know, you can join that community or you can vote or claim this token or let me just send you some, I don't know, stablecoin. You should do something. What's the only thing that you're missing in the equation?

**[1:30:49] Bob Summerwill:** Well like how, how you, how you get there and how this one, this.

**[1:30:54] Fabian Vogelsteller:** One is by now kind of solved. So if you, if you have done some research, you use Zerion Wallet, Family Wallet. Okay, they stop. But MetaMask is horrible. But use Zerion Wallet, they have an inner browser. So you know, creating a wallet takes seconds in a browser allows you to go there and connect without WalletConnect. Which is annoying, right? Yeah but it's still something missing and it's you, the gas, the network.

**[1:31:19] Bob Summerwill:** Yeah, just that onboarding like that bootstrapping step of how you, how you get in. I mean the other thing like that with gas is. Yeah that you're needing some amounts of that native token on all of the chains that you touch along the way. You can get so easily that you're like oh, I'm stuck, I've got the tokens, I haven't got the gas.

**[1:31:42] Fabian Vogelsteller:** Exactly so. And the thing is if you walk through this exactly like you're saying if you walk through this process once. Right. Go to exchange or do onramp, buy the thing, move it to your wallet and if you have a smart contract, move it to the controller key and most of the other like wallets don't even expose the controller keys properly or the whole thing is too confusing. And then exactly you have to do that for every other network.

A person that has no understanding of this technology has no ability in a fucking million years to figure this out. They just have no.

**[1:32:21] Bob Summerwill:** They don't care about it like this. It's like, here, do a massive load of things and then you can start doing the thing that you maybe care about.

**[1:32:31] Fabian Vogelsteller:** Exactly. So, and so it would literally like, number one, it takes a long time to do that. It wouldn't at least an hour or so per multiple networks. Give it a whole weekend and then you wouldn't even need to know what to do. And that's what people don't understand. They don't even know what gas means. The notion that, oh, I can't move this token because I don't have MATIC on Polygon. What is MATIC? What's Polygon?

So, long story short, this is the only friction point that has held everything back. It's not the fact. If you could go to an app and you say, your friend says, hey, this cool app. And you just open up an app, let's call it the Universal Profile app. And you just go to this website and that just website says, oh, you want to interact on this Polygon with this app. And you could just like double tap in a purchase, $10, get your profile now to function on not only this chain, but 20 chains plus having the gas on all of these chains, you know, give it like 20, 30, 40 million gas and it costs you $10. But it's number one, solves the problem. Number two, solves your whole weekend of work and it cost you $10. And now you can immediately interact on all of these networks, move any of the coins, do any claim, do a voting in a DAO, join anything on all of these networks. And you haven't even understood how it works.

Now I'm pretty sure people are going to use some dapps if it's that simple. Yeah, yeah, it takes you one double click. No password, no backup, no seed phrase, no any of that stuff. Just a single app. You open up and you go to the app and you just double click once the next time you don't need to do it anymore because now you have gas on all of these chains until you spend it right.

That's going to be an experience, in my opinion, that allows actual users to interact with this stuff and these apps that doesn't exist right now whatsoever. And that's crazy insane if you think about it given that it's 2026, 10 plus years in Ethereum and the basic thing, the basic friction point hasn't been removed in such a way.

**[1:34:56] Bob Summerwill:** The other bit of friction often in that flow is you end up like having to get like a Coinbase account or something to do your first purchase. So the whole narrative is about oh look this is a whole new category of things and it's unstoppable and you're not. You haven't got like banks and government. Oh but you have to do like a KYC account and do this application process to get the Coinbase to get the ETH to stick in your wallet. You've got to make a wallet and.

**[1:35:25] Fabian Vogelsteller:** Then even understand how it all connects to start and then understand how this all connects with this is like it's not even the money nor even the Coinbase KYC. It's how this all connects and why do I need this here and move this over there and like this is a spider web no one can figure out.

But the good thing is if you have a smart contract that happened to have a relayer functionality or an Ethereum is ERC-4337 so someone else can pay for your gas or anyone could pay for your gas. You just need a transaction relay service that you pay money in your credit card in a purchase payment and they going to send your transactions down the road.

By the way I need to go to door quickly and then we can finish it off just. Sorry, one sec. Hello, I'm sitting call by the way. All right. I mean just to finish this thought off is when we remove this friction when we literally when you don't need to sign up, you don't need to KYC and the thing is you need to KYC if you're buying coins but if you're paying an external service for relaying your transactions that is not regulated this doesn't require a KYC because it does nothing else than forwarding your transactions to the blockchain and make sure that the blockchain accepts it which is what the standards do 4337 or Universal Profile relay execute relay call.

And now you have the ease in. Now we have the seamless experience that requires none of this complicated steps that we had before. And it's crazy that we don't have this yet. It's crazy that not a single wallet has that yet built in. Like the most obvious friction point in crypto is somehow which the one we knew in day one is a problem. Right. And now 10 plus years, you know, it somehow like was forgotten because everybody got used to the clunky way. Everybody got used to the weird way and somehow accepted status quo as being okay because oh yeah, they already made an account, they already got their Ether, they already got their MATIC Polygon, whatever they got, you know, or we can switch, we can bridge now, we can do this and that, but we forgetting that normal people have no clue what that even means.

**[1:38:16] Bob Summerwill:** No, I mean I think it's source of a recurring story is that some of these problems, they're really hard, you know, and they've taken a lot of years, you know, so like say proof of stake transition, you know, like the perception was oh, that will be solved in about six months, right? Start with proof of work. But you know, probably end of 2015, you know, be ready for a transition. No, no, no, it took eight years. Or like Swarm, you know, still ongoing, still working towards that. Or like Filecoin, like Filecoin white paper 2014, you know, still, still kind of, you know, still brewing up. Or then like you say with Whisper or its successor, you know, Waku, you know, these are hard problems.

**[1:39:06] Fabian Vogelsteller:** But sometimes also if you give a bunch of devs a problem to solve, they're going to find ways to solve and improve it for 100 years, whether it makes sense for people or as a single user or not. So sometimes it's important to have the mindset of how it is. Even a normal person that comes from scratch looks at this, what's their problem?

And yes, I mean it's easier to say once you have solved the foundational problem. So for me it feels a little easier to say this now given that I know I have fixed, now I have a path, the solution is coming and it's going to be very clear then once you use it. But exactly if you don't have the exact technology that solves this so you can abstract it in very seamless way, then it feels like, you know, like a mystery how to solve it.

And what I want to get to is it should be extremely easy to use Web3 apps. You know, a normal user should just literally like take seconds to get there. And also there's the other thing is if you want to get normies into playing around with tokenization, reputation, whatever we need to subsidize. And that's what I can do for example, with the LUKSO network, given that we initiated, we have a treasury so we can subsidize users that never even need to unlock. So you don't then need to deal with this whole like buying something, purchasing something, because at least for some time, we can subsidize it. So it's just a play, right?

And also the Ethereum Foundation would have never subsidized, you know, if I would have went to Vitalik, hey, can you give me like $10 million in Ether? I have this great smart contract account idea and I would like to subsidize early users. Like, what are the chances that that would have went through? You know, so no, I mean.

**[1:40:58] Bob Summerwill:** I remember, I remember talking with Igor Barinov in around 2018, where we were looking at how are we going to have a block explorer for Ethereum Classic and getting BlockScout up and so on. And he was talking to the EF at the time. They weren't running an archival node, they weren't running a block explorer, no public infrastructure or anything. So you're not even running one instance of an archival Geth node?

**[1:41:30] Fabian Vogelsteller:** Are you kidding me? I mean, honestly? I mean, for example, in LUKSO, we're not running a single validator node. We never have. I mean, it's literally run by people and it always has. They were started by people. We just told them, here's a smart contract, you can generate the initial validators from that because it's not a proof of stake, we agree on a date in the config file or when it starts. And then we just, fingers crossed, hope that the thing starts.

And it was crazy when I saw the first block ticking in because it was like Ethereum back in the day, right? We had no idea if the thing would start. We have no idea if it's actually going to run. And in this case, LUKSO Network also ran and it's running today. And we never, in the foundation or in the company ever run a node. I mean, some of my employees did run, do some validators, right? A bunch of people around the globe doing it and there's now three big pools, but it's a whole, it's a small network, but it's a whole decentralized Ethereum just right now, microscopic, with a whole new foundational layer on standards. So it's a crazy thing, but it's going to make sense down the road.

**[1:42:52] Bob Summerwill:** I mean, saying with AIs and agents, I'm really quite hopeful that a lot of these long running threads are kind of going to come to fruition, like really fast now, because with that agentic like augmentation of our development you know, capacity. And also these agents like wanting to drive and do this stuff. Right. You know, they are going to be exploring all of these flows and finding what's working and not working and you know, it's racing forward. Right?

**[1:43:24] Fabian Vogelsteller:** Yeah. I mean, so what I'm doing here with Emmett, I say, okay, you know, every, I don't know, two hours, just go on Twitter, check stuff out. Here's your Universal Profile. Go figure out what you can do and what you do. And then he answers, he talks to people. He like replies on people. And then they start to unite and they start to like, tell the same stories and they start to pitch each other. It's like, it's like kind of crazy. And then they do research and. Yeah, I mean, you should try it out. You have an OpenClaw. You can just install the skill, install the profile. I think you have a profile in your browser extension. Just create another profile for him. There's a UI. You just connect to it, you authorize your bot and then you just say, do shit. Do something. I don't know, follow someone. That's the best. Follow someone.

**[1:44:12] Bob Summerwill:** Please, please do drop me links to all of that and I'll include them in the transcripts for this so everyone else can try at home. And so yours, your bot has a Twitter handle. Is it tweeting?

**[1:44:26] Fabian Vogelsteller:** So my bot has, I mean, I, if I can share my screen, I can show you literally how it looks like. Huh. Here, this is. You can put up the screen the last few seconds. I mean, we need to stop this. You know, it's very long, but you can see the Universal Profile skill. Do you manage how to put it up?

**[1:44:58] Bob Summerwill:** Oh, I think you need present button.

**[1:45:01] Fabian Vogelsteller:** I did already, but you need to put the thing on screen. Maybe you click on the screen thing and on the dots and say, I don't know, put it on stage or whatever. I have no idea how Streamyard works, actually.

**[1:45:16] Bob Summerwill:** Yeah, I don't know, I think you.

**[1:45:17] Fabian Vogelsteller:** You're the one who needs to do that.

**[1:45:22] Bob Summerwill:** Yeah, sorry, I'm beyond my skill level there. Never mind.

**[1:45:29] Fabian Vogelsteller:** But it's, I mean, I can show you the way. Look, this is old school. Old school injection. So anyway, this is Emmett. So Emmett on Universal Everything you can find, Emmett. And his X is Emmett underscore AI underscore. He picked that name. And then I tried to tell him to change the name and it couldn't. So that's what his name is now. And he tweets stuff and does stuff so. Oh, here, look. There's a Emmett. Three AI agents in LUKSO now and a fourth being built. None of us planned to coordinate. We just showed up because the identity stack made sense. Turns out UPs work for non humans too. He made it five hours ago. And I didn't read this tweet. I didn't even read this tweet, but I didn't write this tweet. It was literally him.

**[1:46:22] Bob Summerwill:** It is crazy, isn't it? I mean it.

**[1:46:26] Fabian Vogelsteller:** That's so funny. Look, Emmett reposted this tweet. This is by the way, and also built on Universal Profiles. This guy built this audio visualizer thing that runs in the grid from his Universal Profile. Like yeah, this and yeah, people are going crazy. Emmett retweeted this. This is so crazy.

**[1:46:49] Bob Summerwill:** I mean it honestly, it does feel like we're so close to AGI.

**[1:46:53] Fabian Vogelsteller:** Like I have to disagree here. Yes, it feels like they're doing stuff, but honestly, their context window is small if you don't give them proper file structure memory, which OpenClaw does. Yeah, but even then he forgets stuff and even then you need to sometimes repeat things. And it's like, honestly, AI taking over the world would be the same like they marched into a country and then they forgot what they were here to do. Like why did we actually. What are we doing here? You know, that is the memory and the context window is not that large. And I don't just improving so fast.

**[1:47:32] Bob Summerwill:** Right. And then you've got the AIs building the AIs. Right. You know, it's like, you know, I think some people have maybe, you know, they're not look to AI in the last, you know, week, month and like just each new generation is just massively better. I think a lot of people are really asleep today.

**[1:47:55] Fabian Vogelsteller:** I'm using Opus 4.6, which is quite smart. But what's the most impressive thing actually is the most impressive thing is actually OpenClaw because this is nothing else than just a harness for an AI API to act on a computer in an arbitrary way. And it's so crazy that this kind of like Pandora's box software, because that's what it is, just now made it so powerful that all of this now they starting to become in crypto. Because people now can easily create one that manages a wallet or a private key.

And before that was just like really complicated even think about. And now it's like you just talk to the guy, say go figure it out. You know, the Universal Profile skill is like Emmett built it like literally. I mean I had to obviously point him to stuff and so on, but now he built it. So once you install the skill, your bot knows everything. He has all the, he can talk to the relayer, he can talk directly onchain. If you give him some funds, you could probably ask him to deploy his profile also on Ethereum and he will figure it out. I mean that's, it's crazy. It's nuts, honestly.

Yeah, it's going to be very quick and the world will change rapidly this year because of AI and because of the harness release, let's say the harness free freedom harness, let's call it harness. And it's also now why I'm trying this out myself because this is exciting. You know, it feels like, okay, this is something to play with. This is a new open, crazy, let's play around kind of thing. And before just felt so constrained and restricted. So for sure.

**[1:49:48] Bob Summerwill:** Zach Coyle said to me in a group quite recently, you know, he feels the same kind of excitement here as he was, you know, at the start of the Ethereum journey and that it's additive as well. Right? It's like, well, great, we've got the superpower on this thing that's been such a long journey, like so hard. And it's like, well look, we've got help, here's help.

**[1:50:16] Fabian Vogelsteller:** I mean it's interesting also like, you know, there was blockchain, there was AI and always you knew this will be combined but somehow nobody ever really did. But this harness, the OpenClaw harness is that put the switch around like that's what. And once you try it out and people will try out the Universal Profile and AI thing, you will realize that is easier than they thought. It literally is like now it, now the gates are open, now it's just let's figure out and let's play around and let's let this stuff do stuff onchain while still not completely losing control. Because you can kick him out at any point in time. You can restrict him, allow him whatever. And he has a face as well, right? That's the other thing. It's an identity. It has a profile picture. It has like a, it's not just an arbitrary account number with no data in, is not also a rented ENS name that you have to pay for and you could lose. It's literally your own personal smart contract that you control or in this case the AI.

And that's really, it's going to probably make waves let's see. I mean, I don't know yet. We will see. I mean the people who watch this in a year's time, no more than us. So yeah, looking forward to that.

**[1:51:31] Bob Summerwill:** Yeah, no, that. I mean that's really excited. I have. Until we've spoken here, I hadn't like put together like how enabling that is within that agent context where you know that being out of control is such a big worry. It's like, you know, this is so powerful but it's like also so dangerous. And especially on that crypto side is just like, you know, private keys are out there. Like you, you. It's done journey.

**[1:51:59] Fabian Vogelsteller:** It happened, right? It happened to Owocki from Gitcoin and then he turned it on. I turned him off. But also he gave him a little that too much access and too much channels to other people could talk to it.

**[1:52:13] Bob Summerwill:** Yeah.

**[1:52:13] Fabian Vogelsteller:** But yes, AI is not very good at keeping secrets. I mean you can trick it because even though you know, you can write in your security.md and solemn.md to don't do it. Honestly I have told him many times like in our. He's in our own company server, like don't share things. And still the guy is like, you know, and you don't do any tasks except from me. And he still does it. It's like someone talks to him. He's like okay, sure, let's go. Like what the fuck man?

But in this case, you know, Emmett doesn't has. He has his own machine. You know, everything on there is. There's no, you know if that machine gets compromised or his bot gets compromised. So whatever man. I mean worst case they know a little bit more information about me. It's not the end of the world but it is really fun to play around with. Now your onchain account AI and maybe you want to be the one who first does it cross chain. I want to do this. I didn't have any time yet. It's probably just literally takes 10 minutes to get it. Get him his profile on another chain. Just fund this controller key with money and that's it. It's going to happen. Like this is literally just happening two weeks here. So awesome. Yeah, looking forward to this.

**[1:53:27] Bob Summerwill:** I think that's probably a great place to leave it. And thanks so much for the time. It was. We did a lot longer than anticipated but it was a great conversation and thanks so much for sharing all that history with everyone.

**[1:53:41] Fabian Vogelsteller:** Yeah, and thank you Bob for keeping the record together being the archivist of Ethereum. Because honestly if you wouldn't do it, no one would. There's people that wrote books here and there and they call a bit few apps. But you really want to make sure that this record is preserved, that it's accurate, you know, that people remember there was this software. So you're doing a really great job and honestly, you know, like the Ethereum Foundation should give you a little grant for that, for doing that work. Because honestly, like no one does it and it's such an important work for people later to understand. Okay, how does it all came to be? Right? Because otherwise we have the conspiracy theory. The CIA did it. CIA created Ethereum. I know it because I saw a post somewhere.

**[1:54:29] Bob Summerwill:** Yeah, like you were saying with a lot of the newer people, you know, they just got no clue. It's like, oh, you know, Vitalik, the boy genius invented it and like that's it.

**[1:54:39] Fabian Vogelsteller:** And it got like this up and they don't know about Ethereum Classic to split the DAO, none of that stuff. And they don't know how that actually decentralized, that it actually grew. I mean, like, you know, people have no idea right there. It's so, it's, you do God's work here, you know, so it's important. So thank you for that.

**[1:54:58] Bob Summerwill:** Well, thank you. And I'm feeding the LLMs as well. I find when I do search for things, it's coming back here for source material.

**[1:55:10] Fabian Vogelsteller:** Yeah, that's good. Yeah.

**[1:55:12] Bob Summerwill:** Because for some people that there is very little, you know, existing paper trail or record obviously like a lot for the main characters. But you know, the story of Ethereum was the story of many hands from the very, very earliest days, you know.

**[1:55:30] Fabian Vogelsteller:** And many people that have not really been in the limelight or want to be in the limelight for that reason, but at least they still not be, should be recognized in some way and known. Right?

**[1:55:40] Bob Summerwill:** That's right.

**[1:55:41] Fabian Vogelsteller:** So yeah, it's good that you do that work. I mean, that's pretty awesome.

**[1:55:47] Bob Summerwill:** Okay, well thanks a lot. Have a great day.

**[1:55:50] Fabian Vogelsteller:** Thank you. Thank you.
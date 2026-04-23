---
title: "Early Days of Ethereum - Episode NNN - Griff Green"
date: 2026-04-10
show: false
guests: ["Griff Green"]
hosts: ["Bob Summerwill"]
description: "Griff Green traces his path from chemical engineering and anti-establishment politics into Bitcoin, the University of Nicosia's digital currencies program, and eventually [Slock.it](https://slock.it/) as community manager for [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)). He reflects on The DAO's design, fundraising, hack, White Hat response, and the Ethereum/[Ethereum Classic](https://ethereumclassic.org/) split, then discusses building [Giveth](https://giveth.io/), [DAppNode](https://dappnode.io/), and the revived DAO Security Fund."
img: /images/covers-for-conversations/episodeNNN-griff-green.png
embed:
  url: https://www.youtube.com/embed/VIDEO_ID
table_of_contents:
  - link: "#introduction"
    title: "Introduction"
  - link: "#engineering-background-and-values"
    title: "Engineering background and values"
  - link: "#life-outside-the-system-and-finding-bitcoin"
    title: "Life outside the system and finding Bitcoin"
  - link: "#digital-currencies-degree-and-sharing-economy"
    title: "Digital currencies degree and sharing economy ideas"
  - link: "#discovering-slockit-and-joining-the-team"
    title: "Discovering Slock.it and joining the team"
  - link: "#devcon1-and-the-dao-vision"
    title: "DEVCON1 and The DAO vision"
  - link: "#dao-community-and-the-fundraise"
    title: "DAO community and the fundraise"
  - link: "#moratorium-reentrancy-and-warning-signs"
    title: "Moratorium, reentrancy, and warning signs"
  - link: "#the-dao-hack-and-white-hat-response"
    title: "The DAO hack and White Hat response"
  - link: "#hard-fork-social-consensus-and-etc"
    title: "Hard fork, social consensus, and ETC"
  - link: "#etc-recovery-and-unclaimed-funds"
    title: "ETC recovery and unclaimed funds"
  - link: "#giveth-dappnode-and-public-goods"
    title: "Giveth, DAppNode, and public goods"
  - link: "#the-dao-security-fund"
    title: "The DAO Security Fund"
---

## Audio

<audio controls style="width: 100%; max-width: 600px;">
  <source src="/assets/audio/episodeNNN-griff-green.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>


## Transcript

<!-- TABLE_OF_CONTENTS -->

<h3 id="introduction">Introduction</h3>

**[00:00] Griff Green:** It's just like, probably one of the most undersung heroes of Ethereum. Making Solidity happen all these years.

**[00:09] Bob Summerwill:** Yeah.

**[00:09] Griff Green:** So little failure with such success. Recording's on.

**[00:16] Bob Summerwill:** Yeah, I'm like, after you just said that, I'm like, I better check. I can't be late.

**[00:22] Griff Green:** Okay. Yeah.

**[00:24] Bob Summerwill:** No, no, though. I mean, [Gav](/people/gavin-wood/) claims to be the creator of Solidity still. Right.

**[00:35] Griff Green:** And I mean, he had a role, of course.

**[00:38] Bob Summerwill:** I mean, he just envisaged it. But [Christian](/people/christian-reitwiessner/) actually built it. [Lefteris](/people/lefteris-karapetsas/) told a story about how one time he had, and this was after he left the foundation, but at some point later, [Lefteris](/people/lefteris-karapetsas/) had said to [Gav](/people/gavin-wood/), hey, why do you have to have this claim on Solidity? It was obviously [Christian](/people/christian-reitwiessner/). You got all these other things. Why do you have to have that?

**[01:10] Griff Green:** And?

**[01:12] Bob Summerwill:** Said something like, well, no, I made it. And [Lefteris](/people/lefteris-karapetsas/) has never spoken to him after that point.

**[01:20] Griff Green:** It was just like, I mean, I guess if you're the guy's boss, you could take credit for your team's work to some extent.

**[01:31] Bob Summerwill:** Yeah, but there's some nuance there.

**[01:36] Griff Green:** Indeed, strong nuance. But yeah, I mean, [Gav](/people/gavin-wood/)'s never been a shy person, that's for sure.

**[01:42] Bob Summerwill:** No, no. All right. I'm just looking. Yeah, it is mainly on your side. That's good. I don't think we're overly, me or you. I think it lined up. Okay. Ready to go?

**[02:01] Griff Green:** Yeah. Yeah.

**[02:02] Bob Summerwill:** Okay. So welcome to Early Days of Ethereum. We're here in Cannes after ECC 9 and here with Griff Green. Hello, hello, hello.

**[02:21] Griff Green:** Oh, yes, thank you.

**[02:24] Bob Summerwill:** Yeah, it's great to see you.

**[02:25] Griff Green:** Yeah.

**[02:26] Bob Summerwill:** And you have your ho ho ho on. You Giveth. Ho ho ho.

**[02:30] Griff Green:** Yeah, yeah. In some worlds they call me Santa.

**[02:35] Bob Summerwill:** Right. I have seen you in the Santa garb as well.

**[02:40] Griff Green:** Yeah.

**[02:41] Bob Summerwill:** So you were a man of many stories and many talents. So what's your background? Like, where are you from and what did you do in your early life and how did you find your way to the crypto world?

<h3 id="engineering-background-and-values">Engineering background and values</h3>

**[02:58] Griff Green:** I'm an American and I grew up in Spokane, Washington, and then ended up in Seattle for chemical engineering. Got a chemical engineering degree from the [University of Washington](https://www.washington.edu/). And I worked for, after that, I worked for a biopharmaceutical company called [Amgen](https://www.amgen.com/). And it was actually kind of crazy. We were genetically engineering Chinese hamster ovary cells to produce human proteins.

**[03:27] Bob Summerwill:** Okay. So specialist.

**[03:30] Griff Green:** I mean, I was working on the pumps. It was a bigger project than what my entry level position was. I was basically an intern, right? A paid intern. But it was really a weird project because if you take tissue from a hamster ovary cell, very small ovaries are usually a tissue, but they genetically engineered it to be a unicellular organism. And the ovary has some special properties that allow it to absorb DNA a little bit better than other things.

And so it's really trippy to see. It would be like a guy in a white coat with a shotgun, but a plastic shotgun, like a single barrel shotgun. And he would literally shoot human DNA into a giant petri dish full of these ovary tissue cells. And then almost all of them would die. But you find the ones that were alive and see which ones absorbed the human DNA into their DNA.

**[04:37] Bob Summerwill:** Okay.

**[04:38] Griff Green:** And then you take those out and you're like, okay, now let's see which ones produce the best protein, because this was a pilot plant I was working on. And so then we take the different ones that survived and clone them up and then do tests to see which ones produce the most protein. And then the ones that would produce the most protein, we would get rid of the other ones and then scale that up until there's a big vat.

So you take this petri dish of, looks like blood and pus, kind of weird stuff because the pus was more like the substrate food for them. And then you'd scale it up until it's this giant vat. And my job was to make sure that as we're pumping them from smaller vats to bigger vats to grow them, that we don't kill the cells. So measuring the loss of pumping the cells through the vats and using peristaltic pumps.

Anyway, so that was one job. And I didn't do that for very long because I thought it was a little trippy for me. Especially when I went to the [Amgen](https://www.amgen.com/) headquarters. It just didn't feel like...

**[05:50] Bob Summerwill:** Not a natural fit for your character.

**[05:53] Griff Green:** No, no. They're doing really weird stuff in there. And then I got another job working for [SNC-Lavalin](https://en.wikipedia.org/wiki/SNC-Lavalin), which is a Canadian company. And we were building natural gas fired power plants. Well, really, we did anything with a steam turbine.

**[06:11] Bob Summerwill:** Right.

**[06:12] Griff Green:** So I worked this job for two years. I loved it, actually. I got to work on designs for concentrated solar, like the ones with mirrors where they catch solar energy. And then use mirrors to point it at molten salt. And then the molten salt would go and heat water for a steam turbine.

**[06:33] Bob Summerwill:** Right. And then like The Man with the Golden Gun, like with the satellites pointing down to have the...

**[06:45] Griff Green:** Oh, yeah. With the light.

**[06:47] Bob Summerwill:** Yeah.

**[06:47] Griff Green:** Satellites kind of. Yeah. And it's like this crazy tower that you really shouldn't look at.

**[06:56] Bob Summerwill:** Yeah, yeah.

**[06:56] Griff Green:** Right. And then the cool thing is the molten salt would be like a battery, so it would stay molten at night.

**[07:05] Bob Summerwill:** Okay.

**[07:06] Griff Green:** And so you could create... one of the biggest challenges with renewable energy is...

**[07:11] Bob Summerwill:** Yeah.

**[07:12] Griff Green:** Intermittent power generation. So with the molten salt, it'll act like a battery that cools during the evening a little bit. But you could keep the steam turbine running so you're generating a steady amount of power. So very cool. And I also did a turkey shit farm. I don't know if I can swear.

**[07:33] Bob Summerwill:** Absolutely.

**[07:34] Griff Green:** Yeah. So there's like giant farms of turkeys and they have all this turkey feces. And what are they going to do with it? Well, let's burn it. Make steam. Steam turbine.

**[07:45] Bob Summerwill:** Okay.

**[07:46] Griff Green:** So I got to spec those things out. But the big project was this one in Abu Dhabi.

**[07:53] Bob Summerwill:** Right.

**[07:53] Griff Green:** It was for an aluminum smelter.

**[07:55] Bob Summerwill:** Okay.

**[07:56] Griff Green:** And this is kind of where my story... there are two main things that kind of got me into crypto. Got me out of chemical engineering. The first one was I had a, I'm very virtue driven or idealistic or something, and I couldn't really mesh what I was doing on some of my projects with my own ethics. And there was a... because natural gas power plants are actually great, most of the time, these oil fields, the natural gas is actually a waste product. They just burn it off.

**[08:31] Bob Summerwill:** Yeah, yeah.

**[08:32] Griff Green:** Because it's better to release CO2 and water than CH4 into the atmosphere. So they'll just burn it.

**[08:37] Bob Summerwill:** Yeah.

**[08:37] Griff Green:** And so, okay, you're burning stuff. Well, let's heat water and make a steam turbine. You can use the combustion, a natural gas fired turbine and then also run a steam turbine. And it's great. But then the problem was it was fueling an aluminum smelter.

**[08:59] Bob Summerwill:** Right.

**[08:59] Griff Green:** And it was also our job to get rid of the pollution from the aluminum smelter. That fell on my desk. And there's this horrible phrase in chemical engineering called the solution to pollution is dilution.

**[09:16] Bob Summerwill:** Yeah.

**[09:18] Griff Green:** The main task was how much seawater do we need to pump into the pollution stream before we throw it into the ocean. This is Abu Dhabi. The regulations are very weak. And it was effectively like a giant cement pipe the size of this room pumping insane amounts of water into the ocean. And it's 300 times more acidic than the ocean water.

**[09:44] Bob Summerwill:** Right.

**[09:45] Griff Green:** That was the design requirement. And so I tried to make it less acidic. All of these calculations, there's buffers involved, and there's things. So I tried to make it not less bad. I tried to make it 30 times as acidic instead of 300, even though I didn't have to. But that required larger seawater pumps.

**[10:10] Bob Summerwill:** Right then.

**[10:11] Griff Green:** So when I turned in the calculations, they got turned back to me and said, this is way above our estimates. We need to fix them. And so I did. I fixed them. And then I always felt bad.

**[10:24] Bob Summerwill:** Yeah.

**[10:25] Griff Green:** And then the other thing that happened, well, and so there's another story. But when layoffs came around in 2009...

**[10:38] Bob Summerwill:** Yeah, please me.

**[10:40] Griff Green:** I don't have any kids. I don't have a house payment. I'm a good choice. I'm just saying. I actually told my boss that.

**[10:48] Bob Summerwill:** Right, right.

**[10:49] Griff Green:** Just saying, I mean, I love working with you and all this stuff, and I'll keep working if you choose, but just consider me.

**[10:58] Bob Summerwill:** Yes.

**[10:59] Griff Green:** And that was mostly because this other project that I started in college called the Save Our Sonics organization.

**[11:05] Bob Summerwill:** Okay. Right. So. Yes.

**[11:07] Griff Green:** The Seattle Supersonics.

**[11:09] Bob Summerwill:** Yeah.

**[11:10] Griff Green:** And so I was a huge fan. It was like I was obsessed with this basketball team. And so when they got sold to, when Howard Schultz of Starbucks sold it to this guy, Clay Bennett from Oklahoma City.

**[11:25] Bob Summerwill:** Yeah.

**[11:26] Griff Green:** Who had said that he wanted to bring a team to Oklahoma City. And then he's like, no, Seattle's the gateway to Asia. This is just a good business investment. Come on. No one believed him. So me and a couple guys, we started this thing called the Save Our Sonics organization. And I was kind of third in command. I was general of the fans, so I was the main guy coordinating the whole movement with the people. Running petitions and doing rallies. And I got to get a 3,000 person permit from the city and figure out how to coordinate all these events.

**[12:04] Bob Summerwill:** Right.

**[12:05] Griff Green:** And so we actually had a really solid case. The Seattle Supersonics had signed a deal with the KeyArena in Seattle. And they said, hey, you have to be here for 15 years. And they'd only been there for 12.

**[12:21] Bob Summerwill:** Yeah.

**[12:22] Griff Green:** And they were going to break the lease and leave.

**[12:24] Bob Summerwill:** Right.

**[12:25] Griff Green:** And so we have a court case that says, no, it says here directly in the contract, you have to fulfill the 15 year lease. And I had a party planned. Like the judge was going to announce our victory. It was an open shut case, at least from my perspective. And so we had a whole party planned and all this stuff. And then two or three hours before the judge was going to give the verdict, the mayor held a press conference and basically signed a deal with the team to let them go to Oklahoma City for $30 million. And so I was heartbroken, because I spent two years. It was like a second full time job.

**[13:11] Bob Summerwill:** Right, right.

**[13:12] Griff Green:** Just kicking ass to get this whole thing going. And with one stroke of his pen, the mayor just said it's good. Who cares about previous contracts?

**[13:20] Bob Summerwill:** Vancouver lost the franchise as well.

**[13:24] Griff Green:** Yep. The Grizzlies.

**[13:25] Bob Summerwill:** Yeah.

**[13:26] Griff Green:** Yeah. There's lots of grizzlies in Memphis. Well, there's no lakes in LA too. So this is like when I talk to Europeans, they're always like, what do you mean they moved?

**[13:40] Bob Summerwill:** Completely inconceivable.

<h3 id="life-outside-the-system-and-finding-bitcoin">Life outside the system and finding Bitcoin</h3>

**[13:44] Griff Green:** No, no. So anyway, so after that and after the pollution thing, I just became, and I was already leaning towards libertarian philosophy and conspiracy theories and not trusting the banks.

**[14:01] Bob Summerwill:** Yeah.

**[14:01] Griff Green:** And the fiat system. I had watched Money is Debt and all these old conspiracy doc... they don't even conspiracy videos. They're just like how money works.

**[14:12] Bob Summerwill:** Was that in the aftermath of the financial crisis or even a little earlier for you?

**[14:16] Griff Green:** Even a little earlier in college. I graduated from college in 2007, so I learned a lot about how banks worked. And I basically hated the banks. Even before the Sonics left, I was going to Northwest Territorial Mint, buying gold, silver.

**[14:37] Bob Summerwill:** Yeah.

**[14:38] Griff Green:** And bringing it home. Physical.

**[14:40] Bob Summerwill:** Yeah.

**[14:40] Griff Green:** And putting, that's where I put my paychecks. So I'd go every two months, make a drive down to Tacoma, buy some gold and silver.

**[14:50] Bob Summerwill:** Yeah.

**[14:51] Griff Green:** Come back up. And that was a good investment too. Gold and silver was doing well in those days. So when I got laid off, I had a good paycheck coming in from unemployment. They're paying me not to work.

**[15:05] Bob Summerwill:** Right.

**[15:06] Griff Green:** But I'm kind of addicted to work. I like getting, I like production. I feel good about getting stuff done. That gives me a lot of joy every day. So I did all sorts of odd jobs buying and selling things on Craigslist.

**[15:23] Bob Summerwill:** Right.

**[15:24] Griff Green:** I started a moving company. I eventually became, like, later, Thai masseuse.

**[15:30] Bob Summerwill:** Yeah. I was going to ask when that happened.

**[15:32] Griff Green:** Yeah. So that happened in like 2013.

**[15:34] Bob Summerwill:** Right.

**[15:35] Griff Green:** But from like 2009 to 2013, I was just doing, I had a bank account until 2011 to collect unemployment checks.

**[15:49] Bob Summerwill:** Right.

**[15:50] Griff Green:** And after that, then I didn't need a bank account anymore, so I gave it all up and just was living off physical gold and silver, doing odd jobs, helping people out, and just living the dream, traveling around in the States in a van.

**[16:07] Bob Summerwill:** Right.

**[16:07] Griff Green:** I would go to South America for nine months, come back, go to [Burning Man](https://burningman.org/) in the summers, hang out in the summers on the west coast, and then go to Southeast Asia, where I learned to be a Thai masseuse, and go to India, these sorts of things, and come back in the summer. It was 2013, the middle of 2013, where I bought my first crypto.

**[16:36] Bob Summerwill:** Right.

**[16:37] Griff Green:** I had heard about [Bitcoin](https://bitcoin.org/) from Trace Mayer's podcast.

**[16:41] Bob Summerwill:** Right. Yeah.

**[16:43] Griff Green:** [Bitcoin](https://bitcoin.org/) was $5. And I was like, hell yeah, I want some [Bitcoin](https://bitcoin.org/). But the only way I could figure out how to get it was using banks.

**[16:49] Bob Summerwill:** Right.

**[16:50] Griff Green:** Wire money to Japan.

**[16:52] Bob Summerwill:** To [Mt. Gox](https://en.wikipedia.org/wiki/Mt._Gox).

**[16:56] Griff Green:** Yeah, to [Mt. Gox](https://en.wikipedia.org/wiki/Mt._Gox). And so I was like, I don't want to do that. But I was watching it and it was in my circles a little bit. And then some buddies, [Coinbase](https://www.coinbase.com/) came out.

**[17:11] Bob Summerwill:** Right.

**[17:12] Griff Green:** And some friends were using [Coinbase](https://www.coinbase.com/) to buy drugs on [Silk Road](https://en.wikipedia.org/wiki/Silk_Road_(marketplace)).

**[17:15] Bob Summerwill:** Right.

**[17:16] Griff Green:** And so I was like, that's cool. You guys found a way to get [Bitcoin](https://bitcoin.org/). Okay. And so I traded $3,000 worth of gold and silver for $3,000 worth of [Bitcoin](https://bitcoin.org/) through physical, like, I was just...

**[17:30] Bob Summerwill:** An exchange.

**[17:32] Griff Green:** Yeah. I was in Thailand. My good buddy was managing my gold and silver under bed. Cardboard box.

**[17:37] Bob Summerwill:** Yeah.

**[17:39] Griff Green:** And so he would sell it off for me and I'd give him a small cut and all that stuff. And so he also was friends, my mutual friend who's buying drugs, I'm so proud. And so he gave him the gold and silver.

**[17:56] Bob Summerwill:** Right.

**[17:56] Griff Green:** I got the [Bitcoin](https://bitcoin.org/) and put in a BTC account. Litecoin, Feathercoin. All these things, Terracoin, Namecoin, and then Curecoin, eventually.

**[18:13] Bob Summerwill:** Did you get MaidSafe?

**[18:15] Griff Green:** Of course. I love [MaidSafe](https://maidsafe.net/).

**[18:17] Bob Summerwill:** Have you seen they shipped?

**[18:18] Griff Green:** No way.

**[18:19] Bob Summerwill:** They have, really.

**[18:20] Griff Green:** Finally, a decade later.

**[18:22] Bob Summerwill:** Yeah. But what they did is they absolutely screwed it because they changed their name. You've got [MaidSafe](https://maidsafe.net/) as the Duke Nukem Forever, kind of like memetically will never ship. But yeah, they changed their name to [Autonomi](https://autonomi.com/). So just some really plain name. But yeah, they finally shipped.

**[18:45] Griff Green:** Wow.

**[18:46] Bob Summerwill:** So if you've still got your [MaidSafeCoin](https://maidsafe.net/), then...

**[18:49] Griff Green:** Wow. I don't know. I probably do somewhere. I mean, or maybe I sold it all. Eventually I gave up on them because they just seemed like losers.

**[19:00] Bob Summerwill:** Well, they started pre-crypto.

**[19:02] Griff Green:** Yeah, exactly.

**[19:03] Bob Summerwill:** It was like 1996 or something like that.

**[19:05] Griff Green:** I mean, it's a beautiful project.

**[19:07] Bob Summerwill:** That's brilliant.

**[19:08] Griff Green:** Rebuild the Internet from storage rules, make everything private by default, and undo the original sin of the Internet, which is unencrypted stuff everywhere.

**[19:21] Bob Summerwill:** Decentralized storage. Use that unused hardware.

**[19:25] Griff Green:** It's a beautiful vision, but I think if you can't import the current existing Internet into it and you have to start a new network, it's...

**[19:38] Bob Summerwill:** Especially if it takes 15 years.

**[19:40] Griff Green:** Yeah. I mean, look at all the social networks that have been tried and failed. It's really hard to beat the network effects. You're not going to build a new infrastructure for the Internet. You have to work with the existing infrastructure. I like the approach that... what's their name? Oh my gosh. It's the Suji Yan. [Mask Network](https://mask.io/).

**[20:11] Bob Summerwill:** Right.

**[20:11] Griff Green:** Where you bootstrap on top of the existing social network in an encrypted thing. That's the right approach.

**[20:20] Bob Summerwill:** Yeah. So anyway, but you were getting everything. Try everything.

**[20:26] Griff Green:** Oh, yeah, I bought... I was excited about [BitShares](https://bitshares.org/) actually, back in the day and DACs, right?

**[20:43] Bob Summerwill:** Right.

**[20:44] Griff Green:** But I was in LA doing a lot of Thai massage. Beverly Hills. And I ended up having a really good practice there.

**[20:48] Bob Summerwill:** Is that like this?

**[20:50] Griff Green:** Yeah, yeah. I mean, you just lean and hit the, get the points. It depends on their back where you move their legs. And you just kind of hit the points and you go up all the meridian channels. Energy lines is what they call it in Thai massage.

**[21:10] Bob Summerwill:** Right.

**[21:11] Griff Green:** Yeah. And so I had a really good practice. People were paying me like 200, 200 to 250 for like two hour massage. Two or three hour massage. And I do one almost every day. Good money. It was great. But I bought the [Bitcoin](https://bitcoin.org/) in April, right after Cyprus went down. And now it's November. And the [Bitcoin](https://bitcoin.org/) and Litecoin, I made like 24 grand off of the 3K.

**[21:40] Bob Summerwill:** Right.

**[21:40] Griff Green:** And I was like, what is this stuff? This is incredible. And the more I started reading, the more obsessed I became.

**[21:48] Bob Summerwill:** Yeah.

**[21:49] Griff Green:** Familiar story. My girlfriend at the time actually went on a ski trip and I didn't go because I was just obsessed with [Bitcoin](https://bitcoin.org/). And I got really obsessed while she was gone. And then when she came back, she had a knee injury. And so I actually stayed with her to help her, but I was just obsessed with crypto.

**[22:15] Bob Summerwill:** Right.

**[22:15] Griff Green:** And so then when eventually when her knee was good enough, we broke up because she was kind of jealous of [Bitcoin](https://bitcoin.org/).

**[22:24] Bob Summerwill:** Yeah. You haven't got enough space in your life.

**[22:26] Griff Green:** Exactly. So I broke up with her and I went to Ecuador to become the [Andreas Antonopoulos](/people/andreas-antonopoulos/) of South America.

**[22:35] Bob Summerwill:** Okay.

<h3 id="digital-currencies-degree-and-sharing-economy">Digital currencies degree and sharing economy ideas</h3>

**[22:36] Griff Green:** And I was like, and also during that time, right before I left, I applied to [Cyprus University of Nicosia](https://www.unic.ac.cy/).

**[22:44] Bob Summerwill:** Yeah, yeah.

**[22:44] Griff Green:** To get the first degree in digital currencies.

**[22:47] Bob Summerwill:** Right. That was ever offered. Andreas, was he like running that course? Was he the only teacher or were there...

**[22:56] Griff Green:** No, no, there were lots of teachers that were tenured professors at the university.

**[23:01] Bob Summerwill:** I see.

**[23:02] Griff Green:** And of course, other people had gotten PhDs or did a master's thesis on crypto. But this was the first degree.

**[23:10] Bob Summerwill:** Yeah.

**[23:10] Griff Green:** That was for digital currencies.

**[23:12] Bob Summerwill:** Yeah, yeah. This is 2013. This is...

**[23:15] Griff Green:** This is the beginning of 2014. I applied, and by the middle of 2014, I think I was accepted. And I started in 2014 taking courses. And so I was traveling, just being a [Bitcoin](https://bitcoin.org/) evangelist.

**[23:30] Bob Summerwill:** Right.

**[23:30] Griff Green:** From beginning of 2014 to the end of 2015.

**[23:36] Bob Summerwill:** Right.

**[23:38] Griff Green:** And then I did a, I actually wrote a paper for a bike sharing economy.

**[23:44] Bob Summerwill:** Okay. It was called bike. Right.

**[23:46] Griff Green:** Bicycles in Kind for Everyone. Like B-I-K-4-E.

**[23:50] Bob Summerwill:** Okay.

**[23:51] Griff Green:** Right. "For" was silent. And it was basically a DAO. But at the time I was using [BitShares](https://bitshares.org/).

**[23:57] Bob Summerwill:** Right, right.

**[23:58] Griff Green:** So, yeah. DAC. Decentralized autonomous company or corporation or whatever. And the network would allow people to basically put their bikes in the network.

**[24:14] Bob Summerwill:** Right.

**[24:14] Griff Green:** And then the network would vest tokens into the bike.

**[24:17] Bob Summerwill:** Okay.

**[24:18] Griff Green:** And as the bike got used by people, the people would pay a fee to use the bike. The fee would 100% go to the person who was renting the bike, the person who owned the bike and stewarded the bike. And then also the person would also unlock tokens in the network. And so then we would bootstrap the network with the network token. It was a really cool design. I was stoked about it. I don't think anyone ever read the paper besides my teachers, but I sent it to [Christoph Jentzsch](/people/christoph-jentzsch/).

**[24:49] Bob Summerwill:** Right.

**[24:49] Griff Green:** And along with the little video I have explaining it.

**[24:52] Bob Summerwill:** Right.

**[24:53] Griff Green:** I think I was in Guatemala.

**[24:54] Bob Summerwill:** Right.

**[24:55] Griff Green:** Overlooking Lake Atitlán behind me. And it was animated and fun, high energy.

**[25:04] Bob Summerwill:** So you will have sent this in 2016, 2015. Oh right. So I guess that would have been towards the end of that year.

**[25:14] Griff Green:** Yeah.

**[25:15] Bob Summerwill:** Because he left the foundation like September 2015-ish.

**[25:20] Griff Green:** Yeah. Yep. I heard about [Slock.it](https://slock.it/). I wanted to be in the sharing economy side and [Slock.it](https://slock.it/) was basically the only person doing it.

**[25:28] Bob Summerwill:** Right.

**[25:29] Griff Green:** So I sent them a bunch of emails.

**[25:31] Bob Summerwill:** I mean, have you been aware of Ethereum or following Ethereum over that? Because I mean that's a year and a half of Ethereum life.

**[25:41] Griff Green:** Ethereum's marketing wasn't very good. I had more faith in [Omni](https://www.omnilayer.org/), which at the time was called [Mastercoin](https://en.wikipedia.org/wiki/Omni_Layer). And then [BitShares](https://bitshares.org/), [NXT](https://en.wikipedia.org/wiki/Nxt), there were all these other Bitcoin 2.0. Ethereum was on that list, but it was pretty well understood. Yep. I loved [XCP](https://counterparty.io/) for sure. In fact, [XCP](https://counterparty.io/) was probably my front runner at some point when [BitShares](https://bitshares.org/) started being really bad.

**[26:12] Bob Summerwill:** Sorry, just to cut you, there was a video I found recently which was at Bitcoin Miami. So January 2014, which is a panel discussion between [Mastercoin](https://en.wikipedia.org/wiki/Omni_Layer), [BitShares](https://bitshares.org/) and Ethereum.

**[26:32] Griff Green:** Wow.

**[26:33] Bob Summerwill:** So you had [Charles](/people/charles-hoskinson/) representing Ethereum, though he'd been on [BitShares](https://bitshares.org/) very, very shortly before that. And you had Dan Larimer was there.

**[26:43] Griff Green:** So two of them sitting next to each other.

**[26:45] Bob Summerwill:** Not such a happy little history there on the BitShares side. And then you have David Johnston on...

**[26:52] Griff Green:** The [Mastercoin](https://en.wikipedia.org/wiki/Omni_Layer) side. Still in the space too.

**[26:55] Bob Summerwill:** He is and he's doing a lot of AI now. But yeah, this little panel discussion has been preserved. Still going around.

**[27:07] Griff Green:** Yeah, that's an interesting group right there. But yeah, so I had always thought Ethereum was vaporware.

**[27:16] Bob Summerwill:** Right.

**[27:16] Griff Green:** I mean that was the general understanding.

**[27:19] Bob Summerwill:** Pre-mined garbage.

**[27:21] Griff Green:** Exactly. It didn't fit with the ideals of the times.

**[27:25] Bob Summerwill:** Yeah.

**[27:26] Griff Green:** So. But I didn't really care. I was very technologically agnostic.

**[27:42] Bob Summerwill:** Yeah.

**[28:20] Griff Green:** Yeah, Ethereum was basically vaporware and so I didn't really trust that it would be a thing. But I also didn't really care. I understood the Internet is not the most trustworthy, especially Reddit is not where you're going to get the best information. And for sure, I'd read [Vitalik](/people/vitalik-buterin/)'s writing in Bitcoin Magazine and always liked it. So I didn't have too much of a bias. And if [Slock.it](https://slock.it/) was building on Ethereum, great. Let's just try some stuff. And so I kept sending emails to [Christoph](/people/christoph-jentzsch/). I will work for free. Just bring me in. Let's go, let's go.

**[28:59] Bob Summerwill:** I'm just trying to think what the timing might be there because [Slock.it](https://slock.it/) was announced at [Devcon 1](https://devcon.org/en/history/), which was November 2015. I don't know if they said anything prior. Right.

**[29:12] Griff Green:** Yeah, so...

**[29:12] Bob Summerwill:** So maybe they had been talking a bit, but that was kind of like the big presentation coming out.

**[29:19] Griff Green:** Yeah. I mean, I definitely had my first meeting with [Christoph](/people/christoph-jentzsch/) relatively quickly after [Burning Man](https://burningman.org/) in September. I was messaging him. I think I may have even sent more emails after [Burning Man](https://burningman.org/). And he actually saw one.

**[29:38] Bob Summerwill:** Right.

**[29:38] Griff Green:** Or replied to it eventually. And then I had a call with him and he was like, sure, because I had the community building experience from the Save Our Sonics stuff.

**[29:52] Bob Summerwill:** Yeah, yeah.

<h3 id="discovering-slockit-and-joining-the-team">Discovering Slock.it and joining the team</h3>

**[29:52] Griff Green:** And so I became their community manager. And the fact that I was getting a degree in digital currencies and wrote a white paper for a sharing economy project, there just weren't very many people that had that kind of experience. And so I started working with [Stephan](/people/stephan-tual/) a lot on how we built community. I started [Slack](https://slack.com/). And we started bringing people in. And I became the, I was general of the fans for Save Our Sonics. I was like community manager for [Slock.it](https://slock.it/).

**[30:21] Bob Summerwill:** So I helped him with the slides for Devcon. Right. Okay. So there was some of that stuff that did exist prior to that. It wasn't "here's the big reveal." It was just, this project is already happening.

**[30:39] Griff Green:** Yeah.

**[30:39] Bob Summerwill:** By November then.

**[30:41] Griff Green:** Yeah. Because I was regularly looking for, just googling blockchain, [Bitcoin](https://bitcoin.org/) sharing economy. And just trying to find people and there was no one even close to legitimate. One day, [Slock.it](https://slock.it/) came up on the search results.

**[30:56] Bob Summerwill:** Right, right.

**[30:57] Griff Green:** I don't know how or where, but...

**[30:58] Bob Summerwill:** No, it was definitely September, so...

**[31:01] Griff Green:** Or even it must have been August. I feel like it must have been August.

**[31:05] Bob Summerwill:** Could be. I mean, so [Ming Chan](/people/ming-chan/)'s first official day at the [Ethereum Foundation](https://ethereum.foundation/) was August the first. And really pretty soon after that it was like, right, we're going to cut... this is basically like the comms guys are gone, so [Stephan](/people/stephan-tual/)'s out on the C team in Berlin. That was getting really slimmed down. So [Gav](/people/gavin-wood/) and others were out. But [Christoph](/people/christoph-jentzsch/) was again one of those who was bidding farewell to the foundation at that time. And then the other co-founder was [Christoph](/people/christoph-jentzsch/)'s brother.

**[31:55] Griff Green:** Yes. And [Christoph](/people/christoph-jentzsch/)'s brother was much more of a hardware guy and tinkerer. And I think that's where it was like a perfect fit where he's kind of the hardware person. He built his own IoT for his house and so smart locks. He would do the hardware, [Christoph](/people/christoph-jentzsch/) would do the software. Seemed like a perfect brotherly adventure.

**[32:18] Bob Summerwill:** Right. I'm blanking on his name.

**[32:22] Griff Green:** He was here at this conference.

**[32:23] Bob Summerwill:** I think I saw him as a speaker in one of the speaker lists. And it's like, oh, right, he's...

**[32:31] Griff Green:** He's still... yeah, well, they have a bunch of ecosystem. They ended up being bought out by Blockchains LLC at one point.

**[32:44] Bob Summerwill:** Yeah.

**[32:44] Griff Green:** And then now they have [Tokenize.it](https://tokenize.it/), which really [Christoph](/people/christoph-jentzsch/) is working on hard. And then they have a new DeFi thing that they're pushing. I can't remember the details, sadly, but Dan from GasHawk and Simon I think is really involved in that. They have a few really great projects and they've come up with really great projects. But all the OGs that are still pushing and have those ideals for funding public goods and doing good work, it's hard out there. It's hard for us.

**[33:19] Bob Summerwill:** And did you go to London yourself? Did you go to Devcon?

**[33:22] Griff Green:** No, I did Devcon 1 remotely.

**[33:26] Bob Summerwill:** Right.

**[33:26] Griff Green:** Yeah, I was in... where was I? This was November of 2015. Yeah, 2015. I think it was still... no, I started hanging out in Seattle. I was hanging out in Seattle at that point and then I also spent some time in Hawaii. So I was going back and forth a little bit.

**[33:49] Bob Summerwill:** Right, yeah. Yes. I sadly didn't get to go to Devcon. I couldn't afford to go so I got to watch the video stream. But I think I watched it all.

**[33:59] Griff Green:** Yeah, see I was working hard. Managing the community. As [Slock.it](https://slock.it/) got more and more exciting with [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) and all these things, it was like I effectively, it felt like I was the community manager for Ethereum.

**[34:15] Bob Summerwill:** Right.

**[34:15] Griff Green:** And I wasn't paid so I was living in a van, hanging out in community houses and cheap rent and stuff and just trying to survive.

**[34:31] Bob Summerwill:** So I watched the [Devcon 1](https://devcon.org/en/history/) presentation again fairly recently. So I mean there were two main physical demos, right, which was the lock, the physical smart lock on the block of wood which [Christoph](/people/christoph-jentzsch/)... and yeah, the kettle for the boiling water. [Stephan](/people/stephan-tual/) came up and made his little cup of tea. [Christoph](/people/christoph-jentzsch/) was telling me recently that the, it was his dad who made the lock, who did the woodworking for that. That was a one off piece by his father.

**[35:11] Griff Green:** Oh, that's cool.

**[35:13] Bob Summerwill:** And then towards the end it was like, well, we're talking about other sharing scenarios, but those were the physical things. And then towards the end it's like, well, hey, we don't want to do an ICO but we could run away with all the money. So we want to stay true to our ideals and we're going to do a DAO and just be a service provider into that and you can sack us if we're crap, kind of deal. But at that time it was still a narrow vision, right? It was like this is [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) for [Slock.it](https://slock.it/) tokens. It wasn't a general...

**[35:54] Griff Green:** Yes, right, yes. As we evolved it seemed like people wanted [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) to be more general. So it's like, okay, that's great. We just need, we want, and it makes more sense for us because we want an unbiased, independent owner of our jurisdiction. So if you guys have more, if it's not just for us, it's for the broad Ethereum investment ecosystem space. That's cool. That's great.

<h3 id="devcon1-and-the-dao-vision">DEVCON1 and The DAO vision</h3>

**[36:28] Bob Summerwill:** Yeah, yeah. And so, I mean, you had a few different pieces in there, right? You had DAO Hub, DAO Link and the curators. How did all of the pieces fit in together there?

**[36:45] Griff Green:** And we had [Slock.it](https://slock.it/). So [Slock.it](https://slock.it/) was building the Universal Sharing Network, which is the name I coined actually. And it was supposed to be this infrastructure layer. You can think of it like [Craigslist](https://www.craigslist.org/) with Ethereum built in and smart locks.

**[37:01] Bob Summerwill:** Right.

**[37:03] Griff Green:** And maybe one day drones would be able to participate and solar panels could own themselves. So we can allow for basically autonomous IoT devices with this infrastructure. But at first it's just going to be people putting power drills in lockers, unlocking them with money transfers. And then if they put them back and maybe instead of putting back in the locker, they actually give it to a guy who checks to make sure it works.

**[37:31] Bob Summerwill:** Right.

**[37:32] Griff Green:** He gets a dollar and then he puts it back in the locker and it goes back. And so that was the idea that we could build this infrastructure that would start with just humans using it, but eventually this would be the infrastructure for autonomous entities.

**[37:45] Bob Summerwill:** Yes.

**[37:47] Griff Green:** And so then we did [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)). And the DAO infrastructure needed to be able to pay us. So that's where DAO Link came in. Because we were a German company, [Slock.it](https://slock.it/). And DAO Link was a Swiss company that could actually receive money from a DAO.

**[38:06] Bob Summerwill:** Right.

**[38:06] Griff Green:** And then pay a German company. So that was the legal bridge from [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) to us.

**[38:13] Bob Summerwill:** And was it BTC Swiss? Who were the people that we... Bity.

**[38:18] Griff Green:** [Bity](https://bity.com/), yeah, [Bity](https://bity.com/), which was also in Switzerland. And so we were partnered with them for that.

And then we had the curators. Well, [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) had this thing where it could make a proposal. Anyone could make a proposal to [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)). And then [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) would end up calling functions in the smart contracts that were being proposed. And so we initiated the curator set to have a very narrow purpose. It was to identify the actors, that they're real people and they really are who they say they are. They're not impersonating someone.

**[39:01] Bob Summerwill:** Yeah.

**[39:02] Griff Green:** And to check the code base to make sure that if they are making this proposal, the proposal isn't going to hack [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)).

**[39:11] Bob Summerwill:** Right. That it does correspond to what they're saying. Textual description is consistent with the code.

**[39:21] Griff Green:** Because in the end, [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) was going to call a function in the contract that people use to propose. And so there is this potential that if that was a contract made to just hack [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)), then it would actually steal money out of [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)). We understood when we launched [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) that this contract had a lot of vulnerabilities in it from a design standpoint.

**[39:44] Bob Summerwill:** Right.

**[39:44] Griff Green:** So the curators were there to kind of protect from an identity perspective and a technical perspective. And of course, they were also kind of became a group of slightly advisors. It's like we're going to lean on them. These are all the rock stars in the Ethereum space. And if we bring them in, their influence will only be... Now that we didn't talk about publicly. But having all these great names as well, of course helps us sell DAO tokens. And so that was the purpose of the curators.

DAO Hub was kind of the community upstart thing that Auryn and a bunch of really cool people that are still in the space...

**[40:33] Bob Summerwill:** [Aron Fisher](/people/aron-fisher/), Auryn.

**[40:37] Griff Green:** Big tall Auryn. That was, does Zodiac and [Safe](https://safe.global/). So funny. I can't believe I'm thinking about... McMillan.

**[40:45] Bob Summerwill:** Oh, something, right?

**[40:46] Griff Green:** Something close. Got him so bad. I mean, Auryn's a good friend.

**[40:51] Bob Summerwill:** A-U-R-Y-N. Yeah. Yes, yes. I saw him.

**[40:55] Griff Green:** Yeah, yeah, he's here. He came with his family.

**[40:58] Bob Summerwill:** He's a big dude.

**[40:59] Griff Green:** Yeah. He was a professional basketball player in Australia.

**[41:03] Bob Summerwill:** Makes sense.

**[41:04] Griff Green:** And he was playing professionally while working at The DAO.

**[41:07] Bob Summerwill:** Right, right.

**[41:08] Griff Green:** But so they were starting up kind of the community infrastructure for [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) and that was really important for us as [Slock.it](https://slock.it/) because we wanted to hand [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) off to the community.

**[41:19] Bob Summerwill:** So him and, do you mention another person?

**[41:21] Griff Green:** Yeah, there was a good crew over there and I'm just going to butcher all of their names. I can think of their faces. Their names are just awash now. And most of them are still in the space.

**[41:34] Bob Summerwill:** Yeah.

**[41:34] Griff Green:** Really cool guys. But either way. So they were going to be the people who we kind of hand the community to. So that we could focus on the Universal Sharing Network.

**[41:46] Bob Summerwill:** Yeah.

**[41:46] Griff Green:** That was the dream at least. And also the reason we called it [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization))? Well, first off, is a pretty badass name, but also because we thought [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) would vote later to name itself. We didn't want to name [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)). [Slock.it](https://slock.it/) really wanted to bootstrap [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)), get it going and then hand it off.

**[42:07] Bob Summerwill:** With the business.

**[42:09] Griff Green:** Yep. And then go back to building the sharing economy stuff.

**[42:12] Bob Summerwill:** Yeah. So that didn't happen.

**[42:17] Griff Green:** No, it did not. We did end up handing [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) off kind of. I mean, [Slock.it](https://slock.it/) did start doing sharing economy stuff, but we never got funded by [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)). The first DAO proposal was actually, we need to have stronger security. And we couldn't get it to be voted on. We were going to hire [Yoichi](/people/yoichi-hirai/), who is like phone verification expert guy these days.

**[42:43] Bob Summerwill:** Right. Yeah. And he was there in...

**[42:50] Griff Green:** Yeah, I didn't see him.

**[42:51] Bob Summerwill:** Yeah, he was speaking.

**[42:52] Griff Green:** Oh, man, I would have loved to connect with him. That would have been fun. I actually want to get him involved with the [DAO Security Fund](https://blog.thedao.fund/).

**[42:58] Bob Summerwill:** There you go.

**[43:01] Griff Green:** Exactly. Now we can finally get him. Yeah. So we had this first proposal to try to increase security, but we couldn't get anyone to vote on it. Oh, my God, that was the first moment where we realized what a mess it is to work with DAOs. To be DAOs where just like you make a proposal and everyone talks shit. Especially Reddit culture. Really pretty adversarial. And so it's like, hey, we want to increase security for [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)). They're like, why are you charging so much money? Don't be ridiculous. Look at you trying to leech off the funds.

**[43:42] Bob Summerwill:** Exactly.

**[43:42] Griff Green:** And so then we had to have iteration number two. And then, I mean, you're quite a few months in here. Right.

**[43:46] Bob Summerwill:** Because that sort of September-ish timeline. And this was through the end of 2015 through into 2016. So through those months was, I mean, was it primarily like lots of that ongoing development on The DAO framework itself, together with this community building? When did the fundraising start?

<h3 id="dao-community-and-the-fundraise">DAO community and the fundraise</h3>

**[44:16] Griff Green:** Fundraising started at the end of April and went through May. And before that, it was a lot of community building. I did this DAO Ninja course.

**[44:29] Bob Summerwill:** Okay.

**[44:30] Griff Green:** Which was actually really big for building a lot of the dev community. We were using kind of a modification of the ERC-20, right. DAO tokens weren't perfect to the ERC-20 standard. But the first question was, what does approve do? Right. In DAO?

**[44:52] Bob Summerwill:** Yes.

**[44:53] Griff Green:** And I mean, almost everyone got it wrong. No one knew what approve was. That whole pattern of approval and transfer. There's so many interesting things. But by putting the DAO Ninja course out there, we actually developed a really healthy dev community.

**[45:11] Bob Summerwill:** Right.

**[45:12] Griff Green:** And so we had the dev community, we had in the [Slack](https://slack.com/). I had built almost like a tier of community members where we had everybody and then we had another group of people I trusted to help manage the community and then another group of just [Slock.it](https://slock.it/) and a couple other leaders and then another group of just [Slock.it](https://slock.it/). So we have this kind of community of trusted individuals that would then manage the whole thing.

And yeah, it was really fun. I felt like I built... I was very proud of the community I built for [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)). It was all working really well. It felt like everything that we were doing, every swing we made hit a home run.

**[46:04] Bob Summerwill:** Right.

**[46:04] Griff Green:** It was the easiest project I had ever had up until the fundraise. And then the fundraise was like a grand slam. We became the largest crowdfunded project in the history of the world at that point.

**[46:22] Bob Summerwill:** I mean, it just kept going, right. I mean, I remember going through this. You're thinking maybe about 5 million, maybe 10.

**[46:32] Griff Green:** Yeah. [Christoph](/people/christoph-jentzsch/) and Simon and those guys, they thought 5 to 10. I thought 35.

**[46:38] Bob Summerwill:** Right.

**[46:38] Griff Green:** That was my bet. 30, 35 in there. Which were reached in like the first couple days.

**[46:45] Bob Summerwill:** Yeah.

**[46:46] Griff Green:** So like...

**[46:46] Bob Summerwill:** Yeah, I mean, I guess there really wasn't a lot of other things to do at the time on Ethereum. It was like the first big real project and everyone was, sure, yeah. Well, off we go.

**[47:01] Griff Green:** I mean we had, we were the main project and we also made an offer that was really clean where it was like, well, if you don't like what we're doing, you can split. Split [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)).

**[47:10] Bob Summerwill:** Yes.

**[47:11] Griff Green:** And get your Ether back. And this is like Fei. Do you remember Fei and Tribe DAO?

**[47:16] Bob Summerwill:** No.

**[47:17] Griff Green:** They're a DeFi project, a stablecoin. You could basically put in your crypto and you would get the equivalent number of stablecoins out. So they raised a billion dollars. And it's the same kind of thing. It's like a guarantee.

**[47:31] Bob Summerwill:** Yeah. This is risk free, right.

**[47:35] Griff Green:** Basically. I mean, we didn't say that. Other people said that. We tried that. I was not allowed to say that.

**[47:42] Bob Summerwill:** No.

**[47:42] Griff Green:** But I did imply for sure. And the process was, the process would take time, but you would get all of your Ether back. And because of the extra balance, we could even try passing a few proposals and you would still eventually be able to get your Ether back. 100%. So not only was it safe or at least the model, the token model would be good. You knew that other people are going to pay more at the end of the round.

**[48:15] Bob Summerwill:** Right.

**[48:15] Griff Green:** So we even have a few shots at goal before you're starting to take a potential loss if our investments don't work out. So it was an extremely attractive proposal.

**[48:31] Bob Summerwill:** Yeah.

**[48:31] Griff Green:** And that's why 14% of all Ether in existence ended up going in.

**[50:05] Bob Summerwill:** So I mean, as the crowd sale was happening, was that scary? Like the numbers kept going up and up or were you...

**[52:34] Griff Green:** I'm not a software person. I'm a systems engineer. I am an engineer. I am a technical person. I ended up getting a master's degree in digital currencies. So I understand the tech, but I don't have the experience that other developers do about bugs. I think normal people don't really, if you don't work in software, you don't understand how there's always bugs.

**[52:59] Bob Summerwill:** Yes.

**[53:00] Griff Green:** [Lefteris](/people/lefteris-karapetsas/), [Christoph](/people/christoph-jentzsch/) and Simon all were shitting their pants. They're like, this code doesn't have the security it needs for this. That's why our first proposal was for better security solutions. I mean we got an audit.

**[53:20] Bob Summerwill:** But I mean you didn't even really have best practices or libraries or tools. Everything was brand new, right?

**[53:30] Griff Green:** Yeah. The main bug in [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) was because we were following the standard procedure that was laid out by the Solidity team.

**[53:40] Bob Summerwill:** Yeah.

**[53:40] Griff Green:** And they found an exploit in that pattern.

**[53:46] Bob Summerwill:** Yes.

**[53:47] Griff Green:** So I thought we were doing everything really well and we were. I mean, [Lefteris](/people/lefteris-karapetsas/) and [Christoph](/people/christoph-jentzsch/) were some of the smartest people I've ever met. And to have them on top of this code base and then also knowing the top, [Christoph](/people/christoph-jentzsch/) reviewed it. [Christian Reitwießner](/people/christian-reitwiessner/) reviewed it. Everybody looked at it. People at the time, especially during the crowd sale. I was like, the other thing is as a human I am relatively recklessly optimistic.

**[54:19] Bob Summerwill:** Right.

**[54:20] Griff Green:** So I didn't really think, I thought everything would work out fine because it always does.

**[54:26] Bob Summerwill:** Right.

**[54:26] Griff Green:** You'll fix it. Exactly. But now, as being a product manager for software projects for the last decade, I have a very different perspective.

**[54:39] Bob Summerwill:** Right.

**[54:40] Griff Green:** But back then this was like the coolest thing ever. After the first couple days of the crowd sale, it was such a huge success. It was like, dude, I'm coming to Germany. I'm coming to London. I want to be with you guys.

**[54:57] Bob Summerwill:** Yeah.

**[54:58] Griff Green:** I was on the edge of the world over there, which was kind of good because [Stephan](/people/stephan-tual/) could handle the early morning stuff in London and I could handle the evening stuff in the States. So we almost had 24/7 coverage. So it worked out good through 2015 and early 2016, but then it was like, dude, we're going to need to really build a company here. And I still, I mean, I had a contract now that said I was supposed to get paid.

**[55:26] Bob Summerwill:** Right.

**[55:26] Griff Green:** But I never really, I had never been paid and I never really wanted to be paid. I was trying to, in the way that they wanted to as a German company, they needed to pay a legal entity. And I was like, I just want to take crypto. And they're like, we can't give you crypto. And so I also was a little nervous. I didn't have a solid footing in the company and needed my face time.

**[55:50] Bob Summerwill:** Right, right, right.

**[55:51] Griff Green:** So yeah. So I think after, during the crowd sale, I flew over and was hanging out with [Steph](/people/stephan-tual/) in London for a little bit.

**[56:01] Bob Summerwill:** Right.

**[56:02] Griff Green:** By the hack, I was in Mittweida. [Christoph](/people/christoph-jentzsch/)'s mom's house.

**[56:08] Bob Summerwill:** Yes.

**[56:08] Griff Green:** Yeah. So.

**[56:11] Bob Summerwill:** So I mean, what, when did you first sort of interact with [Stephan](/people/stephan-tual/)? I mean, how were your different roles or how were you working there?

**[56:25] Griff Green:** Yeah, well, I mean, he would write the blog posts mostly. I would edit them. We had a nice one-two punch where I would take especially community focused things.

**[56:35] Bob Summerwill:** Right.

**[56:35] Griff Green:** And he would take more of the professional side. Like the biz dev. Exactly. He was doing biz dev. He was doing making sure the comms were very professional. I'm more of a chaos person. He's more of an order person.

**[56:50] Bob Summerwill:** Yeah.

**[56:50] Griff Green:** We had a really nice, balanced team. It was just him and me doing non-technical things. And there's a lot of non-technical things.

**[56:58] Bob Summerwill:** Right. So I'm told he could never relax.

**[57:02] Griff Green:** No.

**[57:03] Bob Summerwill:** He was just constant. Constant motion.

**[57:06] Griff Green:** Yeah.

**[57:06] Bob Summerwill:** Constant vaping. Constant motion.

**[57:08] Griff Green:** Yeah. I was also constant motion, but I was relaxed.

**[57:12] Bob Summerwill:** Yes.

**[57:14] Griff Green:** So it was a good team. He'd be stressed about the problems and I'd be like, ah, it's all going to work out. We could just do this and this. And he'd be like, okay, that'll work. I think there's a lot of value in having an engineering mindset, a solutions mindset going into all these things. And he was more of a problems guy.

**[57:33] Bob Summerwill:** Yeah.

**[57:34] Griff Green:** What about this? What about that?

**[57:35] Bob Summerwill:** Right, okay. So you got Simon, kind of hardwarey side. You've got [Christoph](/people/christoph-jentzsch/) with his testing background as well at the co-op. And then I guess you've got [Lefteris](/people/lefteris-karapetsas/) as well as another dev in there.

**[57:52] Griff Green:** I think [Lefteris](/people/lefteris-karapetsas/) and [Christoph](/people/christoph-jentzsch/) had a similar thing where [Christoph](/people/christoph-jentzsch/) has more of my happy go lucky. He's not reckless at all, though. I'm recklessly optimistic. He's just an optimistic, happy guy.

**[58:04] Bob Summerwill:** Yeah.

**[58:05] Griff Green:** And then [Lefteris](/people/lefteris-karapetsas/) is very stressed, kind of like [Stephan](/people/stephan-tual/). And so they kind of had that same vibe. And actually Simon might even be like, [Christoph](/people/christoph-jentzsch/) and Simon kind of have that happy go lucky temperament. And [Lefteris](/people/lefteris-karapetsas/) was the one kind of stressing on that side. And so they had that balance too.

**[58:26] Bob Summerwill:** Yeah, yeah. So where did the wheels come off? Like, where, what was the first kind of sign that you had of, oh, there's a hack in here?

<h3 id="moratorium-reentrancy-and-warning-signs">Moratorium, reentrancy, and warning signs</h3>

**[58:42] Griff Green:** I mean, oh, there's a hack. Well, I mean, the wheels came off even before that though. We had our first proposal out, but then there was the moratorium.

**[58:54] Bob Summerwill:** Right, right. Yes.

**[58:55] Griff Green:** So [Dino Mark](/people/dino-mark/) and Emin Gün Sirer and [Vlad Zamfir](/people/vlad-zamfir/). [Vlad](/people/vlad-zamfir/) was actually a curator.

**[59:02] Bob Summerwill:** Right.

**[59:03] Griff Green:** They wrote this thing. I think it was within three or four days of the crowd sale ending. They put out this moratorium that was like, do not, curators, we're not ready. The governance mechanism has all these things and they have like 12 points of how the design of The DAO is flawed.

**[59:22] Bob Summerwill:** Right, right. We're not ready. Hold your horses.

**[59:26] Griff Green:** None of them had anything to do with The DAO bugs. They didn't find any bugs in the contracts. They just said this is effectively too much money. The governance mechanism isn't good.

**[59:40] Bob Summerwill:** Yes.

**[59:40] Griff Green:** Long story short. And I was like, guys, you guys are full of it. What are you talking about? And I was going on and basically disproving almost all of their points. But the curators, it was a lot of the ETH supply. 14% of all Ether in existence were in The DAO contracts.

**[1:00:05] Bob Summerwill:** Yeah, yeah.

**[1:00:06] Griff Green:** And so if anyone says this isn't good, then... and so it's kind of like we had a curator list, and it was like, who's following the moratorium and who's not.

**[1:00:16] Bob Summerwill:** Right.

**[1:00:18] Griff Green:** So we're trying to get the curators to get off the moratorium. And [Gav](/people/gavin-wood/) stepped down. He stepped down during the crowd sale.

**[1:00:29] Bob Summerwill:** Right, right.

**[1:00:29] Griff Green:** When it started to get too big, he was like, this is just out of control. I don't want to be... and he really called it right. It was too big to fail.

**[1:00:39] Bob Summerwill:** And I think he was also, he'd got a concern about what the role of curator was. He was thinking it was a very narrow, technical role. And then it kind of walked into being a bit more of a face of the project thing.

**[1:00:52] Griff Green:** Yeah, exactly. And that's like, our marketing. That was [Stephan](/people/stephan-tual/) and I maybe stretched a little bit on our marketing because we put their faces on the website.

**[1:01:05] Bob Summerwill:** The other thing I noticed on that was on the website, it said like, [Christian](/people/christian-reitwiessner/), [Ethereum Foundation](https://ethereum.foundation/). It didn't say creator of Solidity. It didn't say leader of Geth team. Most of them said, so and so, [Ethereum Foundation](https://ethereum.foundation/). So and so, [Ethereum Foundation](https://ethereum.foundation/). So a lot of people were like, oh, so this is like an [Ethereum Foundation](https://ethereum.foundation/) product, is it? Because you're not saying so and so, particular technical expertise, but this is happening on their own.

**[1:01:41] Griff Green:** Yeah. Yep. And we didn't ask them if we could do that. I think that was probably the biggest thing. Now, of course, we, if you're going to put someone's face on your website, we ask people. I think we kind of got their approval maybe, but I don't think they definitely didn't have it in writing.

**[1:02:06] Bob Summerwill:** Yeah.

**[1:02:08] Griff Green:** And it's like, it's true. And at that time, we didn't have, I mean, maybe [Steph](/people/stephan-tual/) a little bit, but I didn't have an understanding of what it means to have someone's face on the website. This is really, it really pushes things. It creates a lot of trust when maybe it's not totally deserved. And I think so...

**[1:02:35] Bob Summerwill:** I think...

**[1:02:35] Griff Green:** And we're all naive. This is 2016 crypto. There hasn't been an ICO yet. I mean, there were some ICOs, but it wasn't like the ICO scams. They were, all the ICOs were actual projects. Exactly. Almost all ICOs were real projects by real people. It was very rare that there's a scam.

**[1:03:00] Bob Summerwill:** I mean, the other thing you had, as well as the moratorium things, were the kind of identification of that reentrancy issue.

**[1:03:10] Griff Green:** Yeah.

**[1:03:10] Bob Summerwill:** So you've got Emin and Vlad and, oh, my goodness. Who was Emin's student at the time?

**[1:03:21] Griff Green:** Oh, yeah. Flashbots guy. Starts with a P. Phil. Phil Daian.

**[1:03:26] Bob Summerwill:** Phil Daian, yeah. He's a great guy.

**[1:03:30] Griff Green:** Yeah.

**[1:03:31] Bob Summerwill:** But yeah, them looking, is there an attack vector here?

**[1:03:36] Griff Green:** And I mean, they claim that they found the bug and just didn't tell us. And I was so irate. I'm like, dude, either you're lying or you're an... because they said that they found the bug. I mean, we knew of the reentrancy attack.

**[1:03:56] Bob Summerwill:** Yeah.

**[1:03:58] Griff Green:** [Christian Reitwießner](/people/christian-reitwiessner/) found it for us. Analyzed it. And the thing is, it was in the reward contract, which had no money yet.

**[1:04:08] Bob Summerwill:** Right.

**[1:04:10] Griff Green:** So [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) contract didn't have the reentrancy in it.

**[1:04:14] Bob Summerwill:** Right.

**[1:04:14] Griff Green:** But because the split DAO, when you call split DAO, when you're splitting out, part of it was, hey, if [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) had earned any income, any revenue, you as a DAO token holder, you get your share of it.

**[1:04:29] Bob Summerwill:** Right.

**[1:04:30] Griff Green:** So before you split, we collect funds from the reward contract, and then you go out.

**[1:04:38] Bob Summerwill:** Right.

**[1:04:38] Griff Green:** And so, because all the money was in the contract that didn't have a reentrancy bug. And the contract with the reentrancy bug was separate. We actually thought we were fine.

**[1:04:50] Bob Summerwill:** Right.

**[1:04:52] Griff Green:** [Christian](/people/christian-reitwiessner/) thought we were fine. [Vitalik](/people/vitalik-buterin/) thought we were fine.

**[1:04:55] Bob Summerwill:** Right.

**[1:04:56] Griff Green:** Everyone reviewed it. When we realized the call pattern that was in the documentation was poorly structured.

**[1:05:03] Bob Summerwill:** Right.

**[1:05:04] Griff Green:** So then [Stephan](/people/stephan-tual/) made a post that was like, bug found, but no funds at risk.

**[1:05:15] Bob Summerwill:** Yes.

**[1:05:17] Griff Green:** Right. And so then Emin and Phil. Well, Emin specifically, we had some Skype chat rooms. Where Emin said that after the hack happened, he said, well, me and Phil, we identified this bug four days ago.

**[1:05:34] Bob Summerwill:** Right.

**[1:05:35] Griff Green:** And then he wrote a blog post about how he identified the bug many days ago, and da, da, da. And then he just didn't tell us. If he identified the bug, he should tell the team that could fix it so we could try to exploit it ourselves. Which MakerDAO had done.

**[1:05:55] Bob Summerwill:** Right, right.

**[1:05:55] Griff Green:** MakerDAO actually had the same bug. They found it and they exploited their own contracts to secure the funds.

**[1:06:03] Bob Summerwill:** Yes.

**[1:06:03] Griff Green:** And if Emin would have actually found the bug, he did not do responsible disclosure. So either he's lying about finding the bug, which is more of what I believe to be the truth. He just lies because he has some academic motivations. Later engagements with Emin Gün Sirer have always been this like, you need to give me credit for this. You need to give me credit for that. It's like, dude. But we didn't reference, there's a reason we didn't reference you. We didn't look at any of your stuff.

**[1:06:47] Bob Summerwill:** Right.

**[1:06:47] Griff Green:** Later on I launched this thing called the Vaults. Which has all sorts of cool security procedures. Time locks and whitelists and all the great things that would have saved Ethereum so many times from so many hacks, like the Bybit hack or whatever. Why are time locks not on Gnosis Safes? It kills me. Anyway. And he was like, well, I wrote a vault contract for Bitcoin. It was like, well this is news to me, man. I never saw it. Well, you should reference me in your blog posts.

**[1:07:21] Bob Summerwill:** Right. Right.

**[1:07:25] Griff Green:** Why are you talking right now? Because you're trying to convince me to put a line in a post. And he was incessant about it. It was like I'm going to have to keep talking to this guy until I just put a line in the post. So I'll put a line in the post.

**[1:07:39] Bob Summerwill:** Right.

**[1:07:40] Griff Green:** But it was so... and so from my perspective at the time, he was just chasing headlines or trying to make himself noteworthy.

**[1:07:50] Bob Summerwill:** Right. Yeah. So I know Stephan had a lot of conflict.

**[1:07:56] Griff Green:** I mean he just wasn't an honest actor. He was behaving in a way that was provably not in the best interest of our project.

**[1:08:06] Bob Summerwill:** Right.

**[1:08:07] Griff Green:** It was very self serving. That doesn't mean, I think he's probably a great guy. It's just that was his strategy in early crypto to make sure his name was very prominent in these things. And hey, good strategy. But the victims of it just sit there.

**[1:08:27] Bob Summerwill:** I mean I remember reading something else he'd said about that where it was sort of like he said he'd been really sick at the time and he would have looked at something and then kind of left, like Phil was looking at it or whatever, but it was kind of like, okay, maybe there's something. But I think it's kind of, okay, maybe there's a bug there, but maybe there isn't. The perception was, oh right, this isn't a definite shoe-in. Got to ring the bell.

**[1:08:57] Griff Green:** Yeah.

**[1:08:57] Bob Summerwill:** But then after it's happened, it's like, oh, yeah, we probably saw that.

**[1:09:04] Griff Green:** Well, then he should have told us. Either you take credit and you tell us and we sing your praises for finding the bug, or if you don't, then I don't think you really get credit. You can't have it both ways.

**[1:09:20] Bob Summerwill:** There was another guy as well, right. Peter. Peter Vessenes. Who also like, maybe saw it.

**[1:09:30] Griff Green:** And I also had future negative encounters with him as well. He is also like, one of the ICOs he made actually had... So after The DAO, I was leader of the White Hat group. And so me and Jordi, we would get reports about issues. We rescued $200 million from the Parity multisig hack.

**[1:09:51] Bob Summerwill:** Right.

**[1:09:51] Griff Green:** During the ICO days, we rescued many ICOs as well. One of the ICOs was made by Peter's company, and they had a bug where they were accepting Ether for tokens. But the tokens had extra zeros. So I can't remember which one it was. Either Ether was worth 10 times more than it should have been, or tokens were worth ten times more.

**[1:10:16] Bob Summerwill:** Right.

**[1:10:17] Griff Green:** But either way, it was a really bad bug. And so tokens were issued incorrectly, and they were released on the community. So we had to do something. It was like, reach out to us, and we reach out to Peter to work with him, and he's like, oh, it's the weekend. Oh, there was some bugs in the stuff that we wrote. It's the weekend. I have plans with my family. Dude, you wrote code and raised $10 million. There's thousands of people that are affected by this, and you won't even squirrel away some hours to work with the random people who are coming out of nowhere to help you save the day.

**[1:11:04] Bob Summerwill:** Right?

**[1:11:05] Griff Green:** Just another selfish bad actor in the space early days. I mean, and it's okay. I don't want to characterize these people so poorly because I feel like sometimes you have some actions like, I don't know the details. Maybe it was a funeral. Maybe it was a wedding. Maybe there was something really critical. But in the end, there are times where you could step up and be a hero or you could choose a selfish, self-serving direction. And if people make that self-serving choice in that moment, it's hard for me to relate.

**[1:11:46] Bob Summerwill:** Yeah.

**[1:11:47] Griff Green:** It's hard for me to trust them. I hate characterizing people as bad actors, but they made bad choices.

**[1:11:57] Bob Summerwill:** And so there was a new version of The DAO framework, right, that was, the code was done but not deployed. Right at the time of the hack.

<h3 id="the-dao-hack-and-white-hat-response">The DAO hack and White Hat response</h3>

**[1:12:08] Griff Green:** Yep.

**[1:12:09] Bob Summerwill:** So what was the first thing that happened? How were you first alerted to the actual hack?

**[1:12:16] Griff Green:** Yeah, well, I was in Germany at the time and in those days, last thing I do before going to sleep, hang out with the [Slack](https://slack.com/). First thing when I wake up was check the [Slack](https://slack.com/). Make sure.

So when I woke up I checked the [Slack](https://slack.com/). And Mo was the community member. He was saying that like, hey, I think [Etherscan](https://etherscan.io/) is broken, right? It's not showing the right Ether amount, something like that. And so I went to [Etherscan](https://etherscan.io/). I'm looking at the transactions and I'm just like, no, [Etherscan](https://etherscan.io/) is not broken. We're getting hacked.

**[1:13:08] Bob Summerwill:** Right.

**[1:13:08] Griff Green:** And so I was instantly demon dialing [Christoph](/people/christoph-jentzsch/), [Lefteris](/people/lefteris-karapetsas/), Simon and [Stephan](/people/stephan-tual/) and all of them were asleep to start. And I think Simon might have been awake, but eventually I got into Simon and I told Simon, dude, whatever you got to do to get [Christoph](/people/christoph-jentzsch/), go to his fucking house and kick down his door. We need him awake right now. And so he ended up getting [Christoph](/people/christoph-jentzsch/) eventually. Also got a hold of [Lefteris](/people/lefteris-karapetsas/) and [Stephan](/people/stephan-tual/) and got everything together. And it was action time. I kind of took a lot of the leadership, right. Like you do this, you do this.

I mean, from the technical side, I had no real ideas, but I did, I had a conversation with Jordi the day before, right, because he was doing some really cool stuff with [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) governance, right? Trying to create liquid democracy for [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)). So he had it working. I was going to write a blog post. My main task for the day of [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) hack was to write a blog post about Jordi's work on liquid democracy. Never wrote that blog post.

**[1:14:26] Bob Summerwill:** Still get back to it.

**[1:14:27] Griff Green:** Yeah, right. Well, yeah. Anyway, I got him to work with [Lefteris](/people/lefteris-karapetsas/) on hacking [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)). I mean, they were working separately, but Jordi, you try to figure out, recreate the hack. [Lefteris](/people/lefteris-karapetsas/) was trying to recreate the hack. [Christoph](/people/christoph-jentzsch/) was meeting with the [Ethereum Foundation](https://ethereum.foundation/). I think Simon might have been there too.

**[1:14:50] Bob Summerwill:** I can't remember.

**[1:14:51] Griff Green:** And [Stephan](/people/stephan-tual/) and I are trying to manage the community, figure out what we can say and how do we alert the community this is even happening. Managing that process. And then once we figured out ways that we could recreate the hack, then it was about coordinating to get people who already had split [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)).

**[1:15:15] Bob Summerwill:** Right.

**[1:15:15] Griff Green:** And I'm asking random people from China for their ID and their private keys. So that we could go into [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) and not have problems. And then [Fabian](/people/fabian-vogelsteller/) and [Alex Van de Sande](/people/alex-van-de-sande/) and a few other people were always participating as well. And like, we're going to create the Robin Hood group to hack [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)).

**[1:15:37] Bob Summerwill:** Yeah.

**[1:15:39] Griff Green:** So, yeah, it was just coordination time. How do we make this happen?

**[1:15:49] Bob Summerwill:** And so you posted out, right? So that you had capital letters.

**[1:15:55] Griff Green:** THIS IS NOT A DRILL. Yeah, yeah, yep. That was our... and I didn't want to just post, [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization))'s being hacked. We're foxed. I wanted to say, this is not a drill. [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) is being exploited. Here's what the attack kind of is. They're using the split DAO function or something like that. I don't really remember what I wrote, but the important part was, this is how you can help.

**[1:16:22] Bob Summerwill:** Yes.

**[1:16:23] Griff Green:** I wanted something that people could do so that it wasn't just a helpless reaction. It was like, okay, let's all work together and solve this. And so basically it was like spam the blockchain, pay gas money.

**[1:16:36] Bob Summerwill:** Right.

**[1:16:37] Griff Green:** So that we could slow it down.

**[1:16:41] Bob Summerwill:** I mean, I remember there was a, I guess it was a Skype call or something within the foundation that I joined at some point later that day where there were a bunch of people. I mean, probably [Christoph](/people/christoph-jentzsch/) was in there. It was probably not just an EF thing.

**[1:16:56] Griff Green:** Yeah.

**[1:16:58] Bob Summerwill:** But yeah, a bunch of people on a live call trying to work out what to do.

**[1:17:05] Griff Green:** Yeah. And [Vitalik](/people/vitalik-buterin/) right away said, maybe a hard fork is the best solution. And it became obvious that the hard fork was the best solution because, unless, once a soft fork didn't work.

Every 35 days, so we as a white hat group, we found a way to actually buy tokens in the dark DAO through [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)). So we actually passed a proposal where [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) spent its own money to buy tokens in the dark DAO.

**[1:17:36] Bob Summerwill:** Right.

**[1:17:38] Griff Green:** And then sent those dark DAO tokens to us so that we could hack the dark DAO.

**[1:17:45] Bob Summerwill:** Right, right.

**[1:17:47] Griff Green:** And we had it set up so that basically every 35 days, we would split [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) and hack [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)). It would be like a stalemate. Exactly. So every 35 days there'd be this attack on Ethereum.

**[1:18:07] Bob Summerwill:** Yeah.

**[1:18:08] Griff Green:** One of the DAOs getting hacked or the dark DAOs getting hacked. And so eventually it was just like, well, those are your options. Either we do a hard fork or every 35 days we have this attack.

**[1:18:23] Bob Summerwill:** I mean the soft fork that very actively went ahead for a good couple of weeks. And it was implemented, Geth had a release.

**[1:18:35] Griff Green:** Yeah.

**[1:18:36] Bob Summerwill:** With that support in it. Before it became evident that that was a denial of service vector. That wasn't going to work.

**[1:18:45] Griff Green:** Yeah. You could basically make any transaction and it would reference the dark DAO and then it would, if you just kept sending that in, all the nodes would keep processing these transactions and reject it.

**[1:18:59] Bob Summerwill:** So you could end up spamming it to...

**[1:19:03] Griff Green:** DOS the network.

**[1:19:04] Bob Summerwill:** But then, I mean, the other thing that you had through all of this period was all this massively intense discussion of, well, should you do anything at all. Right. Is this something that you, is this a bug in Ethereum? Well, no, it's a bug in an app. And I mean, I remember my first reaction as well. No, of course you don't do anything. It's an immutable blockchain. Moral hazard. All of these thoughts. But it was evident quickly that you had people who'd been involved with the project for like two years collaborating with very different views.

<h3 id="hard-fork-social-consensus-and-etc">Hard fork, social consensus, and ETC</h3>

**[1:19:54] Griff Green:** Yeah.

**[1:19:54] Bob Summerwill:** And it was only evident at that point. It's like, what, you think we should, you think we shouldn't? Like what the...

**[1:20:02] Griff Green:** I mean at the time though, it's really just a, you have to look at it and be like, okay, what do you want to do? Here's the simulation. We do the hard fork and then this thing is over. And everyone gets their money back and people are saved. The hacker doesn't have any money.

You don't do the hard fork. Every 35 days there's an attack. All the DAO token holders take a 30% haircut and the hacker ends up with about as much Ether as [Vitalik](/people/vitalik-buterin/) has today.

**[1:20:36] Bob Summerwill:** Yeah.

**[1:20:37] Griff Green:** So do you want a nefarious actor when moving to proof of stake to be one of the largest Ethereum token holders?

**[1:20:45] Bob Summerwill:** Yes.

**[1:20:46] Griff Green:** And it was just like, oh, and you get to honor the myth of immutability. I say it as a myth because at the time I was so trying to get [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) token holders the refund.

**[1:20:57] Bob Summerwill:** Right, yes.

**[1:20:59] Griff Green:** And so this idea of immutability versus social consensus. I think the main argument at the time by most people who didn't agree with the fork is immutability is one of the core principles of blockchain technology. And yeah, so it makes perfect sense that a lot of people would be philosophically opposed, especially if they weren't involved in [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)).

But from a simulation standpoint, where do you want to go forward from? What point do you want to go forward from? It really was in Ethereum's best interest to go forward from a hard fork point.

**[1:21:44] Bob Summerwill:** At the ETC Summit in 2017, [Charles Hoskinson](/people/charles-hoskinson/) gave a little talk about some of this that was kind of interesting, which he was saying, there's this perception that there were two Ethereums at the time of the fork. But to his perspective, there were always two Ethereums because multiple different visions were sort of sold at the start. People got involved, were a variety of different perspectives. Sort of talking off camera a little before about the co-founders and the number of different co-founders and them not knowing each other and so on.

But he was saying, one of those visions was really like programmable [Bitcoin](https://bitcoin.org/). It's like, yeah, I like [Bitcoin](https://bitcoin.org/), but I want to be able to do programmable sort of money stuff.

**[1:22:36] Griff Green:** Yeah, yeah, big blocks.

**[1:22:38] Bob Summerwill:** But so, like [Bitcoin](https://bitcoin.org/) with smart contracts essentially. So you can do a lot more than just the moneyness but wanting it to be hard money still. So that's one of the visions. And then the other one was World Computer. Saying, well, no, it's not really money. Ether isn't money. It's like fuel for the machine. And it's a development platform, like Android or the web or Windows or whatever. It's a development platform and it's about applications. It's not about money.

So if you're of that [Bitcoin](https://bitcoin.org/) hard money mindset, then of course you don't intervene. That's moving other people's money. That's the mortal sin. But if you're on the application side, it's, well, there's a bug. There's a bug in the platform.

**[1:23:38] Griff Green:** Yeah.

**[1:23:38] Bob Summerwill:** And you can say, well, oh no, the bug wasn't in the platform, it was in the application. But anyone who's been involved with software development, it's like, well, you do hacky fixes all over the place because it's better for the users. It's like, okay, you're going to get some shitty technical debt, this horrible little patch somewhere. But the end effect is like, oh, on the application side as a user, it's worked and fixed.

And something like Windows, Windows has got this massive backwards compatibility forever. So there's a whole load of shit in Windows that's like, if program equals Office version is this, then return a different value. Just whatever you need to do to keep the thing going. So that was really his perspective, is that you'd always have these irreconcilable visions within the single project.

But it was kind of impossible because on that money side it's like, well, yeah, it's hard immutability. You don't change it. On the application side, well, it's forever mutable. You've got this emergent building the thing and you're going to be wrong and you're going to fix and course correct and change. The software is very alive. So that was really his sort of view, is it was always irreconcilable. But that was like the junction point.

**[1:25:09] Griff Green:** Yeah.

**[1:25:10] Bob Summerwill:** And something I remember at the time thinking was like, irrespective, it's not like right or wrong or any of that. But to me, the most wonderful thing was, if you're in a bad marriage, you can have a divorce. If you want to secede from the union, you can do that.

**[1:25:32] Griff Green:** Yeah.

**[1:25:33] Bob Summerwill:** But you don't have to get compelled to live within a single place where you've got these irreconcilable things. And what you had at the time of that fork was, minority chains have never survived before then.

**[1:25:48] Griff Green:** Yeah.

**[1:25:49] Bob Summerwill:** The received wisdom was like you're going to have a winner and a loser and the losers are just going to be sore, tough shit. You've lost and your thing dies.

**[1:26:04] Griff Green:** Yeah, I mean we all knew that there would be another token, or not everyone but at least most of the technical people knew there'd be another token. But the market dynamics of it being able to survive didn't make a lot of sense. Because everyone with Ether had ETC and there needed to be a lot of money injected to keep the ETC token to have value. There'd have to be liquidity. So who are the market makers that are going to bring that liquidity?

**[1:26:36] Bob Summerwill:** Yeah, but to my mind it was like the most wonderful thing of, you can have both. It's like the universe can kind of split into two and you've got both of them and maybe you only want to be active in one of them. The other, just dump your tokens in the other. Or maybe you see value in both and you just, you don't have to react to anything.

**[1:27:04] Griff Green:** Who were the biggest Ethereum people that moved over to ETC?

**[1:27:12] Bob Summerwill:** I mean you had various developers that moved later. I mean I was still working at the foundation at the time. I didn't leave. But yeah, you had, I mean not a lot of big name people. You did have some people that were sort of supportive and Charles and IOHK, shortly afterwards, Charles had sort of said, well hey, I was a co-founder, I was involved at the start and I feel that we did sell to that group as well and we've got a responsibility. And I mean to my mind I think on the foundation side that was the one failure, is picking a winner. And like, you guys, fuck you.

**[1:28:10] Griff Green:** Which foundation?

**[1:28:11] Bob Summerwill:** The [Ethereum Foundation](https://ethereum.foundation/). As in, the crowdfunding came from that super set of people. But then what happened at the time of the fork is the foundation are like, well, basically screw you guys, there's no funding for the minority fork. But you did have this wonderful, well, great, both worlds can still exist. But what happened is all of the money just went the majority way.

**[1:28:40] Griff Green:** Yeah.

**[1:28:40] Bob Summerwill:** So that proportion of people who had funded, they literally funded that vision. Including both were disenfranchised.

**[1:28:50] Griff Green:** Including both. You mean the...

**[1:28:53] Bob Summerwill:** As in, a significant, I don't know, 15, 20 or whatever percent of people who were part of that Ethereum community who had funded the project were left, their part was unfunded.

**[1:29:11] Griff Green:** So basically the people who would have kind of voted for not doing the hard fork. They didn't...

**[1:29:21] Bob Summerwill:** The [Ethereum Foundation](https://ethereum.foundation/), they were thrown out, like they were fired from... No, no, not from Foundation. I'm saying that I think the foundation should have kept a portion of the funding for people who were working on ETC for continuation of that vision. So it's like, right, okay, 85% of people were on the majority side. Well, great, 85% of the money keeps going on that. But what happened is it's almost like, right, my son, you are banished from my house and I will never, you've done a thing, you have to leave and I disinherit you.

**[1:30:08] Griff Green:** Well, I mean, I actually think that's the right thing to do because the hacker was making money off of ETC. So if you support the ETC chain in any way, you're basically supporting the hacker. The bad hacker who... I mean, that's the only difference between ETC and Ether is in ETC the bad guy has a bunch of money. I mean, I really did not think that ETC would survive.

**[1:30:38] Bob Summerwill:** No, I mean, I don't think a lot of people didn't.

**[1:30:41] Griff Green:** Yeah. And it's in many ways good for the EF that it happened the way it did because they got to sell ETC for a year plus and not have to drain their Ether treasury.

**[1:30:56] Bob Summerwill:** Right.

**[1:30:57] Griff Green:** But I mean, if they would have dumped a bunch of Ether Classic, if everyone would have coordinated and dumped a bunch of Ether Classic right away, even if we were able to, as the white hat group, actually dump all the Ether Classic, it would have killed the chain.

**[1:31:14] Bob Summerwill:** Well, there was a lot of dumping.

**[1:31:15] Griff Green:** There was a lot of dumping. But it wasn't so overwhelming that it overcame the market making. Which I think I assume, what's his name, the guy from Poloniex and Digital Currency Group.

**[1:31:37] Bob Summerwill:** Well, so Barry Silbert was very supportive, but what I didn't realize is him and [Poloniex](https://poloniex.com/) were completely unrelated. I thought [Poloniex](https://poloniex.com/)... No, not at all. I had that misconception as well. I thought that [Poloniex](https://poloniex.com/) was like a portfolio company. It totally wasn't.

**[1:31:57] Griff Green:** Really? Wow. I didn't know that. But they must have been coordinating or something.

**[1:32:02] Bob Summerwill:** No, no. He said he'd met them, but that was all. They weren't related at all.

**[1:32:12] Griff Green:** Well, someone was going behind the scenes and offering a bunch of Ethereum people money for the ETC. It was like a penny per ETC.

**[1:32:21] Bob Summerwill:** Well, that was, I think that was Greg Maxwell. Greg Maxwell emailed [Vitalik](/people/vitalik-buterin/) and made that offer. Was saying, okay, if there's no value here, well, let's do a trade. And that trade didn't happen. But yeah, I mean, I don't know how that started on [Poloniex](https://poloniex.com/). I mean, I guess it was just like, well look, a minority fork of Ethereum would still potentially be a significant amount of money. And some people I guess would be interested in a market. So they listed it and went from there.

**[1:33:05] Griff Green:** And I just, I do not believe, I have a hard time believing that it was that innocent. I have a very hard time believing it was that innocent.

**[1:33:16] Bob Summerwill:** And I mean you had, I think you had a whole mixture of different people with different motivations. You had a bunch of Bitcoiners who hadn't been interested but then were somehow after the hack. You had people who were just out to make a buck. You had miners, again, either ideologically driven or just thinking, well, look, maybe there's not going to be a lot of people mining this. And if there is a listing, then maybe I'll have mined all the ETC.

**[1:34:04] Griff Green:** Yeah, totally.

**[1:34:04] Bob Summerwill:** I'll have made a bunch of money. But I think all of that flushed out really pretty quickly. And you did get left with primarily people who were like, well, it's immutability. You don't interfere. That's the whole thing. And who felt kind of betrayed. It's like, well, the front page of ethereum.org is "building decentralized applications with no potential for third party interference" or "unstoppable," something like that. And it's like, third parties includes us.

**[1:37:36] Griff Green:** Yeah, yeah. And I think they ended up also doing it with the markets. I really do believe that's the only reason ETC survived the first few days of listing. It's because in the end, there was a financial motivation from [Bitcoiners](https://bitcoin.org/) to make a stand against Ethereum in that moment.

**[1:37:59] Bob Summerwill:** Yeah.

**[1:38:00] Griff Green:** So. And then what evolved out of it? Yeah, I mean, I'm glad there was a space for people who believe that hard money was worth it and all that. But in the end, I don't think we lost very many developers at least. And in many ways, one of the underappreciated moves that Ethereum did is they had r/ethtrader and r/ethereum.

**[1:38:30] Bob Summerwill:** Right. Yeah, yeah. Right. Yes, yes.

**[1:38:32] Griff Green:** And I feel like that socially allowed for this space where r/ethtrader was talking about the price, r/ethereum was talking about building. So that safe space for builders was so valuable. And I feel like in many ways also Ethereum versus Ether Classic became also kind of a safe space. Like, dude, if you don't like what we're doing in Ethereum, go to Ether Classic. It's there.

**[1:38:58] Bob Summerwill:** Yes, but it's optionality, right?

**[1:39:01] Griff Green:** Yeah. And optionality is good. I mean, that's the thing. Blockchains are a social consensus tool. It's open source code. It's not immutable. The immutability was basically destroyed that day. When we did that hard fork, it became very clear actually blockchains are just not immutable. You can't impose immutable rules with open source code. But you can create systems of social consensus.

**[1:39:31] Bob Summerwill:** Right.

**[1:39:31] Griff Green:** And if anyone didn't want to run that hard fork, they didn't have to. They could keep on Ether Classic. And the fact that the market survived proves social consensus can win out.

**[1:39:45] Bob Summerwill:** Yeah, I mean, it's not the code that makes the blockchain immutable. Certainly not. It is a social consensus from the people involved. I think that's the same for any characteristic. These are consensus technology and these are tools to allow you to assist in forming consensus.

**[1:40:19] Griff Green:** I heard of a guy who wants to fork [Bitcoin](https://bitcoin.org/) and take Satoshi's coins for the foundation. So it's like, okay, these are known Satoshi wallets we're going to take and maybe it's only like 70 of them or something.

**[1:40:35] Bob Summerwill:** It's half. Yeah, well, it's half of the new coins. It's not really existing.

**[1:40:42] Griff Green:** Yeah, half of the new. Yes, of course they can't take the [Bitcoin](https://bitcoin.org/). But they fork [Bitcoin](https://bitcoin.org/), they take half of Satoshi's coins and that's what they live off. If that's the social consensus of that chain, just steal from Satoshi.

**[1:40:58] Bob Summerwill:** Right.

**[1:40:58] Griff Green:** And that's perfectly honest. That's fine. I think that's the thing. If you want to participate in that, if there's social consensus in doing...

**[1:41:08] Bob Summerwill:** These are Schelling points. I mean, I think anything that you say, if you're saying at the start and it's an opt-in thing, that's legit.

**[1:41:21] Griff Green:** Absolutely.

**[1:41:21] Bob Summerwill:** Where people get pissed off is where you have a certain understanding and then the deal changes. That's always where you're going to get the friction.

**[1:41:31] Griff Green:** 100%. 100%.

**[1:41:34] Bob Summerwill:** But you can't predict the future. So sometimes the deal does have to change because your expectations were wrong. But yes, I mean, how, I mean, I remember coming to that point, you had got various signaling, right. There were some minor signaling things. And the CarbonVote, I mean, coming into that day, were you kind of confident of how it was going to go? Did you feel, right, we're going to get the hard fork and we're going to move on with our lives.

**[1:42:19] Griff Green:** 100% confident. I did not... I was calling Ether Classic "dead ether." I knew that there would be the ability for Ether Classic to exist. I think a lot of people actually didn't know that.

**[1:42:33] Bob Summerwill:** I wasn't sure.

**[1:42:35] Griff Green:** Yeah, but because I have a degree in digital currencies, I know how these things work. So yes, there will be another token, of course, if people choose to run the old nodes. Yes, but. And so on Reddit I was calling it "dead ETH." Like, yes, you could have dead ETH and that would have been a thing. And actually some people were telling us, hey, you need to attack the Ether Classic chain. But we had just done like a month and a half of non-stop hacking and coordination. And so when the hard fork happened, it was kind of like, ah, we can take a break.

**[1:43:21] Bob Summerwill:** Yeah.

**[1:43:22] Griff Green:** And so we didn't end up, because we had the ability to do the every 35 days hack back on Ether Classic. And we just didn't believe that it would survive and we took a vacation. I mean we didn't take a full on vacation. But we went to full time work instead of non-stop work. Maybe a weekend. And then when we were like, okay, let's check it out, let's try it. By that time it was too late.

**[1:43:43] Bob Summerwill:** Right.

**[1:43:44] Griff Green:** Which was only just a few days after the hard fork. I think the hard fork happened like 32 days afterwards and then we had 35 days.

**[1:43:57] Bob Summerwill:** Right.

**[1:43:58] Griff Green:** So yeah. Yep. I still regret it because we could have probably stopped the hacker from making money, at least getting the money out.

**[1:44:08] Bob Summerwill:** Like we could have just, with just the back and forth.

**[1:44:12] Griff Green:** Yeah, we could have probably automated that and just made sure it worked once a month, basically. So sad because the hacker really ruined something beautiful. If we could have had responsible disclosure and actually white hat attacked [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) ourselves, we would have redone [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) contracts.

We could have done, boom. Who knows what would have happened. People are like, oh, but a lot of people think [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) would have been hacked no matter what. And eventually. But if we would have hacked [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)), we could have kept [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) going and kept [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) alive.

**[1:44:52] Bob Summerwill:** Right.

**[1:44:53] Griff Green:** We just never had that opportunity. That's why I get pissed at Emin Gün Sirer. He really did find that bug, man.

**[1:45:02] Bob Summerwill:** I mean we recreated it a few days...

**[1:45:04] Griff Green:** Yeah, we recreated the hack in less than 12 hours. I don't know, exactly the same day. I found it at 6am. Maybe the hack started at more like 3 or something. But by the afternoon [Lefteris](/people/lefteris-karapetsas/) recreated the hack and Jordi also hacked. So we would have been able to eventually figure out the hack if there was real, if we had the dedication of effort.

**[1:45:35] Bob Summerwill:** Right, right.

**[1:45:36] Griff Green:** Or if [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) hacker would have just decided to come out and be a hero and be like, hey, I'm actually a good guy. Let's just save all the money from [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) and redo this. He would have been part of [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) in the future. We would have had something crazy.

**[1:45:58] Bob Summerwill:** So I mean [Laura Shin](/people/laura-shin/) and others later believe they identified the hacker as Toby, his surname. I mean, do you have any contact with him at the time? I think he was like, somebody was saying that he had been on the forums and talking and being around.

**[1:46:24] Griff Green:** I mean we had thousands of people in the [Slack](https://slack.com/). So maybe I had interactions with him but nothing memorable. And I also think it's really hard to prove beyond a reasonable doubt that he is... no matter what, unless he admits it or there's some sort of evidence found on his computers or something like that. Because what evidence they have, it could have been as simple as he sold some [Bitcoin](https://bitcoin.org/) to some guy. So it's probably him. Beyond a reasonable doubt, I wouldn't say no. I think there are reasonable doubts. But it is probably that guy. And man, what a different world it could have been if he would have made different decisions.

**[1:47:14] Bob Summerwill:** And I mean he's not said anything publicly after that identification. And as far as I know there's been no law enforcement involvement or anything.

**[1:47:23] Griff Green:** Well who has damages? Everyone got their Ether back and bonus Ether Classic on top of it all. So it's hard to...

**[1:47:32] Bob Summerwill:** I mean and I guess that's the same with the SEC. Like, their DAO report.

**[1:47:41] Griff Green:** Yeah. And their DAO report. I think if you went back to it, the current SEC would not call [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) a security, that's for sure. And we were more decentralized than almost any DAOs that exist today. At least any of the governance DAOs. Those DAOs are not nearly as decentralized as [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) was. So I feel like [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) was not a security. In that paper that the SEC wrote, they made some incorrect assumptions. But I think it was quite a good write-up technically.

**[1:48:17] Bob Summerwill:** I was quite surprised at the time. These guys...

**[1:48:23] Griff Green:** It wasn't bad and I especially loved it because basically I was the only American on the team.

**[1:48:28] Bob Summerwill:** Right. Okay.

**[1:48:30] Griff Green:** So it was almost like a get out of jail card for me specifically. Because I'm the American who they could really go after. So they never said my name in it. I was also happy about that. I don't need my name in there. But overall I was very happy with that paper. But I think their conclusions around relying on [Slock.it](https://slock.it/) as a third party were just incorrect. We couldn't, we were having so much trouble passing a proposal to give us money. I don't know how you could justify that we had some kind of central reliance on us when we can't even get money out of the thing.

**[1:49:17] Bob Summerwill:** No, no. I mean same with the curators. Something else I remember thinking at the time beyond the, they've got their faces on the front page and so on. Is that [Slock.it](https://slock.it/), there were layers of legal indirections and protections. You'd got the DAO Hub, the DAO Link. [Slock.it](https://slock.it/) is a legal entity. All of those layers are ahead of the employees within [Slock.it](https://slock.it/). But the curators are just hanging out up front with nothing.

**[1:49:52] Griff Green:** Yeah. We had no legal entity for the curator multisig up until a few months ago. So in the aftermath, did you continue to work at [Slock.it](https://slock.it/)?

**[1:50:06] Bob Summerwill:** Right.

**[1:50:06] Griff Green:** I did, I did. Well, they started like, okay, we need to pivot to IoT and start working with corporations. And so we had some meetings with, was it RWE? I think it's the German power company.

**[1:50:26] Bob Summerwill:** Yeah, yeah. That was the charging car, charging thing.

**[1:50:31] Griff Green:** Exactly. And so then I had to wear a collared shirt and slacks and go to an office meeting. [Christoph](/people/christoph-jentzsch/) and [Stephan](/people/stephan-tual/), they weren't happy that I took off my shoes. I just didn't have the shoes. I wasn't wearing shoes all the time. They made me wear shoes. I hate shoes. So anyway, that lasted for about two weeks. I was out. I quit.

**[1:50:59] Bob Summerwill:** Right. It was not a fit there.

**[1:51:01] Griff Green:** I mean, it was kind of fun. I do love renewable energy things.

**[1:51:05] Bob Summerwill:** Yeah.

**[1:51:06] Griff Green:** But the corporate environment. I had been out for seven years at that point. I wasn't going back.

**[1:51:14] Bob Summerwill:** No, no. Couldn't do it. I guess especially in Germany as well. They're going to be very straight laced and very serious.

**[1:51:24] Griff Green:** Absolutely. It was more corporate than my engineering job at SNC-Lavalin, which is a giant Canadian corporation. I could sit on a yoga ball with no shoes on while I'm at my computer there. Not with RWE in Germany.

**[1:51:41] Bob Summerwill:** No, no. So here we are still in 2016, still 10 years back. So what happened next in the Griff Green story?

<h3 id="etc-recovery-and-unclaimed-funds">ETC recovery and unclaimed funds</h3>

**[1:51:52] Griff Green:** Well, I mean, we still had to deal with the ETC stuff, right. So when we eventually had... so I quit [Slock.it](https://slock.it/) and it was just the White Hat group. So it was me, Jordi, [Lefteris](/people/lefteris-karapetsas/) and Barry Whitehat and a few other people. I had only known [Lefteris](/people/lefteris-karapetsas/) actually personally, in person.

And then when the ETC thing happened, we started getting letters from lawyers, right. Saying we needed to, we needed to reward these DAO token holders with the ETC and different letters said different things.

**[1:52:33] Bob Summerwill:** Right?

**[1:52:34] Griff Green:** So when lawyers send you letters that conflict with each other, we got three different letters that all said different things from different lawyers. We needed a legal solution. And so we're talking on the phone and we're like, okay, let's, we need to all fly to Switzerland. Because Jean from [Bity](https://bity.com/) who did DAO Link, he said, hey, I got a solution. We could start a Swiss entity. I have one already started. The Swiss entity could receive the ETC, not you guys. So your houses aren't at risk if you get sued. And then we can manage it from this Swiss entity.

So we all flew to Switzerland. I met Jordi for the first time in the Swiss airport, fleeing for legal protection like 12 hours later, unexpected, which was really funny. And then we started figuring out what to do with the ETC.

And at this point, so this is...

**[1:53:37] Bob Summerwill:** ETC that you've white-hatted out. That you've attacked the ETC side.

**[1:53:44] Griff Green:** The hacker ended up with 30% of [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) and we ended up with about 70%.

**[1:53:49] Bob Summerwill:** Right.

**[1:53:50] Griff Green:** So that meant we had about 10% of all [Ethereum Classic](https://ethereumclassic.org/) in existence. And we had to decide what to do with it. And so at that time I still didn't believe that [Ethereum Classic](https://ethereumclassic.org/) would survive the market making situation.

**[1:54:06] Bob Summerwill:** Right. Yep.

**[1:54:07] Griff Green:** Had no idea how well funded those Bitcoiners are. I know you like to keep the ETC love there. But I felt very betrayed by that section of the community at the time. So yeah, I didn't realize how well capitalized they were.

So we decided at first that we would, since [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) token holders put Ether in, we would sell all the ETC and actually get Ethereum back and send them Ether. So we went to, we kind of did some, at the time block explorers weren't very good for ETC. So we did some mixing and moved the money using internal transactions that were difficult to parse to different addresses that no one knew about. And then we set up exchange accounts with [OKX](https://www.okx.com/), [Kraken](https://www.kraken.com/) and all these things.

**[1:55:04] Bob Summerwill:** So a bunch more had listed by that point.

**[1:55:07] Griff Green:** Yeah, exactly. And then we actually built a whole system where you could push a button and it would sell proportionally on all the exchanges to bring it to a specific price.

**[1:55:21] Bob Summerwill:** Right, right. Okay.

**[1:55:23] Griff Green:** And so we did that. We launched it and we pushed the button and we sold. And then, but it did sell on [Poloniex](https://poloniex.com/), which was...

**[1:55:33] Bob Summerwill:** Did they freeze it? Yes, exactly.

**[1:55:36] Griff Green:** So when we actually pushed the button, it sold on [Kraken](https://www.kraken.com/), it sold on [Bittrex](https://en.wikipedia.org/wiki/Bittrex) and I can't remember the other exchanges. We had at least four exchanges, maybe more, but it didn't sell on [Poloniex](https://poloniex.com/).

**[1:55:49] Bob Summerwill:** Right.

**[1:55:50] Griff Green:** Because what we later found out was that when we sell so much ETC there, there was actually an overflow bug.

**[1:55:58] Bob Summerwill:** Right.

**[1:55:58] Griff Green:** On their deposits.

**[1:55:59] Bob Summerwill:** Oh, wow.

**[1:56:00] Griff Green:** And so it would have worked if we didn't run into a bug.

**[1:56:03] Bob Summerwill:** I see.

**[1:56:04] Griff Green:** And so once they found the bug...

**[1:56:06] Bob Summerwill:** And then they're looking, what's going on with this?

**[1:56:09] Griff Green:** So it was funny because they fixed the bug and the deposit went through.

**[1:56:12] Bob Summerwill:** Yeah.

**[1:56:13] Griff Green:** And then we thought we were good, so we hit the button to sell.

**[1:56:16] Bob Summerwill:** Yeah.

**[1:56:16] Griff Green:** And it didn't sell on [Poloniex](https://poloniex.com/), but it did sell everywhere else. And so then [Poloniex](https://poloniex.com/) exposed us and then they started talking to the other guys and [Kraken](https://www.kraken.com/) froze us. We were able to withdraw funds out of [Bittrex](https://en.wikipedia.org/wiki/Bittrex) and then it turned out that, well, after talking to more lawyers and stuff, we should really just give everyone the ETC back.

**[1:56:43] Bob Summerwill:** Yeah.

**[1:56:44] Griff Green:** And so then we wrote a new withdrawal contract that gave DAO token holders at the time of the hard fork the ability to claim ETC.

**[1:56:52] Bob Summerwill:** Right.

**[1:56:53] Griff Green:** A proportional ETC to their holdings.

**[1:56:56] Bob Summerwill:** This. Was this out of the amount that hadn't gone through all that mixing or did you convert back to ETC?

**[1:57:04] Griff Green:** Yep, we converted back to ETC and we ended up with more ETC than we originally had.

**[1:57:10] Bob Summerwill:** Because Ether moved in the gap.

**[1:57:13] Griff Green:** Yeah, well, we bought Ether, stablecoins, [Bitcoin](https://bitcoin.org/), we bought diversity. We used all the ETC markets.

**[1:57:20] Bob Summerwill:** Right.

**[1:57:20] Griff Green:** So we didn't get arbitraged. We were going to convert it all back to Ether, but because there was a stablecoin market, there was all these markets, we ended up with a basket of currencies.

**[1:57:33] Bob Summerwill:** Right.

**[1:57:33] Griff Green:** And we were able to convert it for more ETC than we had originally.

**[1:57:38] Bob Summerwill:** And did [Poloniex](https://poloniex.com/) and [Kraken](https://www.kraken.com/) unfreeze in the end?

**[1:57:42] Griff Green:** So not directly. What we did is we built the contract in a way where they could deposit themselves to the contract. So the exchanges sent ETC directly to the deposit contract.

**[1:57:54] Bob Summerwill:** Okay. They're not giving back to you shady guys, but they'll stick it in a contract that we know is going to the holders.

**[1:58:02] Griff Green:** Exactly. But yeah, that's the cool stuff you can do with these currencies. And all that ETC is still there. 15% of the original total is still left unclaimed.

**[1:58:14] Bob Summerwill:** Right.

**[1:58:15] Griff Green:** So that's like, probably about 1% of ETC in existence somewhere like that still in that contract.

**[1:58:25] Bob Summerwill:** Is that like the DAO is back, ETC-able?

**[1:58:29] Griff Green:** I mean, the White Hat group is not interested. We'll see over time. Maybe the White Hat group will be interested in donating those funds or doing something with it, but I doubt it. That crew is especially conservative and doesn't have anything to really gain by donating it.

**[1:58:51] Bob Summerwill:** So just stuck forever I think.

**[1:58:55] Griff Green:** I think that's likely. Because yeah, in the end we had no legal entity. Well, actually I guess we had a Swiss legal entity. I have to look at that. But yeah, we didn't really have a good solution for making this work.

**[1:59:12] Bob Summerwill:** I mean, it's funny so much later that you still got people that have never claimed. Like, were you really rich and this was nothing to you or...

**[1:59:26] Griff Green:** I think it's just...

**[1:59:27] Bob Summerwill:** They're just unaware.

**[1:59:29] Griff Green:** I mean, at this point, I think it's mostly that. Unaware of the possibility or they weren't really connected to the crypto space. They bought a bunch and then they sold it before the, after the hack took the loss and it was just whatever. Didn't realize that these other things could happen. Also there's exchange accounts. There's certain groups that maybe they even know they have it, but it didn't make sense legally for them to claim at the time. And people change hands, things get lost, things get forgotten. There's just a lot of... it's a really interesting thing to try to recover money for people. It's very difficult.

**[2:00:22] Bob Summerwill:** I mean, you've still got people who haven't claimed their ETH from the crowd sale even.

**[2:00:28] Griff Green:** Oh, yeah, yeah. Wow.

**[2:00:31] Bob Summerwill:** It's like, oh, I've got my whatever my JSON file or whatever it was at the start, but they never claimed their tokens from 12 years ago.

**[2:00:44] Griff Green:** Wow. And they still can.

**[2:00:47] Bob Summerwill:** If they've got the files.

**[2:00:51] Griff Green:** But that's the thing. They probably lost the files.

**[2:00:53] Bob Summerwill:** Maybe. Maybe.

**[2:00:54] Griff Green:** Yeah. I mean, or died. People die. And you think they're recovering. It's a tough... money just gets lost. And in some jurisdictions, abandoned funds legally need to go back to the state.

**[2:01:15] Bob Summerwill:** Right, right. So. And I mean, so you've continued to process and help people with refunds, right, all this time?

**[2:01:25] Griff Green:** Absolutely.

**[2:01:26] Bob Summerwill:** I mean, so prior to [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) revival, how frequently would you say people have been contacting you? Last few years.

**[2:01:36] Griff Green:** Last few years? Not very often. Maybe two or three a year. Where I help someone get their DAO tokens out or extra balance or, there's a few different recovery places where they could have funds. The ETC obviously is the hardest one for people to figure out. So I usually have to help people get their ETC back and I'd say two or three times a year.

**[2:02:00] Bob Summerwill:** Right.

**[2:02:01] Griff Green:** Right now it's more. But now what's great is I work with, there's all these bounty hunters that are DMing people. Hey, you have old money here, you have money here. So now there's a few guys that are doing that for extra balance withdrawals. Right now I think we got something like 220 Ether claimed.

**[2:02:21] Bob Summerwill:** Right.

**[2:02:21] Griff Green:** Since we brought [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) back.

**[2:02:23] Bob Summerwill:** Right. And I'm sure with AI, it's all just going to continue to accelerate. AI has a ton of data. Just work out what shit's still hanging out.

**[2:02:35] Griff Green:** Yeah, exactly.

**[2:04:20] Bob Summerwill:** Yeah. I'm thinking there's maybe just sort of two more questions. Which would be like, can you tell me about other projects that you've been doing since? And then we can end with [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)), return of [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)).

**[2:04:35] Griff Green:** Yeah.

**[2:04:48] Bob Summerwill:** So 2016, that was a busy year for you. And as that kind of ramped down, what was the next phase? What sort of projects have you been working on since?

<h3 id="giveth-dappnode-and-public-goods">Giveth, DAppNode, and public goods</h3>

**[2:05:04] Griff Green:** Well, so Jordi and I became very good friends. Old war buddies. And so we started [Giveth](https://giveth.io/) together in 2016.

**[2:05:13] Bob Summerwill:** Oh, right, right.

**[2:05:15] Griff Green:** [Giveth](https://giveth.io/) was actually like, quickly, we did that pretty quickly. The theory was that there was kind of two directions of it. Jordi is a Catalan freedom fighter. And really in Catalonia, they've always wanted to build something better than governments or a different kind of governance solution. That's why he was so excited about liquid democracy and finding other ways that we could govern Catalonia. And I was a big fan of nonprofits and seeing nonprofits as the free market solution to governments. When governments fail to provide value that society demands, people start nonprofits.

**[2:05:56] Bob Summerwill:** Right.

**[2:05:57] Griff Green:** And so the idea was, hey, well maybe we could DAOify the nonprofit space. And if we could figure out a model where DAOs and nonprofits could have tokens and be governed by supply and demand. The same way [Bitcoin](https://bitcoin.org/) and Ethereum, they're funded through supply and demand. If we could allow nonprofits to issue a currency and create demand for the currency, and then govern themselves by token, all through DAOs.

**[2:06:28] Bob Summerwill:** Right.

**[2:06:29] Griff Green:** This could actually be the replacement for governments. And also, governments are going to attack nonprofit DAOs. At the same time, if we're trying to use... yeah, really mean ones and we're trying... but also we stay in the nonprofit space. We don't try to do the roads, we're trying to help the homeless. We're doing open source development. Stuff that the government doesn't do, nonprofits generally do. What if we can do better than nonprofits, then eventually we could do better than governments. So that's why we founded [Giveth](https://giveth.io/).

And so then we built the MiniMe token contract, which was used by a lot of projects. We built the Vaults, which I wish was used by more projects. Would have stopped a lot of hacks. We built milestone trackers and DAO tooling and we built the donation platform. And then we also founded [DAppNode](https://dappnode.io/).

**[2:07:26] Bob Summerwill:** Right. Yep.

**[2:07:26] Griff Green:** And [DAppNode](https://dappnode.io/) makes it really easy to run your own node. Or really it's like your own personal server. And what's cool is we built the infrastructure so you could share access to your personal server with VPNs.

**[2:07:38] Bob Summerwill:** Yeah.

**[2:07:39] Griff Green:** And so [Giveth](https://giveth.io/) and [DAppNode](https://dappnode.io/) were kind of our first babies. And then eventually Jordi wanted to launch an identity platform. So we launched [iden3](https://iden3.io/).

**[2:07:56] Bob Summerwill:** Okay.

**[2:07:56] Griff Green:** It was more him. I figured we had [DAppNode](https://dappnode.io/) and [Giveth](https://giveth.io/) and so I stuck mostly with those two. And then he went on [iden3](https://iden3.io/) with another crew, but I was also involved basically until he decided to start building rollups. And then like, there's other people building rollups. We don't need to build rollups. That doesn't solve any major problems.

**[2:08:18] Bob Summerwill:** Right?

**[2:08:19] Griff Green:** I mean, it does, of course, but there's other people doing that. There's no one doing identity. There's no one doing decentralized hardware. Don't take away from identity.

**[2:08:32] Bob Summerwill:** Yeah.

**[2:08:33] Griff Green:** That was my personal opinion at the time. And I really loved [iden3](https://iden3.io/)'s identity solution. And he was going to have to deprioritize that to do rollups. Which is great. In the end he made the right choice because he started making projects that made money, which is a really good idea. I was so convinced that we could find a way to create economic systems of value around value that's generated in the public space for public benefit. And I still firmly believe that this technology's main value add to the world will be unlocking that potential.

**[2:09:21] Bob Summerwill:** Right.

**[2:09:21] Griff Green:** Where nonprofits create value. Communities have value embedded in them.

**[2:09:28] Bob Summerwill:** Yes.

**[2:09:29] Griff Green:** But it's qualitative.

**[2:09:30] Bob Summerwill:** Right.

**[2:09:32] Griff Green:** And humans are messy and we haven't figured out exactly how to quantify qualitative value without also having somewhat of a destruction of the quality of the qualitative value. It's messy when you start throwing money in relationships.

**[2:09:56] Bob Summerwill:** Yeah, right.

**[2:09:56] Griff Green:** And a lot of the stuff that nonprofits do and that families do, it's gift economy, it's a different type of economic system. And I've always thought that there's some place, some role for blockchain technology to enter the gift economy and kind of bridge the value that we have in humans in our relationships where we give to each other, to bridge that into some kind of quantifiable value so it can be appreciated.

**[2:10:29] Bob Summerwill:** Right.

**[2:10:30] Griff Green:** And so I also started a [Burning Man](https://burningman.org/) camp. Decentral.

**[2:10:34] Bob Summerwill:** Right. And how long has that been running?

**[2:10:38] Griff Green:** 2017 till last year. Last year was the last year for me though.

**[2:10:42] Bob Summerwill:** Okay. Thank you. So much work.

**[2:10:44] Griff Green:** Yeah. I mean, I'll go to [Burning Man](https://burningman.org/), but I'm leaving Decentral. Decentral is done. I'm retiring the project. But we had many good years at [Burning Man](https://burningman.org/) with the main purpose of the bridging, exactly what I'm saying. Which is, [Burning Man](https://burningman.org/) is probably the best concrete example of the gift economy outside of families. I mean, obviously everyone is born. The default economy for humans is the gift economy.

**[2:11:13] Bob Summerwill:** Right.

**[2:11:14] Griff Green:** Your mom doesn't charge you, you're not racking up a debt for all the breast milk. And you don't go to your mom's house and give her 20 bucks for dinner. That would be rude, actually.

**[2:11:26] Bob Summerwill:** Yeah.

**[2:11:27] Griff Green:** So we all live in the gift economy and we don't see that as an economy, but it really is. And then there's these other economies in other systems. So we live in kind of a poly-economic world, but we don't think about it like that.

**[2:11:44] Bob Summerwill:** No.

**[2:11:45] Griff Green:** And I wanted to get burners, [Burning Man](https://burningman.org/) culture to learn about crypto. And become experts in these tools or at least excited about the power that these tools have. And I wanted the crypto people to get excited about, to witness other experiments in other types of economic systems.

**[2:12:10] Bob Summerwill:** Right, right.

**[2:12:11] Griff Green:** And [Burning Man](https://burningman.org/) is one of the coolest, biggest ones. So that's why Decentral was born and why I've been maintaining it for this long. But in 2025, I don't think it can have the impact for the cost that it really takes to run a [Burning Man](https://burningman.org/) camp. The impact that I could have by influencing early crypto people to go to [Burning Man](https://burningman.org/) and experience these economics, in 2025, it won't move the space in any serious direction. So that's why I'm retiring.

**[2:12:56] Bob Summerwill:** Absolutely, absolutely. So then something which has happened just very recently is...

**[2:13:05] Griff Green:** [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) is back. [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) is back.

**[2:13:07] Bob Summerwill:** What's the story?

<h3 id="the-dao-security-fund">The DAO Security Fund</h3>

**[2:13:09] Griff Green:** Yeah. So I had lots of other projects in the middle there, but none of them were too popular. But [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) actually had a funny situation where we made these contracts. So [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) had a few different withdrawal contracts. There's the main one from the hard fork. But then the hard fork solved the problem for people who had DAO tokens to claim their share of the whole of [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)) tokens represented.

**[2:13:39] Bob Summerwill:** Right.

**[2:13:39] Griff Green:** But 3% of the money from the hard fork couldn't really be claimed by DAO token holders. The people who put that money there, they didn't have tokens to represent their claim. And so we made other contracts.

**[2:13:52] Bob Summerwill:** Right.

**[2:13:52] Griff Green:** And the other contracts were slightly more complicated. They had multisigs involved. And in 2025, in October 2025, [Balancer](https://balancer.fi/) was hacked.

**[2:14:06] Bob Summerwill:** Right.

**[2:14:07] Griff Green:** After five years of hundreds of millions of dollars in these contracts, everyone felt was safe. Now with AI risk, these old contracts are not safe. And who's looking at the Solidity libraries or these Solidity compilers from Solidity 0.3.25 or whatever, 0.3.13. I can't remember anymore. But the risk of the funds that were in the contracts from the edge cases, that 3%, were too high, especially given the amount of funds.

**[2:14:46] Bob Summerwill:** Right.

**[2:14:46] Griff Green:** In October it was well over $300 million in these contracts that were governed by a 3 of 6 multisig of volunteers.

**[2:14:56] Bob Summerwill:** Right.

**[2:14:57] Griff Green:** It took me about two months to get a hold of every multisig holder. They had, some of them, a couple of them had exited crypto completely.

**[2:15:07] Bob Summerwill:** Right.

**[2:15:08] Griff Green:** So it was pretty obvious because, and the other thing is that this 3 of 6 multisig, these keys have been exposed for 10 years.

**[2:15:21] Bob Summerwill:** Right. Right.

**[2:15:22] Griff Green:** I mean people were good with their personal security, but it's hard to know.

**[2:15:28] Bob Summerwill:** Yeah.

**[2:15:28] Griff Green:** So at the very least we needed a key rotation and standard practice for this sort of thing is a 4 of 7 multisig minimum.

**[2:15:37] Bob Summerwill:** Right.

**[2:15:38] Griff Green:** And so we, but there was no money to do anything. Why is anyone going to spend their time doing this right now? Of course I'm going to spend my time doing it because I'm not very money motivated.

**[2:15:49] Bob Summerwill:** Yes.

**[2:15:50] Griff Green:** I mean, I need to figure out how to be more money motivated. But so we figured out that we could stake the Ether, keep claims open. So everyone can still claim their money. Stake the Ether and create a more secure environment. Use a portion of the staking rewards to just do more professional security.

**[2:16:14] Bob Summerwill:** Right.

**[2:16:15] Griff Green:** $300 million should demand that. And then use the rest to actually donate to support Ethereum security. Which, and we're doing that because when I wrote the blog post around how we're going to use, do the processing of edge case funds, I said if it's not claimed by 2017, then we're donating it to security projects.

**[2:16:41] Bob Summerwill:** Right.

**[2:16:43] Griff Green:** We never did until the AI risk came up. And now, well, I have this amazing organization that I think will address the most important issue stopping crypto from actually expanding beyond where we are. Which is it's not safe enough to use.

**[2:16:59] Bob Summerwill:** Yeah.

**[2:17:00] Griff Green:** For most people.

**[2:17:02] Bob Summerwill:** So new set of, I guess if you call it the Security Council.

**[2:17:07] Griff Green:** Yeah. We're curators. In the end we are on the curator multisig. So the old curator multisig was probably the thing we're most worried about having bugs in it of all the contracts, because there's the token contract, there's the withdrawal contracts. But the curator multisig is the most complex and has known bugs in it.

**[2:17:32] Bob Summerwill:** Right.

**[2:17:32] Griff Green:** So there could be more. And so we made that a 1 of 1 multisig.

**[2:17:38] Bob Summerwill:** Okay.

**[2:17:38] Griff Green:** Owned by a nested [Safe](https://safe.global/).

**[2:17:40] Bob Summerwill:** Okay.

**[2:17:41] Griff Green:** That has two other multisigs managing it. And so I consider everybody who's on these two multisigs as curators.

**[2:17:49] Bob Summerwill:** Right?

**[2:17:49] Griff Green:** Yeah. And so now we have as curators we have [Vitalik](/people/vitalik-buterin/), me, Jordi Baylina, Taylor Monahan, PCS from [SEAL 911](https://www.securityalliance.org/), [Alex Van de Sande](/people/alex-van-de-sande/), and [Lefteris Karapetsas](/people/lefteris-karapetsas/) from...

**[2:18:03] Bob Summerwill:** There we go.

**[2:18:04] Griff Green:** Yeah.

**[2:18:05] Bob Summerwill:** And you're going to do some good.

**[2:18:06] Griff Green:** Yeah, we're going to fund Ethereum security. We have some really cool initiatives right now. Our main priority, our first priority and primary goal is to fund the projects that will make Ethereum safer than the banks. It has the ability, we actually have all the technical tools to make Ethereum accounts safer than bank accounts.

**[2:18:31] Bob Summerwill:** Right.

**[2:18:31] Griff Green:** Because they can be non-custodial, they can be just as safe as the banks have all the protections without the fact that banks could just take money.

**[2:18:40] Bob Summerwill:** Right.

**[2:18:41] Griff Green:** We could do that. We haven't, but we need to. And then our second priority is actually to support the DAO ecosystem. So it's the [DAO Security Fund](https://blog.thedao.fund/).

**[2:18:55] Bob Summerwill:** Right.

**[2:18:55] Griff Green:** And so what we're doing is we're doing bottom up funding of security projects. So all the revenue from staking that we get that isn't allocated into securing the system is going to be distributed by the community. We are collecting the top security experts in the space, giving them each security badges. So they're going to be our primary voting block. 200 security experts, okay. And we already accepted 40 and they're all the big names. It's being very lovingly adopted. We also are going to run rounds. So we have our first round. It's a million dollar quadratic funding round.

**[2:19:39] Bob Summerwill:** Okay.

**[2:19:40] Griff Green:** We'll have hundreds of cool projects. And actually our first KPI for that round is project discovery. It's not even about distributing a million dollars.

**[2:19:48] Bob Summerwill:** Yeah, yeah.

**[2:19:49] Griff Green:** Although the million dollars makes it the largest quadratic funding round ever to happen.

**[2:19:55] Bob Summerwill:** Right.

**[2:19:56] Griff Green:** But the major thing is there's so many cool projects out there that no one knows about.

**[2:20:01] Bob Summerwill:** Right.

**[2:20:02] Griff Green:** And if all the security people are looking at these projects, finding cool tools that they can integrate into their processes, we'll all be so much safer. So really excited about that. And then to support the DAO space, all of our rounds will be run by different operators.

**[2:20:23] Bob Summerwill:** Right.

**[2:20:24] Griff Green:** And so other DAO tooling providers, they can apply, they can say, hey, here's the experiment I want to do for funding public goods, distributing voices, getting more than 200 people to vote on how to fund things, and then we will pay them to use their tool and distribute funds to the security projects.

**[2:20:46] Bob Summerwill:** Okay.

**[2:20:47] Griff Green:** Yeah. So very exciting process. [Giveth](https://giveth.io/) and [DAppNode](https://dappnode.io/) are involved. [DAppNode](https://dappnode.io/)'s doing the staking. [Giveth](https://giveth.io/) is doing all DAO operations.

And so it's really critical for those projects because it's really hard to keep projects alive these days. And there's a lack of funds. So the fact that they can be these very focused projects that are trying to find valuable benefit to the Ethereum space, they get to provide services to [The DAO](https://en.wikipedia.org/wiki/The_DAO_(organization)), actually.

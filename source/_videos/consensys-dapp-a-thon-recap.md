---
title: "ConsenSys dApp-a-thon Recap"
date: 2015-08-08
description: "A recap video of the ConsenSys dApp-a-thon, one of the first Ethereum hackathons held around the time of Ethereum's mainnet launch in 2015."
embed:
  url: https://www.youtube.com/embed/TJBHTT88I8k
---

A recap video of the ConsenSys dApp-a-thon, one of the first Ethereum hackathons held around the time of Ethereum's mainnet launch in July/August 2015.

## Video Details

Duration: 14:17

This hackathon was mentioned in Episode 1 of the Early Days of Ethereum video series, where the hosts discussed organizing one of the first Ethereum hackathons at the ConsenSys Bogart Street office in Brooklyn, New York, timed around the Ethereum mainnet launch.

## Transcript

**[00:27] SPEAKER_00:** What's your name and title?

**[00:29] SPEAKER_01:** I am Joseph Lubin. I'm one of the founders of the Ethereum project. Also founder at Consensus Systems or ConsenSys, which is a company that builds decentralized applications and tools for the Ethereum ecosystem.

**[00:42] SPEAKER_02:** Hi, I'm Victor Wong. I'm one of the members and founders of the BlockApps team.

**[00:47] SPEAKER_00:** What is BlockApps?

**[00:49] SPEAKER_02:** BlockApps is a system that makes making decentralized applications as easy as building a web app. We just want to make this simple for developers so they can start writing code and just making sure it works.

**[01:02] SPEAKER_01:** It's a deployment solution for Ethereum that allows say web developers to plug in without getting really deep into the guts of Ethereum. And for certain applications you'll need to really get into those guts. But if you want to do something over a weekend and you know Ajax, you should be able to build an application on BlockApps in that room.

**[01:22] SPEAKER_03:** My name is Sam Cassatt, and I am the chief strategy officer of ConsenSys.

**[01:28] SPEAKER_00:** Can you tell me about the IDE?

**[01:30] SPEAKER_03:** So the EtherCamp IDE right now represents the most advanced way to develop the Ethereum platform. It provides a way to, through any browser, have a web-based interface that has all the normal features you would expect of an IDE. Autocomplete, debugging, variable inspection, multiple panes. It basically just makes it easy and familiar to develop Ethereum applications. It also provides a sandbox environment that is an Ubuntu command line. So it's very familiar. And then once you're satisfied with your code, you can deploy it automatically to the Ethereum network from within the IDE.

**[02:08] SPEAKER_00:** What is the purpose of the Light Wallet?

**[02:10] SPEAKER_03:** The purpose of the Light Wallet is to allow the user to basically access the Ethereum network from any web browser but at the same time have control over their own private keys.

**[02:22] SPEAKER_04:** My name is Michael Lu. I go to Georgia Tech. I'm going to be a senior next year. I study computer science there.

**[02:30] SPEAKER_05:** My name is Chinda, Chinda or Chinda Squared. And I go to Massachusetts Institute of Technology, MIT. I'm majoring in computer science, minoring in political science.

**[02:42] SPEAKER_06:** I'm Zach Furlan. I grew up in the Boston area and go to school in Northeastern.

**[02:48] SPEAKER_07:** I'm Joel and I'm from Gothenburg, Sweden. There I study computer science at Chalmers University of Technology.

**[02:56] SPEAKER_08:** My name is Connor, or as Andrew likes to call me, Kanye. I'm going to be a junior at Middlebury College. I'm a computer science and economics double major.

**[03:06] SPEAKER_09:** My name is Kevin, I am a soon to be sophomore at UC, University of California Berkeley, majoring in computer science.

**[03:15] SPEAKER_10:** My name is Ming Zhou. I'm a rising senior to Columbia Engineering School. I'm studying all previous research there.

**[03:24] SPEAKER_11:** I'm Mike, I also go to Columbia, I study computer science at the School of General Studies.

**[03:31] SPEAKER_12:** Hello, I'm Michael. I created Lazarus. It is a deadman switch, releases sensitive information to the public if you're under duress. So here's the main page, here's the submission page. You enter the seed, you enter your password and then it selects your address from a dropdown menu. Once you click trigger it initializes the protocol and starts a deadman switch. Here's the informations page. Clearing the trigger doesn't do anything but releasing it will. That's why it's called deadman switch. And then once you release it, everybody who you directed it the sensitive information to will receive the data.

**[04:10] SPEAKER_07:** So at the hackathon we built a dapp called Lost Scavengers where you can add challenges that bind to a location. So first we can create a challenge and we enter a secret key that has to be entered in order to win the challenge. And we could also add a location where the secret is supposed to be hidden. So now we have created a challenge, we go over to the list of challenges and we find our challenge here at the top. Since we know the solution we can just put it in, and here we show up as the winner. So the idea is to hide secrets in the real world instead of putting them right here.

**[04:48] SPEAKER_13:** This is the team Road Warriors project. It's called Movie Zone. It automatically arbitrages the ideal time to attend an event or an appointment, in this case seeing a movie with your friends.

**[05:02] SPEAKER_14:** During the hackathon we built EtherDice which is a gambling platform built on Ethereum where it allows the user to send ether to any table, with provably fair odds and a fee where they'll either get paid out based off those odds or they'll lose their money to the table. And as you can see here we have a quick demo, our user will make a bet and you'll see the resulting change both in the table funds and in the user's wallet funds.

**[05:30] SPEAKER_15:** For the hackathon I built Firecracker, which is a contract that manages people submitting hashes that can then be cracked by brute force. So then when someone else submits the data that when hashed will equal the hash submitted. Then you get the bounty. And so I can enter, I'm using Light Wallet, so I enter in a seed and I put in some data. So this would be a hash and a bounty that I would pay out for it and then submit it. And then I give people this contract address which they can use to examine the data storage and you can see whether or not a hash is already solved.

**[06:08] SPEAKER_16:** As for Loyalty Wallet, our app that we built, it's a paywall protocol that allows a user to purchase anything from a content provider and automatically sign up to that content provider's loyalty program anonymously. So this makes use of a content provider's master smart contract, which has the ability to create other smart contracts that uniquely identify a user and their purchase history. So you're trying to basically bypass the whole email password sign up, as well as the trust that's inherently bound to a centralized server. When a purchase is made, a login of sorts is created by the receipt of the purchase on the blockchain. So the user may now use that forever as a means to earn rewards for future purchases, all while giving up no personally identifying information whatsoever.

You would elect to pay. You get a dialog, sort of like a Twitter card or a Google card. To get this you would have like a mobile wallet on your phone that you can scan or if it's on your actual computer, you can click it and it would take you to a browser extension or what have you. So here I'm going to click and then as you can see, it brings me to my cryptocurrency wallet. And of course up comes the New York Times card prompting me to pay and I will enter in my password. And what this is actually doing is signing a transaction that again will submit to that unique identifying contract which is listened to by the master. Click purchase and then boom, we are in.

**[07:32] SPEAKER_00:** What does Ethereum mean to you?

**[07:35] SPEAKER_04:** Ethereum is. So Ethereum is basically, I think for me is Ethereum is the real transition into infinite edge, kind of.

**[07:46] SPEAKER_17:** So this is an interesting question. Ethereum is for once a blockchain. It's like Bitcoin. It has some serious improvements over Bitcoin that you can just do things that you really can't or are very painful on Bitcoin.

**[08:02] SPEAKER_05:** Ethereum means to me that we can build applications for places where trust is an issue and make it seamless and incentivize people to really work together.

**[08:14] SPEAKER_01:** Internet for the sharing economy and backbone for Internet of Things.

**[08:20] SPEAKER_03:** What I think Ethereum represents is, I don't know if that's the power of Ethereum, is universal disintermediation. It basically takes four fundamental building blocks. A cryptographic token, a consensus formation algorithm, peer-to-peer networking system and a computationally complete virtual machine and enables any sort of software developer to use tools that they're very familiar with with already to build decentralized applications. So it'll enable both power and information to become de-siloed.

**[08:55] SPEAKER_18:** What Ethereum gives us is a new class of fundamental operations that we can do on the Internet. We're adding a new class of thing that you can do on the Internet which is have arbitrarily complex transactions trustlessly.

**[09:12] SPEAKER_19:** When people talk about changing the world, I see it through the eyes of a technologist, through the lens of disruption. So I see Ethereum as a disruptive force, in the way that our economy works that will transcend borders, that transcends politics, it transcends whims and corruption.

**[09:32] SPEAKER_20:** Ethereum to me is the next evolution in the process of technology where our agreements will be solidified by code. The Internet is to communications as Ethereum is to agreements. It's a whole new territory that hasn't been fully explored yet.

**[09:50] SPEAKER_01:** First it's going to basically replace the existing Internet and then it's going to augment the physical world in interesting ways.

**[09:58] SPEAKER_00:** What's the nerdiest thing you've ever done?

**[10:01] SPEAKER_01:** I don't do nerdy things. My idea of a good time nowadays is basically sitting up with a good research paper.

**[10:10] SPEAKER_21:** I competed on an advanced Dungeons and Dragons team at GenCon.

**[10:16] SPEAKER_05:** I know I've skipped out on a lot of like various social activities to sit at home with like Judith Butler and read Gender Trouble over again.

**[10:26] SPEAKER_00:** Do you know any math jokes?

**[10:28] SPEAKER_05:** I do. Well, you know, that's tough to do on the spot and you kind of. I'd have to explain them. I don't know, I don't have a good one queued up.

**[10:38] SPEAKER_07:** The nerdiest thing I've ever done is to solve a four-dimensional Rubik's cube.

**[10:44] SPEAKER_08:** I would play a lot of Call of Duty and I would spin out like recording clips and making montages and editing them and uploading them to YouTube.

**[10:54] SPEAKER_22:** I built a Bitcoin accepting Keurig machine. Hey, Bitcoin, it makes me coffee.

**[11:02] SPEAKER_04:** In high school I was the only person in the history of an event we had called the Zombie Apocalypse Weekend to not only be the last human standing, but to survive the entire weekend. Maybe 30 hours.

**[11:18] SPEAKER_10:** World of Warcraft marathon.

**[11:22] SPEAKER_06:** Back in high school, I used to run kind of a side business where I jailbreak people's iPhones for them.

**[11:30] SPEAKER_09:** I read all the books that were possible in a third grade competition in the first year.

**[11:38] SPEAKER_00:** What's the nerdiest thing you've ever done?

**[11:40] SPEAKER_03:** Everything I do is nerdy, Sam.
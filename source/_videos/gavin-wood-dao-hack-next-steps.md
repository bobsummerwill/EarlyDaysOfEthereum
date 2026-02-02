---
title: "Gavin Wood on how $60M hack of DAO happened and what to do next"
date: 2016-06-21
author: "Dutch Blockchain Conference"
description: "Gavin Wood explains how the $60M DAO hack happened and what to do next, Dutch Blockchain Conference, June 21, 2016"
embed:
  url: https://www.youtube.com/embed/JzCGRtGyxvY
---

## Transcript

**[00:08] SPEAKER_00:** With me is Gavin Wood, he's a co-founder of Ethereum. Let me explain what, I'll try to explain what Ethereum does. It's a smart contract platform based on the blockchain technology. It has a cryptocurrency which is called Ether. It's much more than Bitcoin. It's different. Please explain.

**[00:30] SPEAKER_01:** Ether is different and Ethereum, the network that Ether sits on, is different, in that it can host other software. With other software you can do various bits of functionality that you can't for example achieve with Bitcoin. Examples of this sort of functionality are things like identity systems, things like insurance payouts based on certain outcomes, things like management of permissions for data, whether data is allowed to be accessed or not. And so in reality, Ethereum can manage all of these kinds of things based upon the notion of smart contracts. So smart contracts are these programs that sit on Ethereum and do these things, and in some sense they replicate some of the notions of real world contracts, but in the electronic and the digital space.

**[01:23] SPEAKER_00:** Okay, so what is the practical use of a smart contract? Give me an example please.

**[01:30] SPEAKER_01:** An example would be where a particular service is offered and payment is required for the service, but the payment can be guaranteed once the service is done. So for example, suppose we set up a sort of Uber, whereby what I say is, well, if my GPS coordinate changes to this GPS coordinate, which is say if I arrive at my destination, then whoever else's GPS coordinate accompanies me on that way would get some payout, perhaps 15 Ether or $15 worth of Ether. And that would be automated, which means that whoever gave me a lift would be guaranteed of being paid if and only if they delivered me to my destination.

**[02:14] SPEAKER_00:** That's a smart contract.

**[02:16] SPEAKER_01:** That could be done as well.

**[02:17] SPEAKER_00:** Okay. And it's getting bigger and bigger and bigger. Astronomical rise of percentage plus 1300% in the last year. Right. How do you explain that?

**[02:32] SPEAKER_01:** I think people are starting to realize that agreements between people, which is to say contracts, it's possible to digitize these and when you do digitize them, then there's an awful lot of potential opportunity opened. And now people are starting to understand that this opportunity exists and it's real. As they see applications being developed, and I think by seeing the applications developed, by seeing the pure developer hours put into the system, they're starting to realize that there's something there. And they want a share of it.

**[03:10] SPEAKER_00:** Give me some more examples of what is happening.

**[03:13] SPEAKER_01:** So one of the more interesting ones is something called a prediction market. So this is an idea that you can make predictions about the future and you can be paid if you bet on the right side. So it relies on a few things. Firstly, it relies on the notion of payment. So if I make a prediction, it's very important that I put real value in so I can pay into the market just as I can receive back from the market. So that has to be there. Also importantly is the idea that the truth eventually sort of comes out. Because if there's no way of determining whether I bet in the right way or the wrong way, there's no way of paying out based on that, is there? And secondly and thirdly, it must all be automated. So this prediction market must exist in an automated fashion so that whenever anybody uses it, it actually just works without anyone else having to actually make it work. Because ultimately you never really want to have to trust a particular third party in order to do this, much in the same way as with Bitcoin, you don't really want to have to trust the third party to make sure that you can actually remove your money.

**[04:20] SPEAKER_00:** It's just if we do business, it's just you and me.

**[04:23] SPEAKER_01:** That's right.

**[04:26] SPEAKER_00:** Okay. Now there's a problem with the Ethereum. Somehow 50 or 60 million dollars disappeared, right? What happened?

**[04:39] SPEAKER_01:** So there are a few things to explain about this. The first thing is that the problem isn't with Ethereum itself, but the problem is with one of these applications, with one of these smart contracts. So the smart contracts are not built into Ethereum. Ethereum exists sort of on a lower level and these software run on the higher level. So it's like saying, well, this website's broken, and it's not saying the same thing as the Internet's broken. So Ethereum's like the Internet, it just sort of works. But yes, one of the websites, as it were, that sits on Ethereum broke. This website was called The DAO, okay? Now The DAO was envisioned as some sort of mechanism so that people could pay in Ether and this Ether could be used to sponsor projects. And if the projects ended up becoming profitable, people would be able to make some of those profits back. And what happened was, due to a technical flaw in this, The DAO, in this piece of software, in this website that sits on top of Ethereum, someone was able to attack it and to drain about a third of the money that The DAO had managed to collect into a child DAO. So into a sort of, into a kind of an offspring of the same, the same sort of thing, but an offspring. Now, the reality is that the money is still sitting there. So we know precisely where it is. We can see it in the system. There's a balance. It's big. It's bigger than it should be.

**[05:58] SPEAKER_00:** But there's a different owner.

**[06:00] SPEAKER_01:** But there's a different owner. And at the moment, the owner is unable to withdraw it. So due to safeguards in The DAO, it sits at about 39 days before the owner can withdraw it. And so we have this time in order to see, to determine whether we're going to do something about it or whether we're just going to let it go.

**[06:18] SPEAKER_00:** The question is, who's right? It should be determined in the smart contract. So what went wrong in the smart contract?

**[06:28] SPEAKER_01:** So what effectively happened was, let's suppose you're the smart contract and I'm the attacker. What happened was that the attacker said to the smart contract, right, well, I want to do my own smart contract and I want you to give it the money.

**[06:44] SPEAKER_00:** Yeah.

**[06:45] SPEAKER_01:** So you say, okay, sure, let me just, I'll pass you the money into your, into your child, the one that's yours, your smart contract. And then I'll just update my records. And you say, oh, actually, before you update your records, I'm going to start again. I'm going to say, right, I'd like to withdraw my money into this child smart contract. And you say, oh, yeah, sure, I'll just put your money in the smart contract, and then I'll update my record. And then you say, oh, no, no, no, before you update your records, I want to do that. I want to take my money and put it in this. And so what it's doing is every time you're saying you're putting the money into the smart contract, it's waiting for the money to go in, but it's not waiting to allow you to update your records. Rather, it's interrupting it and then asking it again. And because you haven't updated your records yet, you still think that there's money that they can draw out. So it's a classic software engineering bug where the records were updated after and not before the money was given out.

**[07:44] SPEAKER_00:** I understand. So it is a hack. Yes. But this is terrible. This is an attack on the trust liability of the system. This is what everybody is afraid of.

**[07:58] SPEAKER_01:** So fundamentally it's an attack on The DAO, so on The DAO itself. So the notion that people are able to place money into this smart contract and the money will not go except by these rules, will not be used except by these rules. Yes, it's an attack on The DAO and it's an attack on the integrity of The DAO and it's using the fact that The DAO is a smart contract and that nobody can alter how it's interpreted. And if the interpretation, if this software is wrong, then the interpretation is wrong and people are understandably annoyed, understandably concerned that, hold on, where is this money being going now? The question really is what can we do about it?

**[08:42] SPEAKER_00:** Right, what can you do about it?

**[08:44] SPEAKER_01:** So the people behind the authors of The DAO, and I'd like to make it absolutely clear I had nothing to do with The DAO, I am a co-founder of Ethereum, the underlying level, I have nothing to do with The DAO. The authors of The DAO, they're powerless. In effect they're powerless, at least without the help of the community who maintain collectively the Ethereum ecosystem, the Ethereum machine, the Ethereum computer, the thing that this sits on. So the question is whether the community will do anything about it because it requires the community to be of one mind, to come together and form a consensus about what must be done before anything can be done.

**[09:28] SPEAKER_00:** But that's what you have to contract for.

**[09:30] SPEAKER_01:** So the contract provides a base like a default consensus. So as long as the community doesn't sort of intervene, as it were, as long as it doesn't form another different consensus, then everything is fine. But in principle the power lies with the people. If the people don't like the way the contract's operating, they have the power to change it.

**[09:50] SPEAKER_00:** Okay, could it be a clash between say the code and the contract?

**[09:58] SPEAKER_01:** So the clash is really between whether the people's expectations, both those who, obviously the ones that place money in The DAO, Ether in The DAO, and those who maintain the Ethereum network. So the stakeholders of Ethereum, it's really the clash is whether they, those people agree or disagree with the ramifications of the contract, which is to say giving the attacker this.

**[10:24] SPEAKER_00:** Yeah, probably they'll disagree.

**[10:25] SPEAKER_01:** What do you think at this point? At this point the jury's out and I think over the next day or two we're going to find out what the sentiment is of these stakeholders and whether they really want to do anything against it or not.

**[10:40] SPEAKER_00:** But this is an important case, right?

**[10:43] SPEAKER_01:** I think it's about the most important case in crypto economics since the birth of Bitcoin.

**[10:51] SPEAKER_00:** So what if this goes wrong? What does that mean?

**[10:54] SPEAKER_01:** What would you say is wrong?

**[10:56] SPEAKER_00:** It could go wrong if the 60, 50 or 60 million would not be recovered. Okay, so that would be wrong, right?

**[11:05] SPEAKER_01:** Well, this is the thing. So Ethereum is fundamentally a consensus network, which means right and wrong is determined by the will of the people, by the consensus that the people behind it decide. Now, in this instance, people really do have a decision. They can say, well, honestly, this contract had a bug, had a flaw, but it was nonetheless well defined. And the attacker, they did drain against people's expectations, but those expectations were flawed, just as the code was flawed, and the attacker is in some sense utilizing what was fair, this fair flaw that he found. So there is an argument to be made for the fact that the system is executing correctly. Now of course there's also the argument that, well, hold on, expectations, wide expectations were that this contract was going to do this and it doesn't do that. And so, I expect that it will be altered to do at least what I, what I think it's going to do, what I thought it was going to do.

**[12:04] SPEAKER_00:** But then you could say there's something wrong in the contract or in the code, which is about the same as the contract. Right? So what is the most important thing? The code or the contract?

**[12:20] SPEAKER_01:** So in this sense the contract is the code. So because it's a smart contract, it's defined only in terms of code.

**[12:29] SPEAKER_00:** But a contract should be written down in just plain language, right? So that you and I understand what we agree.

**[12:35] SPEAKER_01:** In the world of smart contracts, it's written down in computer code.

**[12:39] SPEAKER_00:** So that's where the clash is, right? This is where the problem occurs. We don't understand what we are signing for.

**[12:49] SPEAKER_01:** The signatures that were done were digital signatures, not any other kinds of signatures, of course. And what did those digital signatures mean? Well, you have to view it in the wider context of the system that they were submitted to, which is a very well defined smart contract execution system that will not be, well, will not easily be intervened with except by a consensus of the community. And it will execute the contract, the code, blindly. And that's what it did. And so in some sense the signatures give authority to the flaw and therefore to the attack.

**[13:33] SPEAKER_00:** Why did you invent the Ethereum? Why? What was the thought behind it? Was it making money or was it building a community? What was the idea behind it?

**[13:46] SPEAKER_01:** Providing people with a piece of technology that would allow them to have barrierless agreements between each other and without having to go to a third party to engage. That's why.

**[14:00] SPEAKER_00:** Was that because you wanted to make a lot of money?

**[14:03] SPEAKER_01:** No, because I thought it was very important technology that needed to be developed.

**[14:07] SPEAKER_00:** Did you make a lot of money on it?

**[14:09] SPEAKER_01:** Not as much as some others.

**[14:14] SPEAKER_00:** Not as much as some others. Okay, would you like to explain that?

**[14:21] SPEAKER_01:** Something went the other way. I suppose it was in some sense it didn't take the route of what you would normally expect a technological venture to take. The route was done in a much more inclusive environment where the people, normally in a technological thing, venture, there's maybe two or three people that take in some sense the lion's share, subtracting from later employees and of course equity sales. But generally there's two or three people. And that really wasn't the case with Ethereum. With Ethereum it was always meant to be a very inclusive system both in terms of how any of the sort of potential tokens were shared out, and in the sense of who's allowed to help build it and who could develop on it, how we can bring as many other projects in to help make this a success.

**[15:37] SPEAKER_00:** So some people took more money out of it than you did. Are you disappointed in those people?

**[15:44] SPEAKER_01:** For me it was always about getting this project out into the open and seeing it used.

**[15:48] SPEAKER_00:** Do you think it will survive the problems it has right now? The original idea.

**[15:58] SPEAKER_01:** I think these problems will eventually be a, I hope there'll be a very clear lesson to the future users of Ethereum and I do think it will survive. To the future users of Ethereum and other smart contract systems which I don't think are going away, as to how to, firstly in the case of The DAO, what not to do, and secondly into how the community manages this problem, hopefully of how to form governments, how to form consensus even in the face of a widespread concern that what happened wasn't the expectation.

**[16:45] SPEAKER_00:** Thank you very much.

**[16:46] SPEAKER_01:** You're welcome. Thank you.
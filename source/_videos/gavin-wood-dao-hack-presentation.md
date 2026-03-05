---
title: "Gavin Wood presentation hack of the DAO smart contract and options Ethereum community"
date: 2016-06-20
author: "Dutch Blockchain Conference"
description: "Gavin Wood presents on the DAO smart contract hack and options for the Ethereum community, Dutch Blockchain Conference, June 20, 2016"
embed:
  url: https://www.youtube.com/embed/KaOGtH7J0WE
---

## Transcript

**[00:01] SPEAKER_00:** Okay, I've still got seven and a half minutes left, so I know that was a whirlwind talk, but I'm going to very quickly go on to the next one and you can ask me if you've got any questions, you can ask me them at the end.

Okay, so this is a talk on decentralization and the defense of it. So I'm going to make it super 100 million percent clear who I am coming here as. I am not a creator, curator, founder or author of the DAO, okay? That's not who I am. I'm not a representative of the Ethereum Foundation. I have not been involved with the foundation for six months and I am not involved in the Slock.it team, okay? I never have been. Right? That's who I am not. We're clear. Okay.

Right. This is more or less what happened. So you know Ethereum, oh look, I've got loads of money market cap. And then the DAO is like, oh, you know, you should trust me with this money because you know I'm going to invest it in lots of projects that might make you even more money. I was like, oh, great. And of course the DAO sort of, yes, throws the money on the fire.

So what actually happened? Well, 14% of all Ether ended up being invested, or at least deposited into this particular contract that was running on the Ethereum computer. It was a lot, it was much more than I think anyone really expected. But there we are. And it became at risk due to a flaw in the contract itself. So this has nothing to do with Ethereum. Ethereum is still pleasantly churning away transactions. No problem there. But this particular contract, this particular computer program that was placed on Ethereum, had a security hole.

Now 5% of the total amount of Ether, so about a third, is already out of control. So it's moved out of the main DAO, out of the main contract, and it's in some sub-DAO, some child DAO, where it can't really be controlled by anybody, at least not if everybody plays by the assumed rules. There's this re-entry bug. I won't go into the technical details. You can ask me after if you want to know.

Okay, so what are the limitations? Well, unless there's a further security issue that we don't know about, the Ether that was stolen from the main DAO will remain illiquid for 39 days because of some basically security fallbacks. It's very hard to move Ether out of DAOs, be they the main DAO or the child DAO or whatever. So after that point, so after 39 days it will be completely fungible and maybe exchange loss hold.

So what do we do? Well, you know, this is an interesting problem. We got three choices. Basically we do nothing. And when I say we, I don't mean, you know, we, some elite people who are just like controlling everything. I mean the Ethereum and the DAO community. We enact a soft fork, which would basically be a very, very kind of easy, simple, low risk way of altering the network protocol slightly, just sort of nudging it into a direction in order to freeze that 14% of funds. Or we hard fork. And that's a much more significant undertaking. It would actually alter the protocol in a significant way. But if we did that, we could potentially, we could, I'm pretty sure definitely, basically return all of the Ether in this DAO and in the stolen DAO and all that, we could return it back to the original holders and basically go, that was a close one.

So how could it actually happen? Well, the first thing to remember is Ethereum is decentralized. So there's no one, not even the foundation can unilaterally do anything about this. At the moment it's broke. So Vitalik and myself have no power to fix this. We can only propose and validate potential options. But if it were to happen, then the way it would work is there would be developer community would make proposals as to how we could fix this. We would brainstorm. We would then specify and prototype the better of the proposals, and get some technical validation that they could actually work. We would then do some community discussion. The whole community would be involved, miners, exchanges, users, all the rest of it. And they'd evaluate and they would decide whether they actually wanted to do this or not. Now if it looked like it was going to be accepted, then of course we would further review, refine and harden those prototypes into real sort of alterations. And it would be eventually presumably deployed to users, miners and exchanges. And the whole thing would sort of almost like a train. The wreck of the cliff that the train's about to go off would be averted and the train would continue on some other line, hopefully to the station where all the people could get off.

So why would we want to help? Well in principle we want to avoid debasing these tokens, these Ether, they are how the miners are paid out, which means they are the currency in which the security of the network is measured. And in that sense if 14% of all of them were thrust on an exchange and sold, it's unlikely they'd be worth all that much for a while after. Which could substantially reduce the network security. It would help disincentivize future black hat attacks by saying well if there is such a large heist we would do something about it as a community. It would safeguard potentially a future proof of stake proposal where 14% to put at stake, that a malevolent actor could put at stake, which is to say is rather a lot and could potentially disrupt that consensus protocol. And in some sense it's a question of pragmatism over ideology. Obviously ideologues would say oh well that's a reason not to help. Fair enough.

So reasons not to help, these are the ones that have come to me. So it's like well maybe it's when all you've got is a hammer, everything looks like a nail. So maybe it's just a bunch of people who can change things, are sort of prone to doing so. And it's a fair point but I mean at the end of the day if it's a valid use, it's a valid use. Slippery slope. If we do it now, maybe we're going to do it in the future as well and then it's going to require less and less and less of a problem and eventually we'll be doing it all the time. I think some sort of constitution to say, you know, well, when it should be done, when it definitely shouldn't be done is probably a sensible way forward on that. In some sense we want to keep the implementations pure. We don't want to put all of these kind of long term warts for higher level fixes in the low level protocol. But my opinion is that it's actually containable. And then of course vulnerability escalation. If by a vulnerability in a high level, a program that runs on the machine, we start altering the engine itself, it's like well maybe we're going to make things worse. It kind of escalates the scope of the vulnerability. It's true and I think that's the most important point. And there's a bunch of tests that I would insist on being done before I would support any such fix.

Non reasons. There's... Oh my God. Centralization. Well, yeah, I look at consensus as having two flavors, automated and manual. So far I've been running on automatic, but sometimes you got to go on manual, right? At the end of the day, it's a community that stays in consensus, not a machine, because it's people who use the machine. So, for my, in my mind, what we're discussing is a potential suggestion to switch to manual for a moment and then move it back to automatic.

Reward the doubters. I knew this was going to happen and I didn't put my money in, therefore I should be rewarded. Or at least all the people who were fools to put their money in should be punished. It's not a very good argument, is it? I mean, you know, sure, if you correctly predict the full outcome, then maybe there's a reasonable point. But you know, don't expect the community to go along with your wishes just in order to punish themselves. That really doesn't make much sense.

It's not part of the specification. You know, it doesn't describe this in the specification. And it's like, well, no, but the specification was there to try and help the automation of the consensus, not to define and restrict what the people who are subscribing to the consensus are allowed to do. This is in order to try and help freedom not to reduce it.

And finally, the funniest, I think it's not an attack, you know, it was just an undocumented feature. Yeah, yeah. No, I don't think so. Ultimately though, it's not, you know, it's not any of our decisions, it's the decision of the community. So, what will be will be. Right? Any questions?

**[09:15] SPEAKER_01:** Okay, Kevin, you don't have power to change, right? You can only come up with ideas and suggest them. But the basic idea is there is 14%. That is the total value is about 160 million now.

**[09:27] SPEAKER_00:** Mhm.

**[09:28] SPEAKER_01:** Which somebody, basically, you don't know who it is. I mean, somebody took advantage of this contract and you say, well, you didn't want to explain what it was because it was too technical, but it's something to do with recursion. And suddenly a whole bunch of money flows into a big hole, a black hole, and you don't know where it is. You know what the Ethers are, but you don't know who has it at the moment.

**[09:53] SPEAKER_00:** So we know where it is.

**[09:54] SPEAKER_01:** We know where it is.

**[09:55] SPEAKER_00:** We know where it is. So it's sat in the same kind of contract. Problem is that the person sort of in charge of that contract is the attacker. So there's nothing that anyone else can do to get... Oh, we don't know who he is. No, no, no, we got an address. So he's not anonymous, he's pseudonymous. But that's not much use if you want to track him down.

**[10:13] SPEAKER_01:** And so everybody's trying to find this guy or woman, will be wonderful. Yeah. And then, and you said this last thing, I mean, a lot of people said, hey, this is the contract, you wrote the contract. And no, no, no, no, no, they wrote the contract. You didn't, but they wrote the contract. And this is the, these are the rules. So, if you want to interpret the rules, don't make an automatic solution. So it's just a consequence of your system, you said, nah, I don't think so. That's reasonable. Why don't you think that's a reasonable point of view?

**[10:45] SPEAKER_00:** So ultimately it comes down to what the technicals are and what the morals are. So people act according to their moral convictions, not their technical convictions. Computers act according to their technical convictions. So now we have a distinction between what the sort of technical default consensus is and what the moral consensus is. Or maybe we don't. Maybe the moral consensus is the same. People just say, yep, the contract said that, so we're not going to do anything. And that's fair enough. If that's what happens, that's fair enough, but that might not be what happens. And the point is that that should be discussed and debated and there should be a consensus formed by the people rather than the machines.

**[11:24] SPEAKER_01:** You say the community can come to a consensus. What kind of system do you have to come to a consensus? How is that organized?

**[11:34] SPEAKER_00:** Well, the way that Ethereum comes to consensus is through proof of work. That's the consensus algorithm. So in principle it's the work that is done in order to secure the network. Now who does the proof of work? Well, the miners do and the mining guilds, so the mining pools. So as we speak, mining pools are opening voting mechanisms so that their hash power, the people who are contributing to those mining pools can vote one way or the other. And so in the end we're going to see mining pools coming out and mining operations come out one way or another that are going to say, yep, we support this, or no, we don't, and there's nothing anyone can do about it, once those guys decide, okay, they.

**[12:15] SPEAKER_01:** Normally say if it doesn't kill you, it makes you stronger, right?

**[12:19] SPEAKER_00:** Mhm.

**[12:20] SPEAKER_01:** This is a fantastic, interesting phenomenon. It's really exciting. Will this make, will this make the community stronger? If you survive it? I mean, because you now have to deal with a whole different level of issues. This has never been a problem before and I think for the whole crypto community, everybody's looking at you and saying, how are you going to fix this problem?

**[12:42] SPEAKER_00:** I think you're absolutely right. And up until now people have been probably rather dismissive about the dangers of haphazard coding in contracts. And either way this will go, people are going to start realizing that you can't just code up a contract like you code up a web server or like you code up some client side code. You've actually got to prove to not just yourself, but everyone who's going to take a stake in this thing that it's going to work and it's going to work indefinitely. So yeah, this is like an immune system response one way or another. So yeah, we're going to go into a fever for a while, but when we come out of the fever, we're going to know for sure that this is what you don't do if you want to make a success.

**[13:24] SPEAKER_01:** This is a very good $160 million lesson. This is really... so what happens in that community when the first 60 million disappears and then the next, and then the 100 extra million is in danger? Do people freak out? Is there an incredible spur? Do people... what... how does it feel to live in the community now?

**[13:48] SPEAKER_00:** Part of this talk was in order to try to put people on the same page. I hope I've reached some of them. Obviously there's uncertainty.

**[13:58] SPEAKER_01:** Yeah, we had a huge spike in the amount of viewers when you were, especially the last one. Yeah.

**[14:04] SPEAKER_00:** There's inevitably uncertainty. We're all uncertain. At this point all we can do is make options that we feel are technically sound. And it's really up to the community, the miners, the exchanges as to which way they go. And I honestly don't know.

**[14:22] SPEAKER_01:** You don't know, but you can propose. I mean, you said the different things you had. Do nothing. The soft or the hard fork. What do you think is the best solution?

**[14:34] SPEAKER_00:** Well, my mum always taught me if you see someone robbing someone across the street, then you intervene. So I look at this no differently.

**[14:41] SPEAKER_01:** You don't like the idea of doing nothing. No, not really, no. And the soft fork sounded really soft. Nice. Wonderful. Didn't have too much disadvantages. Is that your preferential choice?

**[14:53] SPEAKER_00:** Well, the soft fork, the issue is that the funds are stolen rather than returned. So... stolen, sorry. Destroyed rather than returned.

**[15:03] SPEAKER_01:** Okay, so they're destroyed. Okay. All right. Okay. So you basically can get, you can have a hard fork and give the money back to the original owners. A soft fork, the money is gone, but the thief doesn't have it. Or you do nothing and the thief just sits there enjoying his 160 million.

**[15:20] SPEAKER_00:** Those seem to be the options at the moment.

**[15:24] SPEAKER_01:** That is a really hard choice. And it's about real money, isn't it? I mean, did you really think when you started this Ethereum project that you, that it would be this kind of issue you had to deal with.

**[15:35] SPEAKER_00:** I have the option of not having to deal with them. I mean, you know, I can walk away. It's not my problem.

**[15:40] SPEAKER_01:** No, but I mean when you started this project, I mean this thing, it's now worth, well, it's now a little bit worth less, but it's worth over a billion. So it's, it's a serious, it's a serious thing and a lot of the corporates are really playing with it. I mean they, you seem to be the serious Bitcoin, the blockchain alternative and the smart one with dumb contracts, you know. But did you expect that it would go to this kind of... yeah, just you have to be a government, you have to come up with a whole system to come up with a switch off automatic and go to manual mode and go back. Would you set up the system differently now?

**[16:18] SPEAKER_00:** If I were doing this again, I would probably make sure there were proper governance structures in place. Yes.

**[16:27] SPEAKER_01:** Yeah, that's what all the banks say after the fact. Yeah. Anybody more? One more does. Somebody has a smart question for Gavin.

**[16:44] SPEAKER_00:** So I've been reading up on what happened last week during the weekend and you didn't mention the Solidity language that possibly also played a part in this being able to happen. Do you have any position on the language that the contract was programmed in? Well, it's probably better than LLL, which is the only one I did. But I mean computer programming is hard at the best of times. If there's something to be blamed, it's probably not Solidity. It's probably reentrancy within the EVM that people simply don't expect. That said, when I envisioned Solidity, it was really to have the formal proofing mechanisms in which would have guaranteed this kind of thing wouldn't happen. Now, formal proofing is very hard. It's difficult to get right, and there are only a handful of languages that do such a thing. But nonetheless, I think this flaw demonstrates over and above anything else that it's really handy to have in when you're doing stuff like this.

**[17:57] SPEAKER_01:** Okay, we have to basically stop. We're going to ask you to do an interview in the studio and hopefully stay around. What time are you flying back? Give some time to stay with us and to answer some questions to the people. Thank you very much for coming. This is really something.

**[18:13] SPEAKER_00:** Cheers.
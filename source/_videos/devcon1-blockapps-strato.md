---
title: "DEVCON1: BlockApps STRATO - Victor Wong, Kieren James-Lubin, Jim Hormuzdiar"
date: 2015-11-10
description: "Victor Wong, Kieren James-Lubin, and Jim Hormuzdiar present BlockApps STRATO at DEVCON1 in London"
embed:
  url: https://www.youtube.com/embed/x8jIUg5jXjg
---

Victor Wong, Kieren James-Lubin, Jim Hormuzdiar, and Ryan Reich present BlockApps STRATO at DEVCON1 in London, November 2015. BlockApps was the team behind the Ethereum Haskell implementation, and STRATO was their blockchain-as-a-service platform designed to make building Ethereum applications accessible to developers without deep blockchain expertise.

## Transcript

**[00:19] Victor Wong:** So I'm Victor Wong, one of the founders of BlockApps, and I'm here to introduce to the world BlockApps Strato on Microsoft Azure, the easiest way to build blockchain applications. You've seen this comparison made countless times. Bitcoin as a blockchain we know is limited in functionality. And thanks to Vitalik and the work of the Ethereum Foundation and Eth Dev, we now have a completely new global computing platform. But because of that, the success or failure of almost any computing platform is actually based on the number of applications that are being delivered on it.

So BlockApps has a simple mission. We want to be the easiest way to build and deploy blockchain applications and businesses on the Ethereum platform. We're the team behind the Ethereum Haskell implementation and we want to be able to provide the facility to easily deploy private blockchains, but also have these blockchains be able to communicate with the public blockchain. Lastly, we want to make sure that applications built on our platform can communicate with existing systems and devices. In a sense, what we want to provide is a bridge to the existing world with Ethereum.

But here's the challenge. Now, many of you know all these terms, you know what this entire ecosystem is about, but I can tell you, when you show this slide to regular people, they are terrified. They have no idea about where to begin. Because truly the Ethereum ecosystem is not just one tool, but a series of interconnected technologies and tools. And you have to understand the entire picture to really be able to maximize the use of it. So many people come to us and they say, well, where do I start? Where do I begin?

And that's where BlockApps Strato comes in. Basically what BlockApps Strato is a full Ethereum blockchain as a service framework that gives you everything you need to start building blockchain applications today. That goes all the way from spinning up your own blockchain, a middleware, API connector, wallets, faucets, everything you need to build and deploy applications. And we're going to show you a live coding demo by one of my co-founders, Kieren James-Lubin, our chief data scientist. Kieren.

**[03:02] Kieren James-Lubin:** Thanks, Victor. Okay, there we go. Let me maximize this. So the first thing I'm going to do is actually launch a live instance of Strato. It takes a minute to spin up and we've got network latency. Then I'm going to go into one of our demos. Actually, we have to pick exactly what I'm going to code. I've got about five minutes to do it.

**[03:37] Victor Wong:** Can I make a suggestion?

**[03:38] Kieren James-Lubin:** Sure.

**[03:39] Victor Wong:** So, Kieren, since we're partners with Microsoft now, I'd like you to change our revenue sharing agreement. So add Microsoft into our company and let them share part of the revenue. And I'd also like to make sure you have five minutes. Right?

**[03:53] Kieren James-Lubin:** Yeah.

**[03:54] Victor Wong:** Make sure everything you write can run on any Internet connected device, including a mobile phone and any browser.

**[04:01] Kieren James-Lubin:** Okay, got it. Let me fire up the instance.

**[04:03] Victor Wong:** No problem.

**[04:05] Kieren James-Lubin:** All right, starting the deploy here. So this will all get listed on the Marketplace soon, but this is the BlockApps login for the moment. Let's call this Strato dev. We're firing up. All right, looks good. Let me go into the contract.

So I'm about to show you a command line tool called Block. These are the commands it supports. And what I've set up here is a scaffolded blockchain application. Kind of looks like a web app. You can see we've got HTML, JavaScript, CSS, an app.js to run a web server. We've got a contracts folder, and in the contracts folder, we've got some standard Solidity contracts to get you up and running quickly.

So let's take a look at what's there. Just a couple samples. The payout contract is the contract that BlockApps has been working on. This encodes the revenue split or the ownership split between Victor, Jim and I. And we're going to cut Microsoft in in a moment. Let's look at our instance. Looks like it's almost ready, and show you the code.

Okay. Very simple. Solidity contract. Three addresses, Victor, Jim and I, ownership, distribution, a setup function in which we split the equity and a dividend. Let's see how we're doing here. It's almost ready. Okay, good.

So now what I'm going to do, I'm going to cut Marley in. Let's give Marley the address with four Cs. And because he's been so kind to us, we're giving Marley 70% of BlockApps. Got to add a line here. Normally I don't roll over like that in negotiations.

Okay, looks like we're good to go. I've set the URL up already. So what we're going to do now is compile this contract, command called block compile. Okay, that looks good. And let's go visit our web server. So if I type block start, this launches a local web server, and we'll just see what our contract looks like. So that's at localhost 3000 and payout.

So, what Block has done here is scaffolded a user interface for this contract. It's automatically generated. And we can see that. Hey, we've compiled the contract, but I don't have a wallet yet. And I still need to upload the contract. Make it bigger.

**[08:08] Ryan Reich:** Yes.

**[08:10] Kieren James-Lubin:** So Block is here to guide you through the process of creating an application. It will remind you about things like deploying contracts or when you need to upload a new version of your contract after it's been updated. Excuse me. Okay, so I'm going to go ahead and generate a key. Got a network. There we go. Now I'm going to go upload this contract.

**[08:50] Ryan Reich:** Ah. All right.

**[08:52] Kieren James-Lubin:** And I'm going to refresh this page. You see, it has an address. Now type in the password in. We've got some data in storage. You can see these addresses have not been filled in because we haven't called the setup function just yet. I have about 1000 ether in the bank. The contract has zero ether. So I'm going to send the contract some ether and do the setup.

Okay, you can see that Marley now has an address, as does Victor and Jim. And the contract is 10 ether. So here's Marley's address. There's nothing at it. This is actually what we want. And I'm about to carry out the dividend. There we go.

All right, so if I check this, Marley should have a balance now. And there it is. It's in wei. You can see he got 70%. We should label those units a little bit better, but that. There we go. We didn't need any lawyers. We set up the revenue split. They're at the back.

**[10:10] Victor Wong:** They're at the back.

**[10:11] Kieren James-Lubin:** They're at the back. Ah, well, we let them in for this conference, not the next one. Anyway, so that's how you can get up and running in five minutes and build your first app with Block on BlockApps. Ryan later will, thank you.

So Block is a wrap around BlockApps JS, which is our every purpose JavaScript API. So Block takes care of the scaffolding and the onboarding, but BlockApps JS, you can drop into any project that you already have. So maybe when you do something more complicated, you want to use BlockApps JS. Thanks, Victor.

**[10:59] Ryan Reich:** Thank you.

**[11:06] Victor Wong:** So, as you can see, BlockApps Strato is designed for very, very rapid deployment and development. Some of the key features are that it's designed for building customizable private Ethereum compatible networks. You do rapid deployment on existing infrastructure like Azure. As Marley mentioned, coming soon in the Marketplace will be one click deployment. It has a RESTful API which is designed for integration with existing services and devices.

And one thing is it scales easily from small private sandbox deployments into multiple consortium deployments and even elements of the public Ethereum blockchain. It's write once used on any network that you want. And all of this is built on the technology we developed for the Ethereum Haskell implementation. And to talk about that I'm going to introduce my other co-founder James Hermazdior, Ph.D. and creator of SSL VPN. Thanks James.

**[12:16] Ryan Reich:** Thank you Victor.

**[12:19] James Hormuzdiar:** So about a year ago Kieren actually contacted me and I learned a little bit about Ethereum and I became fascinated right away with Ethereum and I went out and started reading everything about it and I immediately wanted to dig in and understand how it worked. And for me the natural choice of a language to use to work with Ethereum was Haskell.

I've been using Haskell for about five years now and it's over that time become my favorite language. It's got a lot of features that are extremely nice. First of all, as you heard yesterday, Haskell is a functional programming language. And the thing about a functional programming language is that the specification is the executable. The code that you write with Haskell looks a lot like the description of the code that you are writing.

Second of all, it's one of the most strongly statically typed languages that exists. So generally speaking if it compiles it's correct. And I've had many experiences over the last year where I've had to make changes to the code and I've spent hours ripping it apart, rewriting it. And I'm generally very surprised at the end of the day. Once it compiles it tends to come up and it just works without bugs.

And third of all, it's a very performant language. So when you compile Haskell, it compiles to native executables and if you write your Haskell code properly it can run as fast as C. So generally speaking if you want to write something and you just want to make sure that it works and it works fast, Haskell is your language. And it's been as you can see here, we put a few examples of companies that have been using it in the last few years.

Let me talk just a moment about the architecture of Strato. So Strato, as you can see it's from the beginning we wrote Strato to be fully modularized. And in the center we have a SQL database. And around that SQL database we have many pluggable modules. For instance the VM itself is just one process that runs and it connects, grabs the data out of the database and processes it. We have all of our communication to the outside world, our separate pluggable modules, we have analytics that are occurring, so forth.

But the important thing here was we put SQL in the middle and we chose that deliberately because we wanted Strato to be an architecture that would plug right into existing enterprise environments today. Thank you very much.

**[15:20] Victor Wong:** So one thing about Strato and the Ethereum architecture that we've chosen that Jim has created is because of its modular nature, it's actually completely compatible with many of the existing Ethereum tools. You can spin up a private network and also connect it to a Geth node or a C++ node. You can use front end tools that are being developed all over by the community such as EtherCamp, Truffle and Embark. So really what, when you use Strato you're not restricted to only our tool set.

Now the one thing is in order to really get Ethereum applications created, simply having the technology is not enough. Education is a big piece of the puzzle. And in order to accomplish that we've been holding a bunch of workshops, we call them Zero to Blockchain App where you come in for a couple hours, you start playing around with the tools and you walk out having built your first blockchain app.

In addition, we've been actively involved in a series of hackathons co-sponsored by ConsenSys and EtherCamp. And without our prompting it seems that our tools have now gotten picked up by other developers who found it's a very easy way to build a blockchain application. In fact the recent winner of the Rise, Barclays Hackathon was using BlockApps Strato. And here's the thing, he had never looked at a single line of Solidity before that hackathon.

So what we're trying to do is essentially provide a complete solution. With Microsoft, we now have one click deployment on the Microsoft Azure cloud. We're providing hands on workshops and education efforts to make sure people can use these tools. And lastly with our parent company ConsenSys Enterprise, we're helping companies figure out how to build and use these technologies in the long term.

This is our team. Come look for this T-shirt. We are very friendly and open. We'd love to talk to you about how to use our tools and how to make our tools interoperate with whatever you're doing. So the key message of all of this is this isn't about the future, this is about today. What can we start building right now? Thank you very much. And a limited amount.

**[18:28] Ryan Reich:** Go away. So my Google Calendar wants me to know that I have a talk to do, right? Yes. Thank you Google.

Okay, so I'm Ryan Reich, I'm the author of the BlockApps JS JavaScript library. BlockApps JS connects Ethereum to the web. BlockApps itself, as Jim just told you, exposes Ethereum as a database. Using our RESTful API, you can query any number of aspects of Ethereum, both by native metadata and by metadata that you can only extract by having run those transactions. You can query blocks, transactions, accounts or account storage and you can query those transactions by such features as what accounts have changed in them and other such things that might be of interest as analytics.

BlockApps JS builds upon this API by wrapping it in high level JavaScript. In fact it supports Solidity very transparently. It wraps Solidity contracts in JavaScript objects, thus realizing the programmatic structure of a Solidity program as the programmatic structure in JavaScript so that you can easily integrate it into an application.

Since any network communication necessarily is asynchronous, BlockApps JS uses a popular promise library, Bluebird, to make your interaction with this asynchronous activity powerful and comfortable. Nope, there we go. Not done yet.

So let us now take a look at something that you might write with BlockApps JS. So this is a little bit too expanded here. We are still large enough to see, hopefully the color scheme isn't too dark. Is it too dark? All right, well I'm going to just attempt to power through this anyway because.

**[21:06] Kieren James-Lubin:** Select all.

**[21:08] Ryan Reich:** Select what?

**[21:09] Victor Wong:** Select all.

**[21:13] Ryan Reich:** Very good. Okay, so this is the HTML portion of a dapp that you might write with BlockApps JS. It's very simple and it just produces a little interface that looks like that. Just a box with a couple fields you can fill in. You'll notice that it's fetching its JavaScript from the Strato dev address. This is an Azure instance that we started up for ourselves, where Strato is always running and this library is available. All that happens when you open this is that it runs a function and waits for you to push the button.

**[22:01] Victor Wong:** So.

**[22:06] Ryan Reich:** The code, the Solidity contract that is behind this application is a simple crowdsourcing thing basically. People can submit their names, a little bit of ether and they get contributed to the contract and after a certain point you can just decide to pay it out. So this is not intended to be clever, it's just intended to be instructive.

You'll notice that a little way down I have this set profile option. This is one of the features of BlockApps JS that makes it easy to use different blockchains or different Strato nodes. We have at the very least a Strato Live node in addition to a Strato dev node and that is running rather than a sandbox blockchain, a live Ethereum blockchain. And by simply changing the word, let me just, dev to live, I could make it run on the live network.

Now it wouldn't be wise because I have decided to use an address that has no ether and I've also put its public key up on the screen so it had better not have any ether. But if I had architected this just a little bit more carefully then just by making that one change it would in fact be a real dapp.

So BlockApps JS has a number of modules. It has a Solidity module for one thing and that's the module you're going to be using the most often. It has some basic support for Ethereum concepts below Solidity, but in fact Solidity just abstracts all of them to a higher level. So for the most part you're just going to be using that.

However, as you'll notice in Kieren's contract, you can sometimes find yourself submitting values in wei when you really meant to submit them in ether. So you can in fact convert them back and forth pretty easily with the Units module.

This faucet thing is a testing facility. Like I said, this address has no real ether on it. But on the Testnet Strato dev it doesn't need ether. Or rather it does need ether, but it doesn't need real, real ether. But we need to give it something so that the VM will work. The faucet just supplies any address I want with a thousand fake ether. So let's change that back to Strato dev so that I don't accidentally try to spin something I don't have.

So let's go down and look at this code. So what's going on here is that it remembers the address of the individual who you are benefiting with your contributions, as well as various information about the people who have paid. As you can see this is a fairly complex Solidity structure. It's a mapping from addresses to a user defined struct and the JavaScript, the BlockApps JS library actually does support interpreting the values of even such a complex object.

It reads the storage, it interprets the structure of this Solidity code and it figures out what of the hexadecimal nonsense that lives in the Ethereum storage corresponds to the values you meant to put in there and it converts them into JavaScript types so you don't have to worry about any of the implementation details of Ethereum. When you are working with BlockApps JS, it does as much as possible to take care of them for you.

So when you create this contract, all it will do is store the name of the, or the address rather of the person who's supposed to get the money. It also initializes that array of contributors and then when you contribute, so when you contribute it, well it does a little check to see if you haven't given anything, but otherwise it simply adds the contributor to the end of the array and adds the value to the end, the struct corresponding to that contributor which lives in the mapping. Then it tells you that the transaction succeeded.

So if I were to try to give some ether to that right now, say myself, 10 ether, then you would expect to see something pop up. And it does in fact pop up. I have been thanked generously for giving 10 ether to this person.

So how did that happen exactly? This is where BlockApps JS actually does its work. So at the beginning of this app, before I even came here, I loaded this page and it created that contract. All I did was I took that code, I plugged it into the Solidity module and I called the new contract method.

Since most of these operations are asynchronous, the call looks a little strange. You would expect it to be a member function and it is, but it's a member function of the return value of a promise. So I'm using some promise syntax for that. And all it does is it creates a contract and saves that contract in the page for later reference, and it also activates that button, since there was no error.

I don't care about the other function now. When I pushed that button it went through a long chain of promise operations, the beginning of which was to run this function which I've called Patronize. Maybe I should have called it Contribute.

So let's look at how that works. That's based on these three functions. So the core piece of functionality is the second function there, Patronize, which takes a name and a value, the things that appeared in those boxes. So all it does is it takes that contract object, which is perhaps not creatively called Contract, looks in its state, which is a sub object which is automatically created by the library, and in there it finds a method called Contribute.

And if you remember back at the Solidity code, that was the method in the Solidity code. It's named the same thing and it's only natural that it should in fact be a function object in JavaScript. So that thing takes a variable, which is the same argument as it would take in Solidity. And I can also specify that it sends some other stuff in the transaction parameters. TX params I can specify a value which you'll notice that I've specified in Ethereum, and it's pretty clear that I meant to specify it in ether from the syntax. I could also have said gas price or gas limit if I wanted to, but I don't particularly because those are implementation details.

And the profile back up at the top, which was set to Strato dev, also has some somewhat permissive defaults in the case of Strato Dev and in the case of Strato Live, somewhat less permissive defaults that seem compatible with the other, with the existing Ethereum clients Geth and C++, so that the transaction will likely be accepted and you don't have to worry about it unless you're really concerned with the fine print.

After I've set all that up I just call it from, well something. I need a private key. And the private key in this case is just being created on the fly from a library, from a wallet that I have spun up in the page. This is not a very secure wallet. It just every name it takes, it randomly generates an address for it. And then with the fund function at the top of the screen it applies the faucet to that address and gives it 1000 ether. Once it has the address it has the private key also and it just sends that into the patronize function, and submits the transaction. And that was what you saw happen here.

Of course, what you haven't seen yet is actually obtaining the values that are printed. There aren't very many values, but something had to be done to get them. So this is where the placard is printed. This is where the contents of the contracts are interpreted by BlockApps JS.

If you remember, the contract had a recipient who was the creator of the contract, a number of contributors and an array of contributor addresses, as well as a mapping of contributor data. So I've done a little bit of functional style coding to extract the information from the contributors there.

What I did was I happen to know that the contrib info member of the contract, remember that was a mapping in the Solidity contract. And a mapping is nothing other than a function from its keys to its values. And that's how mappings are represented in BlockApps JS. So I just took this function and I applied it to each member of the contributor's array whose elements are addresses. And that turns the array of addresses into an array of objects containing the contributor information that was put in there when the contract was invoked.

And after I've obtained all of those things, I join the contracts with a function that uses their values. And in this case it just takes the recipient, the contributor, the number of contributions and the information of all the contributors and prints out a number of lines explaining what exactly was in all of that. And you can see the results up here. I don't need to go through the user interface formatting that goes into that. Easily the least interesting part of any program writing text to output something.

I could give more. Turns out that I really like this guy. I'm going to give five more ether. So, I contribute once again and now I've given 15. My brother Doug, who makes more money than I do, wants to give 20. He makes more money because he works at a bank. For now, yeah. Soon I hope I will be the one making more money. So Doug has given 20.

And so let's close off this little round of crowdsourcing and pay the guy, whoever that guy is. So pay the recipient. Turns out he raised 35 ether.

And what actually happened when I did that is I had a final method in the contract. Let me just sort of scroll back up to the source code so I can point that out to you. Because it was very small. Payout suicides the contract, it closes it out and pays all the money to the recipient. And way down here the payout button just invokes the payout function, calls it from the private key. And that function invocation returns a value, but in this case it doesn't return anything. So in contract language I just replace the return value with what I want to see, which is the balance of the contract, and then I format a line that displays it.

**[34:13] Victor Wong:** So.

**[34:18] Ryan Reich:** As you can see, this is the same basic operation that you witnessed with Kieren's example in Strato, but more customized. Strato has your scaffolded page already for you. With BlockApps JS, you'll want to write your HTML yourself. Or if you start with your Strato, if you start with your Strato page you can tweak it a little bit. And knowing how BlockApps JS works, you can add more functionality than simply showing the storage contents of the address you're working with.

BlockApps JS is the power user's inroads to connecting Ethereum to the web. Anything you can do with Solidity, you can benefit from in your application by running this library. So let's go back to this slide and press spacebar again.

Thank you for receiving this presentation. We're happy to give this technology to you to enjoy and to build wonderful Ethereum apps with.

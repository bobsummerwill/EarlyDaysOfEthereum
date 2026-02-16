---
title: "Ethereum ÐΞVcon-0: Looking at the Ethereum IDE - Mix"
date: 2014-11-28
author: Gavin Wood
embed:
  url: https://www.youtube.com/embed/hcP_z_wBlaM
---

Demo and walkthrough of Mix, Ethereum's integrated development environment for creating and testing smart contracts and decentralized applications.

## Transcript

**[00:13] SPEAKER_00:** So this talk is about the IDE, the integrated development environment, or the tool that you use to develop things with the Ethereum framework. And when I say things, what I actually mean is dapps. The talk has been given a name by, sorry, not the talk. The idea has been given a name by Jan, who started development on it not long ago. And I got it right. Yeah, Mix, that's the name, the code name for the project.

Okay. So like all things, it is an attempt to solve a problem or at least provide some degree of a solution. So the problem in this case is that writing software is hard. We have ways of making it easier. Sven mentioned some of those ways in his talk, as did Christoph. And we have services that help us as well. And we also have various bits of technology. There are some examples, but these things are often quite kind of disparate. For instance, when I'm in my editor and I'm working on a feature, that does not directly integrate with my feature manager, which is, at least for me, GitHub and specifically the GitHub issue system. So the I of IDE stands for integrated. And the idea of integrated, of course, to bring all these things into one place.

Now, in addition to just general software development, it turns out that actually writing decentralized apps is even harder. So firstly, it's harder conceptually because decentralized applications are just not things that we're used to developing. Right. It takes even a seasoned programmer a long time to really understand how Bitcoin works, why it works. Often you find people asking when you talk about Bitcoin blockchain technology in general, well, hold on, what about the security? What firewalls do you need to have in place for Bitcoin to work? It's like, well, this isn't the right question. You're in the wrong paradigm. You've got to shift your paradigm. And it's the same with decentralized applications. And for that I think I mentioned some of this stuff in Solidity, and there's actually another talk I did which I'll probably give again at some point about having different amounts of information available to different people and different decentralized applications and how they all collaborate. But anyway, it is a different paradigm.

So we have a diverse debugging environment. We're not dealing with a single language or a single machine or a single set of state. We have all of this stuff going on. It's very hard to collect it all together, as anyone who has used Aleph Zero to develop dapps will know and hate. Yes, the last point is what's happening on the system. It's really easy to get the state of a system when you've got just a traditional system, a system where all the state is basically memory and hard disk. And when you have that, you can use a debugger. You can ask the debugger, hey, what's the value of this variable? Well it's a bit different when you're dealing with decentralized applications because it might not be around. It's hard to set things up.

Exactly. So with decentralized applications, at least the decentralized applications that Ethereum 1.0 will be thinking about and supporting. And this notion of Web3 and the collection of these three sort of technologies. So we have the Ethereum blockchain, so the need to launch a transaction, debug the transaction, but do so with the blockchain in a particular state. It's no good if the blockchain can be in any state because that could easily affect what your assertions are with the debugging environment.

Similarly with the two other protocols, Whisper and Swarm, it's important that you don't just launch or debug or test your decentralized application on just any old instantiation of Whisper on the present sort of live net Whisper or even the testnet Whisper, because there may be messages there that you don't expect and that alter your base assertions and assumptions. With the debugging environment, basically as we move to the notion of unit tests, we need to isolate things and we need to have harnesses for these things and a very easy way of operating with them. Same with Swarm.

So we try and solve this. So here's a basic look at what a first attempt, first effort at the IDE could look like. You've got your code, this might be a Solidity contract. That's what it is here. And then you've got what it looks like ultimately. So maybe you're hosting some HTML file on your machine and it's just browsing that file. And maybe this file in some way operates with this. But it's very hard to really understand how this is working. You'd have to do a lot of the grunt work manually. You would have to make sure that this points at wherever this goes into the blockchain pane. You would have to submit that to the blockchain of course and the debugging would happen entirely separately.

Now as I go on and show more and more of what we plan, this stuff isn't necessarily Ethereum 1.0. It will take some time to develop out. Of course we'll be doing it in milestones. There are some features that are higher priority than others. In the same way that Solidity, all of Solidity isn't 1.0, we're not going to manage it by March. Certainly the invariance, the static checking is going to sort of run into the 2.0 schedule. But it's planned.

So first thing to do is to say right, a dapp is something that is not just a contract, it's a bunch of other stuff. It's the JavaScript, the front end stuff, the stuff that holds it together, holds the user experience together. It's a bunch of HTML, a bunch of CSS. Ultimately of course maybe if we move on to a QML, optional or optionally QML front end, then you can swap some of this out for QML. At the moment we're just dealing with web technologies and that's mostly strategic decision.

So we want some sort of project management, we want some way of holding together the contracts for a particular decentralized application and then the other sort of more front end. So in this it's a bit blurry. Can we alter the focus slightly? Might even blur. Yeah, that's more like it. So in this case we've got a couple of contracts. We've got a JavaScript file and then we've got some styles and whatnot.

Notably the way that we want to take the IDE is to remove the overburden of file management. So file management was something that was sort of invented in the 60s or 70s I guess, whereby we group lumps of data into files and store them generally hierarchically on a filing system. Now that's fine when you need something that's low level, but when we're dealing with high level concepts like projects and contracts, we really don't need to be falling back into low level concepts like files and groups of bytes.

So although it's very hard to get around this for the web technology stuff, so it's very hard to sort of reference something like a JPEG file without actually having a file for the contract. Well, we have a name for a contract and so we can avoid actually explicitly dealing with files. We can actually just have contracts by the name. And if you rename your contract then sort of hidden behind the scenes, maybe a file gets renamed somewhere, but you never need to know.

So if we add a bit more, a bit more integration in, you can see we've got a bit of extra stuff now. We've got this idea of team activity. One of the key things of developing software is collaboration with other members of a team that helps you develop software. We have this notion of what you're currently working on a developer, well, maybe there's some awesome superstar developers that can work on two or three or four features literally at the same time. But in general we tend to address one issue or one feature at once. So we have this idea of what you're working on. We also have things like the documentation integrated and context sensitive.

If you notice, we've also gotten rid of the... Ah. Oh. Oh dear. That sound good.

**[09:39] SPEAKER_01:** What happened there?

**[09:42] SPEAKER_00:** We have this notion of. Yes, there we are. We have this notion of what file we're at, but we've suddenly removed the localhost stuff because the IDE is going to host the file, the project as a whole, the dapp. Right. And we won't have to care about where it's hosting it because that's taken care of by the IDE. Kind of in the same way that when you're in, I don't know, Visual Studio, whatever you hit F5, you don't actually care about where in the file system the executable happens to be that's running. The fact of the matter is that it is running and that's all you care about as a developer.

Add on a little more and we can start to see things like the tests that we have. Now this all happens, as you'll notice, there's no buttons. This all happens and it's sensitive to as you type. So as you type, as you update the code, as you add more tests, as you remove tests, as you change the code there these update automatically. We have context sensitive information annotation actually built into the textual representation of the program. In this case it's telling us that there's something wrong here, that numberOfFounders is not a number. It used to be an integer but it became not a number in line nine. So it's actually tracking the state of variables as the debugging happens.

So the idea is that as it's debugging as you are not allowed to edit the thing, the background turns yellow and we get context sensitive information, we get annotation directly in the editor. Now we can do this basically because we have full compiler integration. One of the key points of the Solidity project was to separate the compiler executable, the thing that turns some source code into some object code, and the AST interface. So the AST, for those of you who are not compiler writers is the abstract syntax tree. And this is basically a mid level representation of the actual program.

So we're used to, we're used to thinking of programs in terms of text. So if I ask an average developer, hey, show me the hello program. What they'll do is they'll write out some text and they'll say, there you go. Now that's kind of the program. You might argue it's a projection or a representation of the program, but it's not canonically the program. One of the reasons that you might use to argue this point is that, well, I could alter this program in numerous ways or white space removal for instance. Yet it wouldn't change what the program is. It wouldn't change if we're going to get technical, it wouldn't change the AST. It still gets parsed and understood as the same actual program.

Now there are a group of pieces of software that actually deal with ASTs. And when you edit the program, you do literally edit the program, you don't edit the source code. So these are called structural editors or language workbenches. We're not going to be doing a language workbench because that's kind of outside the scope. But this may ultimately change into a structural editor whereby suddenly we won't have to worry about things like white space or code formatting being in the wrong way.

These things will automatically get rendered in the way that the user actually wants to render them, the developer wants to render them and it will default to some canonical representation, probably some basic representation that everyone agrees on. But ultimately it's something that people can alter. If you don't like tabs, if you like spaces, then fine, you alter it and it renders it as with tabs and not spaces. If you prefer your parentheses to be on the same line or on the next line, you can alter that as well. The idea is this is all transparent and the thing that goes into GitHub is just the canonical representation.

Okay. Is that not working? No. Ah, okay. Right, so that was, that seemed to be Google, probably our iffy Internet connection. Okay, so just to go over some of these features in turn, document integration. So as you have, I don't know, cursor is over a function or maybe as you're writing, you're calling into a function, you'll get pop up documentation.

Now this is, this can be done by virtue of having a contract sort of database, a decentralized database for contracts that stores the documentation. So we heard some of the ideas from Andreas a few days ago of how this might be implemented. And the idea is that the IDE actually goes to this place. It understands through some sort of URI system and registration system what the contract is. Again in tandem. This is achieved through using the AST from the Solidity library and it's able to actually pull out the documentation from that repository if necessary. It could go off on the Internet or the decentralized network or Swarm or wherever and grab the documentation.

The idea is of course that it also is able to pull out the documentation for the program and tell you, hey, hold on, you've only documented three out of the four functions or this invariant you just added, you didn't document it properly. Or maybe you're missing a parameter, maybe there's a parameter for the function and your documentation actually doesn't utilize the value of that parameter in documenting it to the user. And that's obviously a grave error because the user probably wants to know. It's probably quite important.

Test integration tests alongside so initially tests will be a very important part of contract development. Hopefully eventually we'll move over to a more formal system. But initially it's going to be very important that developers of contracts write a lot of tests and that these tests can be viewed and checked by auditors of contracts.

To make tests ever more useful for developers, they should be as dynamic as possible. So it's a bit of a pain to write tests first because often what the interface for a particular functional method or contract is differs after you finish the contract from when you started the contract because you simply don't have full knowledge until you've written most of it. So although testing after writing the tests, after development is perhaps there are arguments for writing it before you finish the full contract. But there are also very good arguments for not writing them before you've started the contract.

So writing tests as you develop the contract is probably going to be a sensible way forward. And the way to encourage developers to do that I assert, is to make the tests as dynamic as possible. So sometimes I'll be putting a feature, I'll want to debug that feature to get a bit of a better idea and test certain assertions that I'm making. Well this should be a very dynamic, a very quick way of adding extra tests as you develop to make sure that the assertions that you're making as you develop are indeed true as you type.

As you alter the contract rather than just testing, maybe when you compile or when you commit or when you push it, tests everything as you type. If you make, if you type a bunch of stuff, you add a new function, then before you've even compiled anything you're told, hey, hold on. This breaks that earlier test. You get a little warning.

Compiler integration is going to be very important. Again, as I said before, Solidity was always devised to be a library and not simply a compiler. And because it's a library we're able to get structured information from it from the Solidity parser and the Solidity Parse tree analyzer. So you can get this AST and you can have all of the references you need, which is to say you can say that this identifier here that corresponds to this byte position going to this byte position on line 24 is actually a variable that is referencing the parameter of name campaign ID to this function.

You can get that information. And when you can get that information you can do all sorts of cool things that are only kind of possible in very certain situations with existing technologies. Such as refactoring various types of refactoring, variable renaming and generally altering the abstract syntax tree, altering the program in logical well defined ways that are effectively guaranteed to be neutral transformations.

So because we're integrating with a compiler, we can also as you type check for things like code health so the warnings that it generates, maybe even compile errors we can take as you type that invariance. So these are sort of static assertions or assertions made over the entire lifetime or state, or all possible states of the contract are true. And we can have within the code itself a sort of, I don't know, massive red box or a massive cross. When an alteration you make actually fails invariant, we can derive code structure and render it in a way that the user is going to find useful perhaps as a...

I don't know if many of you use editors that have a sort of zoomed out view of the program code or syntax highlighted, you're familiar with that. So the idea is, well that's okay, that's kind of good. It sort of gives you a nice visual representation of the total amount of code. But what we can also do is we can add to that, we can take the abstract syntax tree. What we can do is render a non-textual representation, a sort of diagrammatic representation or a structural representation and place that at the side and that's going to be a bit more information dense.

And finally, as I mentioned earlier, we can do things like canonical code formatting, which is sort of a halfway step to actual structural editing and canonical code formatting. What I mean by that is basically when you make an alteration to the code, it automatically reformats the code in the way that is actually canonical. So you don't have any of these problems with style coding, coding standards. As the C developers know, I'm kind of tough on these and this effectively removes that as a contention.

Now I don't know if any of you, probably shows my age a little, are familiar with the AMOS programming environment as an early something early on the Amiga you can make your computer games, it's kind of a form of BASIC. That actually already had this. So this stuff that I'm mentioning is very little of it is at all sort of new or anything. And that was in the what, mid-90s, early 90s, late 80s. You type a line of code, you press enter and it would just format the code canonically. It's like, yeah, it's really sensible. Why do we, why do we go back to the 70s all too often?

Okay, so we've also got things like debugger integration because we know the abstract syntax tree, because we know all of this stuff, we have absolutely full knowledge of what's going on in the code. We can do all sorts of cool stuff like as you debug annotation for things like state, what value are these variables right now? Well we can actually show that.

So there could be, for instance you hold down Control Shift and suddenly the code expands into equals five. Instead of you in campaign ID, it becomes you in campaign ID equals equals five. Maybe the equals five is in italics and some variable font so that we know it's not actually literally equals five in the code. But you can start to imagine that we can actually annotate this code with up to date context sensitive information directly from the debugger. That is just kind of, if not impossible, very difficult to do with existing tools.

Assertion truth again is similar, something similar to the invariance. We can actually put crosses where assertions fail. And this could be integrated into the test environment in order that when you're running tests you get an immediate visualization of where the test is going wrong.

We can go into state integration, transaction integration and the blockchain integration. So this is where we, you know, we are developing in this kind of new environment, this environment where there's a lot of other stuff going on. So we need to integrate this stuff into the development environment and really sort of wrap all around it. So we've got full, at your fingertips, control as well as obviously transparent handling of various grunt tasks wherever possible.

So one of the most important things is to be able to test and debug with very particular states of the blockchain. It's no good saying, well we'll just test with the current state of the mainnet. That's crazy. All sorts of things might be going on that you just can't predict. You may not even have an Internet connection. But similarly doing it with a testnet is no good either for the same reasons.

So we want to be able to start debugging in a very controlled fashion. We want to be able to pick out which block that we want to debug on. We want to be able to specify, hey, maybe I want to debug on a chain that's empty. We want to be able to specify what states we want to debug on. Maybe it never was a block, maybe it's not a, maybe it was never in existence. And we just want to sort of create this state, this new genesis state if you like, and debug on that.

Same with the transaction integration. Maybe we want the transaction that we're actually going to debug to follow several other transactions first so we can make sure that the block has say five transactions first and then debug our transaction just to set up the state into exactly what we need with full control over it.

And again, blockchain and Swarm integration so that there's a one step deploy, right? Deployment could very easily be an absolute pain in the ass and very error prone. We need to really get on top of that and have basically just a button that you hit it, it runs a deploy script that's easily createable and where was I?

Yes, it's easily creatable and can do whatever you need. So what it might do for instance is we already have something like this in the C++ code base for anyone who's familiar with the standard services of things like name registration, the config contract, the coin, the exchange. That's actually all just the JavaScript file that I run whenever there's a new chain created and it deploys all this stuff. Well, we need a really easy way of creating this and running it and of course selecting whether we want to run it on the testnet or the mainnet.

Very, very important integration is that with source code version control tools. These are absolute lifeblood of programmers and have been for some time now. Yet integration in editors is often pretty minimal. Yay. I can commit because I've made a change. I mean this is really basic stuff. All it's doing is basically running a command git commit. We need something a bit better. We need something that follows our workflow a bit better and encourages us to really commit or use these tools optimally.

So one thing Google brought in a while ago with their Google Docs infrastructure was the idea of having a permanent undo stack or really tracking all of the changes. So what they've done is they've taken the notion of control z of undo and they've bundled it with the notion of version control. So now when you say write revision history, it will give you an undo history, scanning all the way back to the very beginning of the document. Why don't we do that? We've got git. It's pretty efficient. Certainly efficient enough for our needs. No reason just nobody's done it yet.

Currently working on. So with git, with the commits with branches you tend to say, right, there's an issue, I create a new branch, I'm going to. It's a feature or it's a bug fix. You'll commit to that branch a few times and you'll generally merge into the branch that you came from. Well, maybe this is the branch that you came from. This is the branch that your bug fix branch, maybe it's connected to an issue. Let's just build it into the workflow. Let's automate this stuff as much as possible and put the control. Put what the programmer needs to do. Focus on what they want to tell, not what they have to do. Yeah, we don't want the programmer to work around tools, we want tools to work around the programmer.

Similarly, the contract repository integration. So harkening back to what Andreas was saying a few days ago with the documentation system, this should just pull that information in and we've got the information to collate with that. So let's just put the ends together, connect it all up and really give the developer that information at their fingertips automatically.

GitHub is a great service, right? For open source developers. Has anybody here not used GitHub that is a developer? Nope. It's a great service but it's disjoint. I have to go to the web browser and use GitHub and then I go to my Emacs or Qt Creator or whatever vi whatever it is and I use, I edit the code. Why can't I do both at the same time? GitHub is very clearly a programmer tool. Editors are very clear programmer tools. They're dealing with the same stuff. They should be integrated.

Team activity is largely development as I'm developing. I want to know what other developers are doing and whether it's going to affect what it is that I'm doing. It needs to be integrated. If I'm working on an issue and somebody else is reporting, hey, this issue, this bug, I've got some more information. I've been testing it, I've got some more information. I don't want to have to sort of, I don't know, finish half hour of work, go onto the web browser, click on something, click on something else, get into the issue, find that they've posted. Oh well, it was that. No, I want it right there in front of me.

So when we have the, when we have real GitHub integration, what we'll be able to do is click project Fork in our editor in our development environment at the end. And when I do that it will go to GitHub, it will fork that, it will put it under my repository, my account in GitHub, it will create a new repository, it will open it all up and I'll be good to go.

Should do the same for distribution. When I want to distribute, it's already on GitHub and I should just be able to click a link, give it to someone else and they can fork if they want to issue integration. GitHub issues are great. People already use issues for slightly more than they were designed with the sort of Waffle.io, the Kanban board thing that utilizes Issues as bases its underlying database effectively.

Why don't IDEs do the same? I mean, all right, you might argue the skip of integration you need the Internet for but most of the time developers have the Internet and when they don't they can. There should be an offline option. So when we're doing task, feature and project management let's use issues. When we're doing collaboration let's use this system. It's already built for us. There's APIs there.

So that's some of the ideas that we have that we want to put in action over the coming 12, 18, who knows months. Any questions?

**[30:13] SPEAKER_01:** Are you only going to be able to work on the Solidity code or are you going to give some editing capabilities as well?

**[30:21] SPEAKER_00:** At present it's going to be designed mostly for Solidity but there's no reason why ultimately we can't add an abstraction platform to allow it to be used for other code as well. What I would like to see is a multi language support. So specifically JavaScript as well because JavaScript is going to be a very important part of this and from JavaScript you're going to want to call into contracts so you're going to want some form of AST analysis for JavaScript so that you can do all of that cool documentation stuff and parameter up front, head up documentation. So yeah, ultimately I'd like to add just multi language support in there.

**[31:01] SPEAKER_01:** Dependency on contracts that's already deployed and it's not part of your application. Particular case.

**[31:08] SPEAKER_00:** Yeah. How you manage this, if I go back a few. So this would come forward with the contract repository integration. So the idea is that there's a contract repository. It doesn't necessarily store the source code of the contract. It may be closed source but what it does store is the JSON. If you remember a talk earlier, there's a JSON representation which is kind of like the header file of a contract that it would store.

There's no reason why a developer of a contract wouldn't put that in. It's free information. It just helps people interact with their contract and it's easily derivable and that would go in the repository alongside some documentation, whether it's contributed by the author or other people. And it's that it would look up via this URI system and the URI system ultimately will be integrated with the Solidity language.

So you use the URI to cast from an address, from a generic address into a contract and then when you start calling that's then an object of type this URI this particular contract when you start. I don't know if the contract's called A, A.that will bring up the methods that you can call whether it's in JavaScript or Solidity.

Is it time to slowly improve Aleph Zero with this type of feature set or just have their own tracks developmentally separately from the latter? Aleph Zero is at present rather a bed of nails. It does most things that you're going to ever need to do but it does it in ways that are very much not designed around the developer. The idea is to have this additional IDE and basically sort of push Aleph Zero to power user or people who are just interested in mucking around and viewing the blockchain and really push the IDE as the primary way of developing dapps. Victor. Yes.

**[33:11] SPEAKER_02:** So three quick questions. First is so, is this a block, right? So it's not existing, right?

**[33:20] SPEAKER_00:** That is correct, yes.

**[33:25] SPEAKER_02:** Does it exist in some...

**[33:26] SPEAKER_00:** Yes there is, we've just about got to milestone one I believe. Is that correct, Jan?

**[33:34] SPEAKER_02:** Second, you mentioned that we don't want to deal with files. I get a bit scared. Obviously people understand what files is, what directories is. Even if you have proper GitHub integration, I mean even with GitHub you need to have files and people understand how to transport maybe that project with the zip anyway, it's like blasphemy. So how is it for example with the contracts it seems to have like if you only had the names.

**[34:03] SPEAKER_00:** Yeah. So I suppose if you think of it it's not that files won't be used underneath and it's not that ultimately the developer will have access, won't have access to their files if they want access. It's simply that it shouldn't be necessary to understand the concept of a file because actually it's not actually necessary. It shouldn't be a first class citizen. It should effectively be an implementation detail that you can drill down to if you want but that you don't have to.

So with the contracts, to take an example, it might be that the contracts are stored one in each file and the file's name is that contract name .sol. I mean that would be a very sensible way of doing it. But you know, just to mix things up a bit, it may be that you store them in the same file. So all contracts may be stored in a single file.

**[34:53] SPEAKER_02:** Magic functions.

**[34:56] SPEAKER_01:** Well, it might have a tendency to...

**[34:58] SPEAKER_00:** Sort of end up creating a sort of pseudo proprietary format which you don't want. So there would be. I mean, you know, it's open source. If it does something really terrible that developers don't like, they'll change it. So it's not going to make anything proprietary.

I suppose the point is that files as a thing don't need to exist for this. And with the notion of zips, well, again, it may be that developers want to have a zip, in which case they're free to make a zip from the directory. I mean, it's going to be a directory because as you said, GitHub works in this way, but it doesn't mean that it has to be shoved into the developer's face.

Now, what I specifically want to avoid, so that if you're after a real use case for this, it's I rename a contract, and yet the file is still the old name of the contract. So if I've got contract foo, I rename to bar. But I've still got foo.sol. Now, as a programmer, I shouldn't be forced to look after my files as well as looking after my code.

**[35:59] SPEAKER_02:** Exactly. But automatic renaming is just as scary.

**[36:02] SPEAKER_00:** So, I mean, I would argue that it's considerably less scary than that.

**[36:08] SPEAKER_02:** And the second, can we get rid of the semicolon at the end of the line?

**[36:15] SPEAKER_00:** You have to. Well, we could have a separate panel discussion about that.

**[36:24] SPEAKER_03:** Yeah, I saw many questions regarding integration of some of these features, possibly with other editors. You mentioned that it's all in the library right now in Gibson. So glance would integrate with the IDE directly. Yes, we would just call the functions of the library. But couldn't we also have at least some, like the AST printing or other features made into a file by solc just for some special argument so that other editors can also integrate?

**[37:02] SPEAKER_00:** Yes, and I believe it already does. Is that correct? The format is not really possible, but. Okay, but could be made. So. Yeah, I don't. Yeah, why not? Why not? The precise priority of that task would have to be discussed, but in principle, yeah, I'm just mentioning because, you...

**[37:23] SPEAKER_03:** Know, we want developers to adapt it and we shouldn't, so no matter how good it is a specific editor on their face, sure.

**[37:31] SPEAKER_00:** That won't be the case. So they'll always have the command line compiler if nothing else. Alex.

**[37:39] SPEAKER_04:** So two questions. The first is, am I missing a part without Swarm. Is Swarm integrated at all?

**[37:47] SPEAKER_00:** Potentially, yes, absolutely.

**[37:52] SPEAKER_04:** Is it integrated in more than one way? And what will happen to the pins?

**[37:59] SPEAKER_00:** I mean it doesn't look like that progress is moving. It may feel the worst. As for Swarm, yes. It will be possible to set up within the deployment script or within the test and debugging environment. So within the tests and debug definitions, a set of key value pairs for Swarm for the resources that you might want there.

**[38:23] SPEAKER_04:** What about say, for chatting about GitHub issues or storing the project itself?

**[38:33] SPEAKER_00:** Well that's right. Indeed, exactly that. So click New project, it makes a new project in GitHub, checks it out and you're good to go.

**[38:45] SPEAKER_04:** I guess we could store everything in the git repository somehow, but then that could also. I mean you could mount IPFS locally or we could maybe that's just. You might not need the file system.

**[39:02] SPEAKER_00:** That's a possibility too. So I'm keen to go with things that are already working for now.

**[39:09] SPEAKER_01:** But Daniel, is it part of the vision for it to become eventually self hosted? I mean to get rid of GitHub and just host it in Swarm?

**[39:19] SPEAKER_00:** That's something that could certainly be considered once Swarm is again, you know.

**[39:26] SPEAKER_02:** Or IPFS, which is version.

**[39:29] SPEAKER_00:** Yeah, for instance, Sven, what were your...

**[39:33] SPEAKER_01:** Reasons to say, okay, we create a completely new IDE instead of just attaching it to Eclipse or some other idea with plugins?

**[39:38] SPEAKER_00:** So mainly because I wanted to avoid forcing other software into the system and making more dependencies, making more things that go wrong, more moving parts. I kind of wanted to keep it towards a single code base that we had full control over. That made some sense to me regarding the need to integrate into the blockchain.

So I know Eclipse is pure plugin and technically you should actually be able to do any of this with it. The other reason of course is that Eclipse is Java based and Java's utterly horrible. Sorry Roman.

**[40:43] SPEAKER_05:** There are so many things that do that in the idea that it's Eclipse, like you can extend it easily and you can combine it. And one main thing is we've got a co teaching project that seems to be coming up a lot.

**[40:55] SPEAKER_00:** Lot is like collaborative or pair programming with video tutorials side by side.

**[40:56] SPEAKER_05:** And especially in this sort of area, you might want the legal person or the business person and the contract person you're debating, you're writing together. It just seems that to extend the type of users and to get it, it should maybe be early. I'm sure you're thinking about or things like that to do that. I mean, you mentioned like Google Docs. I mean, that's classic. So what are your plans with regard to collaboratively working in an educational or other settings?

**[41:39] SPEAKER_00:** So the screenshot, wherever it was, is a first effort. But yeah, actually dynamic pair programming. So having, seeing the other person's cursor, Google Doc style, chatting, maybe voice over IP at the same time. With what, as you see the other developer altering things. Yeah, I mean, absolutely. That's what it's all about. Eventually time will take, Tom. Good things come to those who wait, though. Okay. Any other questions? No. Cool. Thank you.
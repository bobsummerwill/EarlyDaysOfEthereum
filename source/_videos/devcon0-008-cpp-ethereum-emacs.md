---
title: "Ethereum ÐΞVcon-0: C++ Ethereum and Emacs"
date: 2014-11-25
author: Lefteris Karapetsas
embed:
  url: https://www.youtube.com/embed/805SMR0uEi0
---

Presentation on the C++ implementation of Ethereum and integration with the Emacs text editor for smart contract development workflows.

## Transcript

**[00:00] SPEAKER_00:** Yesterday too. I am Lefteris and I will be working in Solidity and generally C development for Ethereum. This talk will be about having an Emacs development environment for Ethereum. It will be quite a short talk, so even if you're not interested in Emacs, I guess that it may get you interested.

Quick question. Who except from Felix that I know of is actually using Emacs here? Who is using Vim? Who knows what this is? Okay, good, great. Can we discuss Emacs versus Vim? No, that's not in the... no religious wars here.

So goals of this presentation would be to familiarize with how to develop for CPP Ethereum with Emacs and also some ways that we can develop for Ethereum in Emacs, like develop Solidity contracts, maybe make you guys like Emacs more. That's a very ambitious goal, but yeah.

So why Emacs, right? The advantage is that along with Vim, it's one of the most popular editors. As developers are our user base, we should provide easy ways for developers to develop for Ethereum using one of the most popular editors. It's extremely customizable and it's a tool that suits our needs since we want to be creating languages, IDEs around the contracts, etc.

Well, disadvantages is that you really need to customize the editor. I mean, anyone that has opened the vanilla Emacs must know that it's really a difficult thing to use. And as this temporary computer shows, it's a memory hog. Emacs for some people may mean eight megabytes and constantly swapping, or Emacs makes a computer slow. Something that shows that it actually consumes a lot of memory. Just for your reference, it actually... the original abbreviation was editor macros.

So how do you set up a nice environment in Emacs then? If not using the vanilla editor, there are many different environments that you can use. I would go with using a package manager called el-get. Specify packages for C development, set them up and get to developing.

So this is Elisp code. It's the Lisp flavor that powers Emacs. So only with this small snippet here, basically you have a package manager that will install, update and synchronize your packages whenever you open your editor, whenever you open your computer, if you run Emacs as a server, which is what you should be doing. And also when you transfer your setup to a new computer it has various commands. This will be the most important one so you can download packages, install packages, delete or update all the packages.

And for a clean Emacs setup basically you would have something like a list of packages and the call to synchronize the packages. So whenever it would, if it's a new computer and it reads this setup it would contact probably GitHub, download all of these packages, build them if there's a makefile and load them into your Emacs load path.

So but what is required for C development? People will tell you different things. Older developers would go with Emacs default which is CEDET. I would suggest packages through my own experience have become very useful over the years of development and that is RTags, autocomplete, Flycheck, Projectile, and one that I'm advertising, Malinka, is a package that I have made which is a small package that acts as glue between the other ones.

So Malinka, the only thing that it does is create project definitions. And so this is a project definition for Ethereum. Basically it feeds the data to all the other packages, so to tags creators or to syntax checkers because we may need to, we will need to know the include directories of the project, the macros, the defines that are used, et cetera. And also we have like compile commands so that we compile the project, test command to easily run the tests.

Yeah, RTags. So this is an amazing package that's quite new. It interfaces with Clang. It's actually not Elisp code, it's a native code. It's made in C++11 and creates a client server that creates a... it's a client server interface that has a daemon running in the background of your operating system and creates a memory database of all the tags of your project. For CPP Ethereum, because we have one big makefile that makes the whole thing, it's over 2 gigabytes which is quite a bit but it's very fast.

Once the database is created you can find the references of your functions where they are used. You can get autocomplete and you can get what is called in Clang as fix hints.

So in a bit more detail now, I'm pretty sure that the resolution is not so nice but. So there is a function and you would like to see where it's used. You can just basically with one key combo see all the references very easily and jump around the references.

Autocompletion for example, this is from our P2P library in C. There is... can you see it? There is a Boost basic resolver basically from the ASIO library of Boost. And just by typing R, you see the type and you get the autocompleted functions. And this happens without any delay like it happens in other inferior let's say Emacs packages.

And a very nice... it's too small. A very nice thing that Clang has is fix-its. So it kind of runs in real time. It runs a checker on your code that does static analysis and provides hints. So for example here this is from the scanner of Solidity and there is the location is valid method but it's misspelled and the Clang static checker actually realizes that, tells you that it's misspelled and it gives you suggestion as to how to fix it. Which you can apply immediately with basically this key combo which is a default but you can customize it.

Another very useful package is Flycheck that basically runs syntax checkers for any language that you may desire. Python, Lisp, C. For C, it uses the Clang syntax checker.

Last but not least, Projectile is a must have package for Emacs development environment because it automatically indexes and creates projects by using the version control system. So I don't really need to say that you know CPP Ethereum is a project. I don't need to index any files, I don't need to do anything. All I need to do is remember some key combinations and I can easily switch between header and sources, compile the project, test it, grep or ack or ag or whatever you have. You can also do version control commits and various other interesting stuff. I would refer you to the documentation of the project if you want to learn more.

So that's about C, but what about Ethereum? So how can we develop contracts inside Emacs? I mean Solidity is still under development. Someone from the forums of Ethereum actually developed a Serpent mode which you can get here but as for Solidity, over the weekend I made the Solidity mode in Emacs which is for now just the syntax highlighter, which you can see here, and an indentation, so it properly indents and highlights the syntax of Solidity.

This is the contract that I think Chris used in his example of online Solidity Compiler. Right, the ballot contract. So as I said, for now it is very simple, just highlighting and indentation. But in the future we can provide autocompletion just like any other language. As soon as we get the AST out of the Solidity compiler, we can feed it as input data to any autocomplete package in Emacs. We can also integrate with the debugger when that's possible and also with other tools that will be developed for the IDE, for Solidity.

So yeah, that's it. As I said, a small presentation for Emacs. So, any questions or what is this Emacs thing?

**[00:01] SPEAKER_01:** Are you thinking of doing something in Vim as well?

**[00:02] SPEAKER_00:** No. I don't even know the key bindings in Vim. Cool. No questions. Okay, thanks.
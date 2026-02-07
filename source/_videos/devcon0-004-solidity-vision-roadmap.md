---
title: "Ethereum ÐΞVcon-0: Solidity, Vision and Roadmap"
date: 2014-11-25
embed:
  url: https://www.youtube.com/embed/DIqGDNPO5YM
---

Presentation on Solidity, Ethereum's smart contract programming language, covering its design philosophy, vision for developer experience, and technical roadmap.

## Transcript

**[00:13] Gavin Wood:** Hello again everybody. Welcome to day two of DevCon Zero. I'm going to start by talking a little bit about Solidity, the new contract language. And then Christian, where is Christian? Christian is going to continue with the implementation and a lot more sort of details and roadmap of the future of it. So I'm just going to basically go into what drove the original sort of need for a new language.

So our main issue is that we need people, lots of people to write contracts. And as often it is brought up, these contracts need to be correct because once they're on the blockchain you can't change them unless you've got some sort of update mechanism in place. But that brings along a whole slew of other questions like how do you trust that the updates are going to be legitimate? So these are the two main things that we're concerned with. Lots of people are able to write contracts and that these contracts are correct.

So one of the obvious ways of getting more people to write contracts is to allow them to write it in a language that they're already reasonably familiar with. So since a lot of our prospective developers are going to be people who already understand web technologies, HTML, JavaScript, CSS, it makes some sense to have the contract language be syntactically similar to one of these, JavaScript, leverage the existing skill set as it's there.

We also need to, a language is only as good as the concepts it can express easily. So it makes sense to build in the concepts that we know we're going to need to use often, a contract language. It makes sense to have contracts as a first class citizen in that language. So what we do is we take the notion of contracts and we take a paradigm that already exists, object oriented programming. And if you think about it contracts can very easily be considered classes or objects depending on whether you look upon the instance of the contract or the contract, the prototype of the contract. And so we base the language around this notion.

Similarly within Ethereum, contracts have storage. Now having to store things in terms of literals is almost like having a beautiful high level language and having to store your integers as bytes. It doesn't really make sense. So what we do is we say right, well we are going to support the storage but we're going to do so with an abstraction layer and actually what the programmer sees is just what they're used to, which is to say usable types, strings, structures, integers of various sizes, booleans.

And then finally contracts do a lot of I/O. And whereas in normal object oriented languages you may have ways of passing parameters, as in parameters and out parameters. C for instance uses pointers or references to do that. If you've got, there are language idioms that allow you to have multiple outputs, sort of as part of again a first class portion of a language. I believe Go is one of these. Jeff will probably be able to confirm that wherever he is. Yeah, and so this makes a lot of sense within contracts where we are going to want to call things in and then take data out of the contract without having to worry about things like references.

So then we come on to making things, you know, how do we make things correct? How do we make it most likely that these contracts are going to be correct? Well the most obvious way is unit testing. Right? But unit testing, at least with traditional sort of basic unit testing frameworks, is going to require effort, at least a small amount of effort from the programmer to put the unit tests in. So what we do is we devise the language, or at least the language development environment combination, to make unit tests actually easier to have in than not. So we do things like already have a space where the unit test goes and then the ability just to press Enter and you get another unit test. So just make it incredibly easy to place the expected results or a set of expected results in there.

The second thing that really helps us guarantee that a contract is operating according to specification, for some simpler specification than the definition of the contract in code is this notion of formal proofing. So who is familiar with formal proofing? Anyone at all? A little bit. Okay, so formal proofing is the notion that you can describe, you can specify some expectation of a program and that this expectation can either be proved or not proved. But that happens at the point of compilation, not at the point of running the program.

So you can specify, for instance that you expect, no matter what state the program gets into, you can expect that all the balances will add up to a particular number. And what you can do is if your program is written using a particular number, non-Turing complete, but a particular language, still relatively rich subset of it, you can use this, a compiler can use this at compile time in order to guarantee that that statement always remains correct, always no matter what, as long as you only use the methods. But of course there's no other way in Ethereum than to use the methods that will always remain true.

This is used in existing, I think it's used in a lot of safety critical environments. Nuclear power plants I believe use techniques like this. The Rolls Royce, the big engines that you see on the side of airliners, the reverse thrust mechanism. This also uses the microcontroller for that also uses formal proofing. I know that because my old university helped develop that particular piece of technology. So it's in use already but it's not widely used. And so it makes some sense for contracts which cannot be changed once they're in there to use similar technology.

And then the final thing is the documentation. Documentation is absolutely fundamental to our security model. When the decentralized application wants to make a transaction with the blockchain, wants to sign something with the user's key, it's really really important that the user can read a statement as to what is going on with their key. Because if they can't do that we're back to step one. This is absolutely fundamental to this notion of having a sort of more trustworthy interface to massively multi user applications.

And so we build the documentation system actually into the language. Now this is, you could argue that Doxygen, Javadoc already sort of have something similar and you know they do. But what we're going to do is we're going to build on that and we're going to have rather than just placeholders actually have evaluatable expressions within the documentation itself.

So contracts as first class citizens. Here's an example. Can I stand in any one place that will allow everybody to see? Probably not. This gets most people I guess. So you've got the idea, you know people who code a bit in C will probably, this will, oh dear, void is wrong. That should read function. So it looks a little bit like a class as you might expect. You've got set and get, you pass a parameter into one. This should read function get returns uint but the other slides are correct. And then you would use it by saying right, well we've got an instance of this contract. We'll ignore how we actually get that instance for now we can set it.

**[10:00] Christian Reitwießner:** Just call.

**[10:03] Gavin Wood:** So super easy OO style interfacing.

**[10:14] :** Because in this case it's quite counterintuitive like store number should just be a function or like why is it redefined as a contract itself?

**[10:24] Gavin Wood:** I'll answer that later. So if we move on to the storage facilities. Again it should be relatively easy to see that we have this notion of a state which is also known as the field, the members of a class in this case, it's a uint and then we can define our set as just setting it and our get as returning. So this to a C programmer will be super simple but to a JavaScript programmer as well this portion of it will also be reasonably familiar. The returns bit is a bit different but and the fact it's typed but can't really get around this.

Now the storage facilities extend so what we also are able to do is map and this is a fundamental construct in this language. We can provide mapping from an original domain range, range from an original range in this case the range of addresses. So this is the type of address which is a 160 bit integer into some arbitrary domain, in this case endpoints and we specified an endpoint as being IPv4 and port. This is a bit C. The syntax is still up for alteration if anybody here has some ideas to make it slightly more JavaScripty without making it too difficult to parse.

And then we have the idea of setting and we can make a new one, assign it super easy stuff, delete for killing it. Variadic returns. So if you want to get the information of an address we can just specify the two return types. Easy enough.

Now the formal proofing is probably the most interesting and challenging part of this. I imagine Christian's looking forward to that particular portion of the project. The idea behind it is that we have, here's an example of a cash contract. So you give to somebody some amount and you check that the amount is greater in the caller's balance. Then you subtract it and add it to the destination, check the balance. That's even enough. We can either mapping so map our address to a numeric type and that's the balances. Again easy enough. We got this construction. So this is the initializer. So we're just going to initialize the whoever created the contract to you know a billion or whatever some pre-mined amount.

And then we have an invariant right? This is the really clever bit. So this is the bit that says at all times no matter what this contract must always satisfy this piece of sort of prototypical set theoretic maths. What we're actually doing is we're reducing, well we're going to map the idea of value of. So value of just in this case is the idea of taking each item in the balances and just taking the value, so the balance itself rather than the address. So we're going to map that to balances, just get a set of addresses and we're going to reduce that set of addresses with the plus operator. So that's to say we're going to sum some of them. And what we're saying is that should that sum, sum of the balances should always equal a billion.

And what the compiler is able to do is go through the only non-const, the only mutable method, so the only method that actually changes the state, which is this one, and do a formal proof of this code to check that if it satisfies this constraint at the beginning and this code executes, it will always satisfy the constraint at the end. And in this particular case it does. And so the compiler would be happy.

Now what that gets the author is the ability to state in the documentation that this, for this line of code it says at all times total balances will be a billion. Now someone coming to this contract who maybe has some reputation, it could be like the Ethereum Foundation or the EF or I don't know, whoever it is, will be able to check that that line of code indeed is well representative of the documentation line above it. Give that a tick. Yep, that's valid. And then they don't need to check anything else because the compiler does it for them.

So when the user comes along and they say oh, the Foundation made this, the Foundation ticked this line that says cash at all times in this contract is a billion. They can trust it. They're like, great. And in none of that did we have to actually look at this code. I'll come to it at the end of it.

So the final thing is the inbuilt docs. So that's kind of what I was saying earlier. We have the Doxygen style at the moment, triple slash, which I guess most of you are probably familiar with. The interesting thing of this is the backtick. So the backtick allows us to insert arbitrary expressions, JavaScript expressions into the documentation. So what this does is it provides a notice for the user. So when the user sort of clicks through on some dapp and gets a transaction that the dapp wants to submit the transaction into the network, this is the message that comes up in the browser before it signs it.

So there's like a sort of black box in the browser, right. That contains all the secret keys. And ultimately this could be controlled actually not in the browser itself but it could be controlled by a trusted computing portion of the hardware. So something for which even the operating system doesn't have access to. And what this would bring up a message. It would say transfers and then it wouldn't actually say amount. Right. It would say the actual amount. It would place the amount in there. So it evaluate what amount is and then stream it into this, into this text cash from, your account message or call it give you either the name if you've got a name attached to it, if a name reg has got a name that you trust or just the hex or maybe even a little graphic to the account, controlled by and then again the same thing but the destination returns the cash. Don't really care about that.

And then you've got the construction. Creator of the contract is endowed with a balance of a billion. Okay, that's easy enough. It will probably insert message.caller so you. And then finally this magic line. Total cash in the system is always a billion. And this is the thing that the auditor or whoever, whoever is thinking that there are many auditors, I mean you know, it's decentralized, checks this line. Yep, yep, that's fine. That means this. And that's the magic. When the user comes to look at it, they get an absolutely trustable statement. Cool.

So those are the basic driving factors and rough solutions to them. Christian is now going to go into a little more detail. Then we'll do a question and answer session at the end and you can bring any points down. Okay.

**[18:53] :** So yeah, now let's see how this is all implemented. First, what were the requirements for Solidity? Gavin already told us about that. So it's a contract oriented language which means that classes are contracts. It is statically typed from the syntax, close to JavaScript. And when you are typed to JavaScript you get something which is close to C or C++. The built in language documentation and some language subset that allows formal proofs of correctness. Yeah, so coincidentally this is exactly the contract Gavin also showed. So you already know that.

**[19:50] Gavin Wood:** Yeah.

**[19:52] Christian Reitwießner:** Then the ubiquitous coin contract. There we see something we've not seen in Gavin's talk. The language is statically typed but still it's not necessary to always specify the types. You have this keyword var, which can be used for local variables. And it's similar to C++11's auto keyword, which means the type is just taken from the type of the first assignment to this variable. So I think that's quite convenient.

Okay, then, we see something. Users can define their own types, so they can define structs. And then mappings can map basic types to any type. So we can have a struct as the value type. We can also have mappings again as value types. We can also have contracts as value types. And vote is the struct type here. So you can retrieve from the storage from this mapping here, the value which is stored at the sender's address and then assign values to this local variable. But this doesn't really. So this actually assigns it directly to storage. Because vote is not a local variable that is stored on the stack. It's just a reference to the storage. So you can directly access storage here.

Okay, some details about the compilation process. It consists of six stages. The first stage is just parsing. After parsing we have the basic abstract syntax tree, so we know the structure of the program. The next step is resolving identifiers. So words, identifiers, strings can refer to user defined type names, they can refer to function names, whatever. And these are all resolved in their respective scope and assigned in the abstract syntax tree.

And after that step it's possible to infer and check the types so that assignments do not conflict in types and functions are called with the correct number of arguments and so on. And after this third step it's possible for an IDE to actually use the abstract syntax tree for things like autocompletion or checking where a variable is used and all this nice stuff we want to have. And the fourth step is compilation to an assembly language. Then this assembly language is optimized and finally compiled to bytecode.

Some details about the type system.

**[23:10] Gavin Wood:** Um.

**[23:12] Christian Reitwießner:** Statically typed means that all expressions in this language have a fixed type that is known at compile time and an operation. So it's not possible for an operation to involve two different types. So you cannot add a string to a number. But it is possible to do manual type conversions. So if you manually explicitly convert the integer to a string, then you can add them. And at some points automatic type conversions are done if it makes sense and if no information is lost. So we will see that later.

The types that are currently implemented are unsigned integer, signed integers and hashes of various sizes. So this X is always the size in bits, from eight bits to 256 bits in eight bit steps. And the difference between integers and hashes is that arithmetic operations are not allowed for hashes because it doesn't make sense. And a special case of a 160 bit hash is address where and for an address, not even bit operations are allowed, but instead you can send ether to that address or query the balance at that address. Then we have a boolean type, mapping, structs and contracts. Later we will also have strings, but that's not implemented yet.

Okay, I hope you've seen this already. So this is also available online. It's the Solidity Compiler compiled to JavaScript to be run offline in a browser. So sorry, that's what always happens. Okay, so this is a basic contract without any content. And on the right hand side we see the compiled opcodes, the compiled binary or hex version of the binary. More detailed assembly. And at the bottom we have the abstract syntax tree.

And if I enter something in the function we will see the types that are inferred from these literals. So it's in. So the type of a literal is always the smallest type where it fits. In this case it's an 8 bit unsigned integer. And if we add an 8 bit unsigned integer to an 8 bit unsigned integer we again get an 8 bit unsigned integer. Nothing too fancy.

So it gets interesting when we use larger values. So 7000 is a 16 bit unsigned integer and we add an 8 bit unsigned integer to a 16 bit unsigned integer. This 8 bit integer is implicitly converted to a 16 bit integer. And what if you add like 200.

**[26:35] Gavin Wood:** To 200.

**[26:38] Christian Reitwießner:** Where this sum the type system ignores overflow. So it's just about. Yeah, so one, we always know that the type of the result of a binary operation is one of the types of the operands. So only one of the operands is converted. So we can now assign that to a variable and we will see that x will have type 16 bit unsigned integer. Okay, what happens if we, if we want X to be an 8 bit integer? We get the error that the 16 bit integer that is on the right hand side is not convertible to the 8 bit integer on the left hand side.

Okay, something that is perhaps also interesting is what happens if we add a negative number to a positive number. So the compiler complains that it cannot find a common type. And so the type of minus 1 is signed bit integer 8 bits and 8 is an unsigned integer of 8 bits and so you cannot convert one into the other. So there's no common type. Of course we know that both of them can be converted to a signed integer of 16 bits without losing any information. But because of this restriction I told this is not done automatically, but we can of course force that manually and convert this minus 1 to a 16 bit signed integer and then it works. And X is also signed integer of 16 bits.

**[28:46] Gavin Wood:** Okay, you check it also on the variables like tables.

**[28:50] Christian Reitwießner:** What do you mean?

**[28:51] Gavin Wood:** If you have a variable plus variable, you check the questions for afterwards instead.

**[28:56] Christian Reitwießner:** Of.

**[28:59] Gavin Wood:** Can we do the questions?

**[29:01] Christian Reitwießner:** It works on arbitrary expressions. Okay. The optimizer. So Solidity does not compile to LLL, but compiles directly to EVM assembly and it uses LLL's assembly class, which also includes the optimizer. So if we improve the optimizer, then Solidity, Serpent and LLL will benefit from these improvements.

I already did some improvements. So the LLL optimizer is. So most of the steps in the LLL optimizer is just a pattern of opcodes is mapped to another set of opcodes. And if the number of opcodes decreases, then this is applied. One of these patterns is constant folding. So if you write 7 + 8, then the optimizer will not do this addition at runtime, but it will do it at compile time and just directly push 15. And I added some other operands for this constant folding because they were more widely used in Solidity.

And another optimization is POP optimization. This happens if you do some computation and it does not have side effects and you just discard the result of the computation. Then the optimizer removes the whole computation.

Okay, let's see an example. First without optimizer. Okay, so we have to look at the assembly now. From tag zero to this tag three. That's the body of the function. And we see it does push 0, i.e. it initializes the local variable to 0. Then it pushes the two operands 8 and 7 adds them. This swap stores it at the location of X and POP removes the old value of X.

And if we activate the optimizer so it pushes 0 and then it pushes F which is 15, swaps it, stores it and removes the old value. So this is not yet optimal because we know it's not necessary to initialize X to 0 when we change its value afterwards. But yeah, the optimizer is not finished yet. I would say to see POP optimization we have to remove this X.

**[32:10] Gavin Wood:** Let's see.

**[32:15] Christian Reitwießner:** No, you also have to remove the local variable. So, yeah, what happens here now is. Okay, yeah, tag zero, that's the function body, and nothing happens.

Okay. How does Solidity use memory and storage? We've already seen everything is zero initialized. We can trust on that. And local variables are currently used only on the stack. So it doesn't, it doesn't actually use memory. It uses memory only for opcodes for operations where it's really necessary. This might change later because the EVM can only look at the stack at the 16 topmost position in the stack. So if we have many local variables or very complex expressions and we want to store something in the first local variable, we might have to look too deep into the stack. So we have to copy it to memory first and then unwind the stack and save later again.

The storage is allocated in a contiguous way. So if you have one struct and another struct, then they will sit directly next to each other in storage, where mappings are an exception because mappings don't have a size. So to compute the offset of a mapping, you take the. Or to compute the offset of a value in the mapping, you take the offset of the mapping, concatenate the key, compute SHA3 of that, and that's the offset.

**[34:08] Gavin Wood:** Of the value.

**[34:09] Christian Reitwießner:** I think that's more or less exactly how it's done in Serpent with the introduction. So in Serpent 2.0. So, yeah, the obvious way I would say.

Okay, reference to other contracts. Gavin already gave an example for that. A bit more detailed, we can include other contract files, contract source files, and yeah, use contracts also as values for mappings or directly in storage. And we can. So namereg.addr is an address. We can. So if you write it like that, namereg is a contract type. This is just usual type conversion. So address can be converted to a contract type and then we store it in storage. From this point on we can use NameReg and call functions on that. And for that we don't need the full definition of the namereg contract. We only need to know its interface. So this NameReg.sol file can be a simple file which has all functions but not the function bodies.

And it's different for this line here where we create a new contract and store it at this point in storage. So here we actually need the full definition of the coin contract to create it. And when it's stored we can use it to call a function send amount to. So that's a function we've seen in the second exception sample.

Yeah, what are the plans for the future? I think we will have a complete first usable version by the beginning of December. So yeah, after DevCon 0, the current state is that most of the basic features are there. What is missing is actual access to the blockchain. So query balances and send funds and references to other contracts. But that's not much work I would say.

So future areas of work are yeah, I shall write some tutorials or actually create a specification of the language. I think. Then depending on feedback from users we might add some new features to the language. We might need to improve the optimizer, but that depends on how the language is actually used. So we will have to look at some real world example contracts, then work on documentation. So this NatSpec documentation where the next. We'll see that in the next talk and actually creating the IDE and then work on static analysis and formal verification and of course bug fixes and refactoring that can always be done.

How is that? Am I on time or. Okay, so yeah, one planned language feature. I don't know if that's interesting. Anonymous structs. So you can do mappings from a struct type without actually creating a name for it. You can. So functions that return multiple values, you can just store them in local variables directly and also return them like that. So I think that's something we want, but that's not implemented yet.

Some ideas for the optimizer. I think it's really important to be able to use other contracts as library contracts somehow, at least for simple functions like computing the minimum or finding something in a list. And for this it's important to. So calls to other functions are quite expensive because you have to move all arguments to memory, create. So run this call opcode and then retrieve them from memory again. And if the function is small then it's much more efficient to just copy the code to that location. And another benefit of inlining function calls is also that the optimizer can actually optimize something there.

Then it's perhaps necessary to reorganize the local stack. So for example, if two local variables do not really overlap in a function, they can use the same stack slot. And if the feedback results in really really bad performance for the compiler, then it's perhaps necessary to consider some simple intermediate language where more optimizations are possible than on this stack based EVM code.

Some ideas for static analysis. Const functions are not enforced currently. That should be done then. What is also quite easy I think without doing the whole process of formal proofing is to determine the value ranges of local variables and check whether some overflows can happen. So if some addition was protected by prior to that checking that an overflow can happen and perhaps also checking that from the value range some equality comparison or inequality comparison can never be true. And then we see that the developer did some error there. So some code is not reachable at all.

What is also useful I think is to estimate the gas usage at some source line so that while writing a contract you actually see how expensive the line is and you can perhaps change it to be less expensive. And what we probably also want is if you issue a transaction you have to set the gas value and you probably want to have some estimate on how expensive it is, some lower and upper bound.

This of course will in the end. So the actual gas cost will in the end depend on the order transactions are introduced into the blockchain. So yeah, will not be absolutely correct but I think it's so we can provide good lower and upper bounds for the gas usage. Okay, that's it.
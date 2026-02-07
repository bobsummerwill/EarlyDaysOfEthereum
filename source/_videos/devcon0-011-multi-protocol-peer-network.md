---
title: "Ethereum ÐΞVcon-0: Multi Protocol Peer Network Framework: Vision and Roadmap"
date: 2014-11-27
embed:
  url: https://www.youtube.com/embed/FqWOeJJmNQc
---

Technical presentation on Ethereum's multi-protocol peer-to-peer networking framework, outlining its architecture, vision for extensibility, and development roadmap.

## Transcript

**[00:15] Alex Leverington:** So, subtitle here is Vision and Roadmap. However the slides will be more somewhat technical and maybe philosophical, but the vision is simple. It's to create a protocol that multiple applications can run over that is encrypted and provides certain guarantees. And this has become more apparent over this week that this is an interest and it's in demand from many people. So people who are building dapps, we saw a few on Monday and Ethereum itself. So in Turing complete fashion, we are doing a similar thing with the network protocol in that it can be used for more than just Ethereum.

So, a little bit about me. I was born and raised in Texas. So the YAGNI thing that Sven pointed out, we would say "y'all ain't gonna need that." Which is important in networking because we don't want to put things on a network that we don't need. It adds complexity and that's not good.

So before I started programming I worked in networking. I had a strong interest in networking and network security, and helped build Internet service providers, that kind of thing. Got into programming, helped write a C BitTorrent tracker that was. So BitTorrent itself was controversial. And the reason that I mention this is because it's important to remember that we're adding encryption here and this can be a double edged sword. So our objective is to build what we need for the protocol to have integrity and that includes encryption. Anything beyond that, we would like anything beyond that to be able to be built on this protocol. If it's feasible something else could come along that's better. There may be other protocols out there already that have the potential to facilitate this role.

So what we would like is a multi protocol peer to peer protocol. So right now if you use BitTorrent, the peer network that you're connected to and the things that you can do with that network and those code bases is to send and receive files. And it's really efficient because of how it's done. So now if we want to allow multiple protocols to use a similar peer to peer network, we're starting to layer things and if you have two layers, that's usually not too difficult to do. Something just needs to be lighter than the other different properties, whatever or you just go back and forth. It keeps it really simple. We want to start adding more layers to this. It gets really complicated really fast.

So with the protocol for Ethereum, scalability, efficiency and usability are really important. If the network is slow, I think we can all agree that that wouldn't be a good thing. Faster network, that's not the goal, that's not the most important thing. But between the two this helps with robustness so the network can respond to events faster. DHT tables can be kept more up to date. So the general status of the network can be more robust and stable if it's quick, if it's efficient.

Privacy, we'll talk a little bit about privacy. To me I think that encryption is a form of privacy. So if we are encrypting traffic we are automatically adding some form of privacy. So the Internet as most application developers know it, is pretty, can be laid out simple. So a lot of networks run on Ethernet or perhaps they run cell phone or ADSL, these things. So, for example DSL, actually most DSL connections use a form of Ethernet, Internet protocol, TCP and UDP. So an interesting thing about these protocols is they have their own sort of forms of how you use the protocol. So if you want to build an application that uses TCP, there's a lot of things that are going on in the background to allow that to work to begin with. So if you just took TCP and you put it on a small network, you're fine. If you take TCP, IP and you put it on the Internet, with just the simplest Ethernet IP and TCP IP it won't really, there's a lot of problems.

So an important part, also each of these, well these two have address resolution. So Ethernet has addresses and we have address resolution protocol. IP has addresses which, some kind, there's ways that you can, you have discovery. So on the routing side of things we have protocols that are used for infrastructure, notably MPLS is on all of them. So the interesting thing is that a lot of problems that large peer to peer networks need to solve to be robust are really problems that engineers working on keeping the Internet up, they are problems that these engineers are also researching solutions for.

So to give an example of this, here's a diagram of just a network diagram from a like a test thing. And it gets complex really quick. We don't have cell phones in here. There's a lot of things going on with the Internet. So this isn't here, but there could be a SONET ring here so that if one part of the fiber gets cut, everything just goes the other direction around the ring. So yeah, what's the diagram? I have a hard time reading it from behind. So this is an example of different kinds of networks. So frame relay switched. And then for other connectivity, just imagine that every single one of these connections is a different way of the connection routes messages differently but yet they all get along on the Internet most of the time.

**[09:31] SPEAKER_01:** So can I ask a very silly question?

**[09:34] Alex Leverington:** Yes.

**[09:35] SPEAKER_01:** Like for a software developer, why do I care?

**[09:39] Alex Leverington:** I'm gonna get to that. Okay, so do we have solutions? So considering privacy as well as scalability of the Internet, there's a lot of people working on this. IPv6 is, there's a part of IPv6 that tries to help with privacy. Now one interesting thing about IPv6 is they are 128 bit addresses. So they're not quite large enough for us to use on a peer to peer network that depends on cryptographic properties for shaping the network or for peers connecting. And we'll get to that later.

So, recent issue, this is a blog post from an engineer at MIT. And IPv6 has this really interesting thing where everybody who actually gets an address doesn't get a full address and they can generate their own private addresses just ad hoc, out of nowhere. And so it's kind of like an ephemeral address. But the problem is that routing equipment relies on addresses that don't change, because it can do so quickly. So if every computer in the world changed its address every five minutes, it would be really, really difficult to scale that so that every message can go from its source to its destination. The amount of memory and processing power for core network equipment would have to change or algorithms have to change. So yes.

So if you're interested in IPv6 and how, there is a project that's trying to build on IPv6 for privacy and encryption. It's called CJDNS, that's pretty cool if you want to check that out. So a lot of what I'm covering here is the Internet as we know it today for most application developers. So all major browsers today should be using TLS, which is like version 4 of SSL or something like that. They changed the name of it.

**[12:36] SPEAKER_01:** TCP encrypted.

**[12:40] Alex Leverington:** Yeah, so TLS is a protocol that runs on TCP/IP. So it's similar to HTTP or IMAP or POP or any application protocol except TLS is to say well use TLS. So start your connection with TLS and then it will be encrypted and then just start sending messages once you know that it's encrypted.

So a few of the things with TLS is that TLS itself is pretty good, it's well researched. The attacks against TLS are often edge cases and rely on attacks on other cryptographic algorithms or at the end of the day the issue is the implementation. So TLS used by everyone, today everybody uses root certificate authorities, and this is centralized, that works for certain use cases. But Ethereum is decentralized.

So the usability of TLS is also somewhat of a black box because if you're a developer and you write JavaScript web applications or something, there's no way for your web application to determine if it's running on an encrypted connection or not. And if your web application wanted to determine if it's running on an encrypted connection, it couldn't find out who it's connected to over this encrypted connection. The only way that we could do this right now is to actually implement TLS inside of TLS with JavaScript or something which would just be not fun.

So on a more concerning level, TLS most of its problems have had to do with browsers implementing it and making it really easy to downgrade the connection. And so this has been used as an attack vector to basically when the browser goes to connect you intercept a packet and you quickly get the browser to connect with a lower security so say 56 bit encryption instead of AES versus AES and downgrade the line. And implementations are really geared towards running HTTP over it, not other protocols.

So one last thing, maybe some of us here have seen this slide before. And again to your question, I'll cover what this stuff is about and why. So this is an image from a paper from researchers I think at Harvard. And they're basically saying okay, you can use netflow analysis to figure out what's going on with Tor. And the reason that I present this is because so this isn't necessarily a problem, but it's something that I guess you could say freedom fighters and people interested in privacy and freedom, there's ongoing research here. So how do we actually have privacy? Like how can we send and receive information over the Internet? And there's no way for somebody to figure out what is being sent and received.

So what's important here is really not the attack or its Tor or anything like that. What's important to know is that in data centers all over the world there's equipment for netflow analysis. And what this does is this equipment reads every packet that comes into the network. Some of them do this based on sampling so they'll read 5% of every packet that comes onto the network and extrapolate information from that. So the purpose of this equipment is to help, is to help their network. They don't install this equipment to eavesdrop on traffic or figure out what people are doing. Oftentimes they install this equipment because it helps figure out where denial of service attacks are coming from.

So back to the double edged sword thing. There's a lot of cases where there's a balance. And yeah so when I started working on the networking stuff, Gav was like yeah, so we're going to run everything on this, no pressure. This is actually really, really applicable. And I'll get to that in a bit.

So yeah, so the Ethereum network protocol as we have it today is Ethereum relays transactions, block hashes and blocks, whisper messages and filters. Right now presumably Swarm will be content hashes and content blocks. I'm probably missing something here. Later I expect that we're going to add things like simple payment verification. And so right now we also sort of have P2P here. And all it does is exchange peers. So each of these protocols sort of has different requirements kind of.

So Ethereum and Swarm are both kind of hybrid. So that's a typo. The relaying of transactions is fairly important. Relaying of blocks that can be fairly important. Same with relay hashes. But the throughput of relaying blocks is much higher than the throughput of relaying transactions naturally. So if you wanted to send 10 transactions down the line and 10 blocks, the 10 blocks are always going to use more bandwidth than the 10 transactions. Now by the way, don't know for sure. It depends on the size of the contract.

**[19:57] SPEAKER_01:** Yeah, if you understand 10 empty blocks and 10.

**[20:01] Alex Leverington:** So if you sampled 10,000 blocks this is true. Okay. Because the blocks contain the transactions. So blocks are actually groups of transactions. So it could be argued that some of these messages need a higher priority than others. And what does higher priority mean on a network? That means that there's lower latency, the message gets there faster than the others.

So onto answering the question earlier about everything with routing and privacy, we won't be solving those problems with this protocol. This protocol is for a stable, robust network protocol that's encrypted and multiple applications are running over the protocol. So there won't be anything to do with routing priorities. Multicast or broadcast. Right now multicast and broadcast is written in code so send to every peer and so it's really, it's unicast, or the direction of the flow. So some protocols similar to what will be proposed provide a mechanism such that you can connect to something and say don't send me data, I'm just going to send you data. Or they can say the same thing.

**[21:47] SPEAKER_01:** By the way, are you okay with me asking questions on them?

**[21:50] Alex Leverington:** No. Wait till the end. Yeah.

So some good reading material for all of this. If you're interested or you're working on similar systems, is the SPDY drafts from Google, this blog post which is really recent and does a great, great job of describing network buffering and what do you do when you have to send out 100 megabytes of messages and you can only send out 1 megabyte, and more in the context of scalability, not necessarily a single application. BitTorrent is excellent. The idea of BitTorrent, it takes a file and breaks it into a whole bunch of pieces, creates a Merkle root hash of it, and then uses that as being able to hand out pieces. And the way that's done is applicable.

For the DHT stuff which I won't cover, Amazon Dynamo blog post and Kademlia. These are both really good. The Amazon Dynamo is just a great introduction.

So I couldn't come up with a name. So it's called RLPx. And so it will provide an encrypted line, multiplexing multiple applications over the line, flow control, and then later constraints, peer discovery and peer ratings. Each of these sort of fit with privacy, scalability, efficiency or usability. And the constraints, this could say constraints and metrics, which is sort of connected with the peer rating system. And I don't have slides for that.

So I swear there was a picture or something here. Yeah. Okay. So encryption is the way that we're using encryption is relatively new. So last, I don't know, five years. There's other projects that are doing this. We're not the only ones. But most of the web right now is encrypted with TLS. And we know how this works with certificates and the server has a certificate and they send it back and forth and things like that.

So what we're doing is every node, every endpoint of the connection of a connection, if you want to call it that, is generated via a public private key pair and the address of the public key is the address on the network, or yeah. So of course everything should always be encrypted and authenticated.

So I'll get to the authentication bit. But so a lot of protocols, they authenticate every packet or every message. And what's being proposed here is to have authentication essentially out of band from the application. So the wire line is doing authentication. In fact this network protocol is authenticating the traffic rather than the cipher, the box cipher, or the application itself.

So there was an article posted on Skype about using crypto and I'm just going to read this. Designers and implementers should refrain from optimizing well studied protocols to achieve some specific application need unless they're prepared to revisit or reevaluate the above security group. Small insignificant changes in protocols can result in invalidating the guarantees of such proofs.

So a lot of factors in here, in this paper were about key sizes and parameters. And this was released by ENISA, link this paper earlier. So with encryption we are not changing any parameters. We are using the cryptographic primitives as they're expected to be used. However we're combining a few things because we are multiplexing application traffic over a cryptographic channel. So we're basically changing the time in which we are processing information about authentication. It's streamed instead of coming up with some new protocol or using a self authenticating block cipher.

So encryption, the first version of proposed encryption protocol is this. So the implementation is that I want to connect to a peer so I need to get their public IP address, sorry, yeah public IP, port and public key. So I will always have the other, the remote public key. They might not have mine. And I might get it from the DHT, I might get it from another peer, or of course I already knew, I already know this peer's public key.

So when the connection has started the first message that's sent by the side that initiates the connection is they using ECIES, they use the remote's public key to encrypt their address concatenated by a signature of information. So Ethereum in general is relying on our ability to recover public keys from ECDSA signatures and so what we're doing here is we can extract, we can recover the public key from the signature. So when the connection has started I'm sending my public key encrypted with their public key. So this also means that if I send this to the wrong person they're not going to be able to decrypt it and they won't know my address.

Can you please explain the sign brief key? This is signing with ECDSA and the private key is used to sign the ticket or the nonce. So the ticket is essentially, the previous, based on the previous session and then concatenate a random value which is used to do ephemeral Diffie-Hellman. So this part and how this works, this is similar to TLS. We're just doing a lot of things in one message and we're relying on the fact that we know the other side's public key. With web browsers today, you have to connect and find out what the public key is and they have to tell you the public key. And so we're not doing that as a part of starting the connection.

And then this nonce, the details of this nonce is in the proposal. And it could move into the encrypted payload or not. This needs to be reviewed as to whether it's better to do one way or the other. And I'm open at the end of, afterwards of getting together with anyone who's interested in helping determine what the best thing to do is because this potentially changes, has side effects based on where it's at.

**[32:14] SPEAKER_01:** So what does that nonce do?

**[32:16] Alex Leverington:** It's used for changing, for updating the session. So after every successful connection, you update the session. And so when that is combined with using ephemeral public keys, then if somebody steals your laptop or they steal your server and they have your private keys, they could have packet logged everything coming out of your server and they won't be able to decrypt it. So that's a part of that.

Yeah, yeah. So can you just say again what the nonce is? Tickets are derived from inside. They are used as, this one, yeah, the ticket. So the ticket is a value that you have stored from a previous session from a previous connection. And the nonce is because there is no value. And so this establishes a new value.

So this is similar to what's being done with TLS. So TLS uses this for deriving key material for the shared secret. And that's what we're using that for as well. And as I said, and I want to reiterate, the purpose here is to create something that we can use. This needs to be reviewed. Because while we're not doing anything that's not by the book, there's implications on how we use this information to derive shared secrets, and to update them.

So multiplexing is really simple because we already have it. Right now the way that we're doing it is each sub protocol has like 10 packets, or five or whatever. And we're stacking those into one packet type. And then based on what protocols both connections agree on, is how we determine which packet type is which packet type when we receive it. I think the networking guys are familiar with this and that's called adaptive message IDs. And there's a wiki article, page on this actually.

**[35:34] SPEAKER_01:** It was awesome. Why are you canceling?

**[35:37] Alex Leverington:** Well, so the question marks. So it's been proposed that we go to a system where we have a protocol type and a packet type and it's just two values instead of stacking them. So whether we do that or not, we have to get together, we have to decide maybe tomorrow. And so. But it's an implementation thing.

**[36:12] SPEAKER_01:** So I think the idea behind the adaptive message ID was to make it harder for filters to filter us.

**[36:20] Alex Leverington:** So.

**[36:23] SPEAKER_01:** It doesn't give serious. Yeah, it's one of them. But I kind of like it. It was smart.

**[36:30] Alex Leverington:** Yeah, I mean I like it too.

**[36:34] SPEAKER_01:** Who's that in?

**[36:36] Alex Leverington:** Well, there are people that don't like it. I don't think that they hate it. I'm 50-50. I like both. But the adaptive message ID I think is sort of a little artistic. It's very much like RLP, maybe a style thing.

**[36:59] SPEAKER_01:** It's like to say, hey, we are smart.

**[37:06] Alex Leverington:** So, flow control. So we're not actually going to do this, but I think it's funny, that messages on the Internet are obviously information on a journey through space and time. So what's interesting is these vehicles can operate differently when mixed together in the same environment. And with running multiple protocols over a single line, we have a very similar thing.

In Berlin there's a lot of cyclists, which is really interesting because I can ride my bicycle to this office faster than I can drive a car here. Usually five minutes faster and it takes ten minutes to cycle here. So, also applicable, buses, planes, mass transportation are carrying a lot of people from point A to point B. And in most cases it's economical to maximize how the vehicles are built and how they travel. Flying around an empty plane across the ocean is not a good idea.

And so for the same reason, flow control helps ensure that the bandwidth that we have available is used, is maximized. So one of the most similar implementations to this is SPDY, which is for HTTP over TLS. This should really maybe say Google's data centers instead of Googleplex. And I haven't read the latest draft, but prior drafts, essentially the flow control for SPDY is for infinite space and time.

So my understanding of SPDY is that you can have as many applications or channels as you want and each channel does its own flow control. Which, that can work really well in an environment where I have a browser and my browser connects using SPDY to an application server running a certificate which matches who I'm talking to. So in a peer to peer network we are connecting to peers and we don't know who they are.

So where this is relevant is that it might not make sense for us to go this route because what Google can do with this under the assumption of how browsers are working is that Google can optimize their systems from the browser all the way to the source of the multiple sources of data within their own system. So for Google, SPDY is multiplexing their entire operations, which is mostly web applications, Search and Gmail and Maps. And this works great for them. It also works good for browsers because browsers are, you hit the page, it downloads and it's done. And so the goal of SPDY is so that that happens as fast as possible. And while the protocol itself allows for all of these channels, a web browser, when you click and you open a page, only has a finite amount of information. And so the web browser will only, nothing out there is going to really exploit that.

So with RLPx we have the Ethereum protocol as it is with just a slight change on the packet type. It's encrypted. And the flow control is simple and deterministic.

So for the flow control, what I want to do is talk about that with the whiteboard as sort of a part of the Q and A. By the way, how many people by chance have read the SPDY white paper? Okay, cool.

Okay, so how does this work? So the application uses send data, so it sends a message. Compression. I'm sure there's some questions on that. Header is added so these three steps. So the header may be first. The authentication is done based on the byte stream, not on the messages. And so what we say is that every eight kilobytes we insert a SHA3 hash of the previous eight kilobytes. And then so our overhead for authenticating the traffic is reduced substantially. And in addition to that, operates on the same signal that's used for framing. Then encrypt the bytes, send it out, and then we get out the other side.

So why is flow control important? So a network connection has limited bandwidth. So in many cases network connections have a fixed bandwidth. Ethernet typically does. Although to a single application you don't know how much bandwidth is available. It's an unknown factor that changes over time and it can change substantially. And only the operating system has control over this.

So with Ethereum, we want to allow dapps to run over the same peer protocol and sometimes you have to make decisions. So if you have a network connection that is only one megabit per second and you need to send 10 megabytes, you're going to have to wait. And if your application needs that 10 megabytes sent in a certain amount of time, you need to do something about this, at least be able to tell your application the data's not going to get there in time.

More importantly, when you're running multiple applications over one connection, we don't want one application to be able to take up all of the bandwidth. So when the network connection gets to the point to where it's full, you can't make the network connection bigger. And in fact it's quite likely that if the network connection gets full, congestion actually goes up and it's going to even get smaller. And your choices are to drop the packets that you're wanting to send or the other option is to block the application from sending more packets.

In order to do this, the application, our networking layer needs more information about the connection because as is, if I want to relay 100 megabytes of blocks, I can tell the OS to send 100 megabytes of blocks, and the OS might stop me at 2 megabytes or 4 megabytes or 16 megabytes. It's different for every operating system.

So we want to employ a mechanism so that there's essentially a pipe, there's bandwidth for each sub protocol that's running on the line and we want to do so in a way that there's enough information exchanged between the two peers that they know when it's overflowing. Or we can also use this to know when there's more bandwidth available. And if there's more bandwidth available, maybe we can use this for Swarm, maybe we can use this for something else. That's not a part of the protocol right now because that's an implementation detail.

So this is the raw spec and this part was not in the Etherpad or on GitHub. This is currently on both. And as can be seen, it needs to be cleaned up and formalized. And I think it would be helpful to have some diagrams so that the implementations are similar.

So next steps, in addition to implementing this is peer discovery constraints on the way that the flow control system works. And that will imply guarantees and that will also imply that we will have some insight into what's happening on the network at scale when we're doing testing and simulations and things like that. Because we can log what's happening with flow control and change some parameters and then see what happens. And so essentially we can actually work over a long period of time to optimize the throughput of the entire network to optimize the throughput and the latency of the entire network.

And what RLPx does is it just says that we have framing and that there's information that the peers will send delta window updates back and forth each other. And then the peer rating system which is definitely an implementation detail, that's not a part of this but it's a part of libp2p. So that an application that is actually a peer to peer application and depends on an exchange of peer to peer messages can ensure that it's connecting to good peers for what it needs.

So maybe your needs are Swarm right now and you aren't mining Ethereum and you don't need to download all of the, you know, you're just doing transactions and Swarm because you're using simple payment verification. And so you'll want good peers that provide responsive simple payment verification. And obviously however Swarm works that could be another protocol or another implementation but yeah, so peer reviews. Okay, that's it.
---
title: "Ethereum ÐΞVcon-0 - Whisper: the Multi DHT Messaging System with Routing Privacy. Vision & Roadmap."
date: 2014-11-27
embed:
  url: https://www.youtube.com/embed/BrWlAtfqF6s
---

Discussion of Whisper, Ethereum's decentralized messaging protocol with routing privacy, covering its vision and technical roadmap for integration into the Ethereum ecosystem.

## Transcript

**[00:14] Daniel Nagy:** So Whisper, there's been a fair amount of misconception as to what Whisper is, what it does, how it works and what it isn't. So a lot of this talk is going to be dedicated to explaining the goals of Whisper. A little bit of background. Whisper started as a project, at least conceptually, about 20 months ago. So April 2013 it was devised basically as an application for implementing an exchange, a decentralized exchange. So you know, around about the time Bitcoin became really famous in the press. 2013, January, February, it's like oh yeah, Bitcoin, I remember that from Slashdot in 2010 or whatever it was. Yeah, that seems to be worth a bit more now. And I thought well why wouldn't a decentralized exchange be great? We've got this decentralized currency but we've got these centralized decentralized infrastructure. So I looked into doing a decentralized exchange and just sort of interesting thought project, wondered what a back end might be like.

When I considered how it might be implemented, immediately of course I thought about what abstraction this was underneath the application, what was really going on and is there a pattern there that could be reused elsewhere? And that really provided the basis to Whisper. At the time I wanted to do it as a pure JavaScript thing. So the idea being that you would go to a, I don't know, GitHub site or something, download a web page which had a JavaScript portion in it and the JavaScript portion would connect to a peer to peer network. Something that we, similar to what we now know as Alex described in the last talk. And on that it would set up its own, it would set up what I'm going to describe to you now and it would use WebRTC in order to connect all the nodes together. So basically you'd end up with a web experience but it would be an entire content wouldn't be actually stored anywhere singular. It would be washing around the peer network, all hosted by browsers. So that's the background coming to Ethereum.

So fast forward 12 months and what we're beginning to see is like yeah we've got this blockchain, true and complete, consensus, everything's synchronized, everything's in lock step and actually with a 12 second block time you can do reasonably decent communications with it. You could do a reasonably high-ish frequency exchange for instance. The issue is that if you move state in lockstep, which is what a blockchain does, a blockchain provides you with a decentralized service to move state in lockstep across the entire network. It's really expensive to the point where a single transaction that would be done in microseconds on a modern machine, probably nanoseconds, costs, you know. Well, we don't know exactly how much, but probably no less than half of half a cent and probably up to five cents. This is really expensive. So we don't want to use the blockchain as the answer to everything. Blockchain is an excellent answer to some problems, but it's definitely not the answer to all the problems. Certainly not the moment and probably not for the foreseeable future. We need alternative ways of doing communications.

So when we think about massively multi user, I should say MMA, but anyway, massively multi user applications. And when I say massively multi user applications, I'm talking about the sorts of things that we see implemented on the web these days. So I don't know, email, Twitter, but also going into things like Facebook, obviously going into things like MMORPGs, so RPGs where you've got games based on the notion of having lots and lots of people all interacting with each other.

So the sorts of comms patterns that we see are static content publication. So where you've got a single piece of information that you want that people need to know about, maybe some more than others, but nonetheless, it's static. It stays there for a very long period of time, if not forever. Another communications pattern is the notion of a connection. So the notion of two people or two applications or two endpoints, wanting to communicate either unidirectionally or usually bidirectionally. This is the sorts of things that you rely on when you use a voice over IP application, when you use video on the Internet. And then finally the other sort of pattern that we see is this notion of transient datagram. So these are things that might sit behind an email instant messaging thing where you're typing messages on a chat. IRC sort of, Twitter's a good example of this. So Twitter is kind of different to the rest because Twitter is a publication thing, but it's a publication thing where the things that you publish are very small. And the things that you publish also have an identity that you can then look up, and filter efficiently.

So if we just go to the datagram patterns. We see some sub patterns within the datagram pattern. So I've called them wholly directed at going to a filterable global. So wholly directed I'm talking about where you have one or a small subset of recipients. And the notion is that nobody else is going to see this. So although most of us know that when you send an email the server is not going to be encrypted, the servers on the way. So the SMTP servers are probably going to be able to read your email unless you've taken explicit steps to encrypt it. But nonetheless when people send email they generally expect it to be private between sender and recipient. Instant messaging, roughly the same.

Partially directed. So this is where we've got the notion of multiple recipients or a distribution list. So Usenet, subscription services. And again the idea is that there is some privacy within this group. So it's a bit like email. Again Usenet, anyone can join it. But there is a notion for instance on forums of a password protected forum or an invitation only group, for instance in Skype.

And then finally what I've called filterable global. So this is where you've got information is actually plain. Anyone can join it. There's nothing special about being able to read it, no restrictions on it. But there's so much of it and you're only interested in a relatively small subset of that. It needs to be filterable. So Twitter's a good example. Here we use hashtags because so many Twitter feeds, we use hashtags in order to collate from each of them. Registry is kind of another example.

Okay, so for static content, when we do massively multi user applications in Ethereum or the Ethereum framework, we have some piece of technology called DHT, call it Swarm, whatever. And Daniel's going to mention some of his thoughts on this after this talk. For real time communications. So connection oriented between one or between a particular pairwise set of identities. We actually sort of, we have the. One of the things that will probably build into the P2P framework pretty soon is an ability to sort of say right, I'm interested in this particular node, set me up, make sure it's one of my peers and I'm then going to actually institute a connection. This of course is encrypted because everything on P2P is encrypted. But other than that it's a raw connection you're just sort of pumping data in and data comes back out.

But for the other, this is what the rest of the use cases, that's what this talk is going to be about. So the other, the other sort of thing that to some degree Whisper is designed to solve or at least mitigate is privacy and in particular routing privacy. Although there's been a lot of focus on everything should be encrypted HTTPS all the way. But the problem is of course that a lot of the time the metadata gives away enough information that your privacy is severely hampered. Furthermore, if there is an attacker of some sort that is reasonably well resourced, by knowing which endpoints are communicating, they can target endpoints and there are other attack vectors once endpoints are known and metadata provides this initial information that can, that can be used for such attacks. So really we really want to work, if we're truly serious about guaranteeing our privacy, we really need to work towards routing privacy. What's also generally referred to as this sort of dark, dark connection, dark Internet dark, whatever, darkness. It's not a good marketing term. I mean I prefer routing privacy but depends on the market.

Okay, so what is Whisper? So Whisper is an odd combination because it handles a selection of use cases and it's not specific to any one sort of primitive communication primitive that we've already got. And so it's difficult to really wrap your head around. In the first sentence I originally called it a messaging system because it can do messaging, but actually that's a relatively small corner case of the full thing that it does. So to really understand it you've got to accept that it's a hybrid. It's a hybrid communication system. Part of it is messaging for sure. So it includes things like authentication and encryption in order to do certain, provide certain guarantees that you'd expect from a messaging system. But it also provides other services more reminiscent of a DHT, that kind of make it muddy the waters a bit. So I'm going to, a couple of slides, I'm going to treat it from both of these, both of these directions so that you can, you can sort of see how it differs from each one.

It's dark so there's routine privacy. This is done by probabilistic, which I'll go into a bit later. And one of the other sort of key things is that it's oriented via keys, not destinations or origins. So this is something to bear in mind as you're looking at, as you're thinking about what this is doing. So origin and destination really just, it's dropped completely. It was never a thing. And this is why it really doesn't fit in with the traditional notion of a messaging system. We don't, they're not first class concepts in Whisper. Subject key however is a first class concept and I'll explain a bit more what I mean about that later.

So is it a DHT? Is it a distributed hash table? Kind of. If you treat it as a DHT what we can say is it's a multi key DHT, which is to say each entry in the hash table doesn't just have one key, it has many keys. So it's like a composite key. It can have arbitrary numbers of keys. It's also multi value which is to say there's not a one to one mapping, not a one to many mapping between the domain and the range. So it can have many keys that are the same that each reference different values. And when I say many keys, what I actually of course mean is many composite keys, many of the same sets of keys. And finally it's transient, the entries are transient so they stick around for a bit and then they sort of go away. An expiry date basically.

So okay, it's kind of a DHT, is it? How about, does it fit any better with a datagram transport layer? A messaging system? Well yeah, it's got the notion of broadcast, multicast and unicast. They're not really first class entities in the protocol but nonetheless they're very well supported. And each one through being a broadcast or a unicast or multicast, it's necessarily secure and authenticated. And it's also asynchronous so treated as a datagram transport layer. You can fire off a datagram, you can go away, you can go offline and there's a fairly large probability that it will be delivered, assuming that your time to live is sufficiently large such that the other node comes online before your message dies.

It's got some features that make it not impervious but resistant at least to a denial of service attack or a spam attack. So methods bear these measures. So one of them is a proof of work attached to a particular message or communication record. Another is what I call good behavior incentivization, which basically means that peers should try to forward messages which are most valuable to their peers. And this is incentivized, I'll go into it a bit later, but it's basically incentivized by saying, right, well every minute I'm going to kick off the peer that is noticeably least useful to me. So if you're all basically the same sort of usefulness, then I'll probably keep you all. But if one of you is noticeably underperforming, we can do statistical modeling to get that. Then I'm going to kick you off and replace you with either a peer chosen at random from a registry or one of my peers. Peers or one of maybe your peers. I'll find another peer and I'll replace you.

Next important sort of tenet of this is that we don't deal with endpoints. Endpoints are dealt with at the P2P layer. So what P2P gives us is a mesh network. So we were talking about this earlier. This sort of comes into this whole how do you do a lookup to we don't deal with endpoints, we don't care about ports and IPs. That's abstracted far, long time ago. What we deal with is identities. So when we say if we ever use the notion of recipient or origin, which we don't really as a first class citizen, but when we do what we're talking about is an identity. We're not talking about anything that maps onto anything physical because as soon as we get physical we run into problems with routine privacy.

Another aspect of Whisper is it's configurable. So when we take this notion of privacy, if we maximize privacy, at least at the moment, I don't know, maybe there's going to be some super awesome improvements in computer science and they're just going to solve this completely. But at the moment, when we maximize privacy, we sacrifice efficiency. If you've ever used any privacy preserving tools, Tor, FreeNet, whatever it is, you'll notice that these aren't as fast as the services that they seek to replace. So there's necessarily, at least at the moment, a trade off. What Whisper provides the user is to make that trade off configurable. So slider bar on the one end private, completely private, nobody knows what it is that you're doing, but it's slow. And on the other end, maybe a sufficiently well resourced attacker might be able to have a guess at what you're doing, but it's much faster.

The next tenet is that it's topic based. This is when I was talking about subject key before. So you don't watch out for messages that are addressed to you specifically. That would again compromise routing privacy. Instead what you watch out for is the sort of entries in this DHT or messages that are floating, washing around the network that look like it's the sort of thing you're interested in. Now, how do you say, well, it's the sort of thing I'm interested in. Well, there's an API, I'll get into that later. But basically each entry has a bunch of keys. As I mentioned before, these keys are derived from topics, so they're actually just the hash of the topics. And topics are just arbitrary pieces of data that describe something to do with the message.

Now maybe it's only something that you know and that your intended recipient knows. Yeah, so maybe for instance, if you want to communicate with an intended recipient, what you do is you hash your public key and hash there, together with their public key. And this gives you a topic. And this topic is sort of a unique identifier that's unknown to anyone outside unless they can guess that these two particular people do want to indeed engage in the conversation. So if they know that you two want to engage in the conversation, they'd be able to guess this, but otherwise it would just be a random, a random hash, a random topic.

Other examples of topics are things like application name hashed with particular part of application, for instance, application name IRC, particular part of application, particular chat room, Ethereum dev. Right. Taken together, those are two topics. You could even hash them into one single topic. And then you can then look out for these sorts of messages or put it another way, they get indexed into a global DHT. And you can look out for any values that have that index.

It's secure. This is important. This is something that you shouldn't, I shouldn't have to say, right? Protocols should be secure by default, but unfortunately many, many are not because they weren't designed with that in mind at the beginning. They didn't evolve especially fast. And now, you know, I have to point out that yes, it's secure. So when we get to the difference between unicast and broadcast. So this notion of I want to send a particular identity, this information versus I want to send everybody this information, everybody is interested anyway. It's the difference between encrypting it or not encrypting it, that's how it should be in email. It's the difference between selecting two or not putting two in. Well, that wouldn't really make sense for email, but you get the point. It should be this. It's not in present technologies too often and it should be. So it's this by default. It doesn't have any other way of differentiating between unicast and broadcast. If it's broadcast, it's plain. If it's unicast, it's encrypted. And of course it's encrypted with the public key of the intended recipient.

If it's a multicast, we have, kind of still working this out, but the basic idea is to pre distribute on an individual, session key for each of the individual intended recipients. They then remember that session key and when this message comes up, they can decrypt it with a session key. And if they want to send to everybody else, they of course encrypt with the session key and mail it out.

It's authenticated as well. It's like this is another really important thing that should have been in there in the first place. It should be there by default, but all too often it's not. Well, in Whisper it is. The difference between it being anonymous versus it having an origin is the difference between it containing a signature. That's how a signature is the only way, sensible way of giving it an origin.

**[17:45] SPEAKER_01:** Well, no, because there's the plausible deniability.

**[17:48] Daniel Nagy:** I'm getting to that. I'm getting to that. With the exception. So signature will be signature of something, not necessarily the sentence.

Okay, so what isn't it? It's not point to point, right? We're not dealing with a point to point connection here. That is a use case for some things, but it's not what Whisper is designed for. That's what some other sub protocol can do. It's not high bandwidth. High bandwidth is important for some things. It's less important for the sorts of use cases we have for Whisper, for Twitter. It doesn't matter whether your tweet gets distributed to the person who wants to read it in. Well, once they find out about it in a microsecond or five seconds, it doesn't matter. You're not powering out through 5,000 tweets a minute. Well, I guess some people do, but they're probably sad, lonely people you don't want to listen to.

It's not low latency. Again, it's not a big problem, for the sorts of use cases we're dealing with. It's not application level. This is not designed for one particular application. It is an abstract communications layer for doing a particular pattern of communication that we see a lot. But that hasn't been thought of particularly, at least in these terms. Most of the MMAs that use the sorts of things that this could address actually use it via a server's actual table like using SQL or whatever. They actually store particular entries in the thing and then everything goes through a server level piece of software which is backed by a database. So this is kind of getting to the point of a sort of fast real time distributed database. But it's a fast real time distributed database for some particular use cases nonetheless. It's not an application level thing. So it's not an alternative to email. So that's how it differs from some things like BitMessage for instance.

And it's not connection oriented. So there isn't this notion of having an ongoing connection that can be, you can do that. So you can have a session key and you can set up a session. It can be placed over this but it's a fit only for one or two quite specific uses.

Okay, so let's get on to routing. Two routes to routing. I was tempted to say two routes to root. I think quite a few horned up. One is, so we can either do it passively or actively. If we do it passively we give away much less of our privacy. So passively. We were sort of. Alex was mentioning some of this in the last talk. So this is where we have this peer set. These peers are just throwing messages at us, throwing entries in the DHT at us. And most of the entries we're probably not going to be interested in. So some peers will probably be closer to the sources of messages that we are interested in than others. There will probably be a difference in the distribution of the likelihood of getting a message that's interested in, a difference in that distribution for each peer.

So this is why we say, right, well if you're a peer that tends to give me messages that I'm just not interested in or maybe messages that are old. So that's another way of not being interested in a message. Maybe it's you've already received it from another peer. If that's the case I'm going to kick you off, I'm not interested in you from what you've got to say, I'm going to move to this other peer and give them a chance. So that's a passive way of doing it. And eventually over a sufficient enough time, and we need to do modelling, of course, to work out what this time period would be. Over a sufficient period of time, you'll eventually arrive at a peer set that more or less probabilistically delivers you messages that you're interested in.

The other way of doing it. So that's kind of like evolution. The other way of doing it is active. This is kind of like learning. So, you know, you've got evolution to evolve particular sort of traits, particular ways of thinking about things and then you've got sort of learning to actually learn skills. So it's kind of like talent that you're born with, stuff that you learn. So active is where you actually tell your peers, I'm not going to kick you off or anything. What I'm going to do is ask you to deliver this sort of stuff, these sorts of messages, this portion of the DHT stuff that roughly matches this pattern.

Now if you do that, you're going to be giving away a bit of what you're after to that peer. So what we do is we don't ask for explicit entries because that's too specific and we don't need to ask for explicit entries. What we do is we say, right, here's a mask. Am I going to. Yeah, I'm going to go into this slightly. Does everyone, when I say a mask, who knows what I'm talking about, about like a bit mask. A few people.

So the notion is that you've got a topic. A topic is a, actually I think it's 32 bytes, 32 bits. So it's got, it's like 01000 11010. There you go, 32 of these zeros and ones. I'm interested in a particular topic. Yeah, because it's, it turns out to be the topic of someone that I don't know is tweets, interesting messages or a particular hashtag. It represents a particular hashtag that I'm interested in on the Twitter dapp.

Now I could say to my peers, hey, this is what I'm after. This particular set of series of zeros and ones, this particular topic. Now if I do that, they know I'm interested in whatever that hashtag is. And that hashtag, I don't know might be smileykittens. And I might be really like, I don't want anyone to know I'm into smiley kittens. So what we then do is we form a mask. Now a mask is just another one of these things. It's another 32 bit series. It's mostly zeros. So it's like 0, 0, 00 and then maybe a 1 and then lots of zeros and maybe another 1 and then all the rest zeros.

And what this does is it says ignore these bits. So these now get set to zero, right? We multiply them, but we ignore. But what we do is we don't multiply the ones that are above one. Okay? So now all of these are zeros bitwise multiply, except for these and we provide both of these. So what we're doing is we're hiding most of the information because they're all, they're all set to zero. So it's like getting a combination lock. And then when you've locked the thing, you're only leaving maybe one or two of the numbers there. The rest you're just resetting back to zero.

And with only one of the two numbers left, they can match it against all the various other combinations and maybe there'll be a few messages that match and one of them will probably be the one that you're after and that will get forwarded to you and it won't give away that you necessarily have to smiley kittens because there might be another one that's like fierce looking dogs and that's got, that's a bit of a different message but it still has a one in this position and a zero in this zero in that position. The rest of the bits will be different, but then your peer will never know which one of the two it is.

So that's masks, that's a way of telling your peers what you're after without giving away actually what you're after or increasing the probability that you'll get what you're after without giving away what you're actually after. And that's a way of routing, of getting things to be routed to you. What they risk if they don't do this is disconnection, as I said before.

Now how do they determine which messages should come to you? So I went over the interesting topics. So you know, you mention which topics you're interested in. They tend to route those parts of the DHTs to you. The other two things that should influence whether you get forwarded a particular entry in DHT is the time to live. We prefer to forward messages that have a shorter time to live because they've obviously got less time to be distributed across the network before they die and everyone drops them.

The other thing is to make sure it's the highest proof of work. This is an anti spam measure. So this is if someone's pumping loads and loads and loads of messages onto the network, trying to bog it down. Well they won't unless they're very well resourced. They won't have the compute power to place a decent proof of work for each of these. Whereas the user that only has maybe one or two messages a minute can afford to spend a couple of seconds doing a half decent proof of work. And that's what allows them to rise above the crowd.

Now the masking and filtering as I mentioned before, you're able to stack the odds. The idea is of course that you here I mentioned that only two bits were set to the one and thus it's reduced from you basically split the amount of total messages that will come to you from all of them to a quarter of all of them. If there were only one bit set it'd be half of all of them. We can configure that number. The more bits we set, the more we narrow the search down, the more the peer knows. This number can be customized per peer, or per application. It might be that some peers you trust more, you give them more information. Some applications may be that are more sensitive. Maybe it's like the WikiLeaks application or something. And you really want to have greater privacy for the application and so you give away nothing or less.

This forms what I call a topic vortex in the network. So if you view the network as a mesh, you get your point is like a point of hey, I'm after this topic. Your peers know that you're after something like that topic. The idea is that they take that and they consolidate it with all of their peers and the topics that their peers are after and all of the other peers they then tell, hey, this is the sort of stuff that my peers are after. So I'm after this by proxy. And this is so you get sort of this notion of a transient mapping of topic filtering. It becomes reduced the further out from the center of the topic you go.

And of course it may be that the several nodes end up collecting in the middle in this topic vortex because they're all interested in the same stuff and all using the same applications. You end up with topic vortices forming.

Okay, so how do you use it, it's stupendously easy to use. It has three functions. The first one doesn't really do much, it just creates an identity, right? So new identity, that's how you use it. There's not much to it. It's what it does, it makes an identity. It gives you the public key for it. You're never allowed secret keys of course that would be too insecure. But it remembers that you've created this identity and it sets the public key aside and the sort of implementation part. And whenever you want to author a particular message or hash table entry, you author it with this key and it will sign it for you.

Next one is post. Post, as you might imagine, posts a message onto the DHT, onto the system. You can optionally specify a from and a to. You don't have to if you don't want to. You can just specify a from if you want. That will make it a broadcast message. Just specify a to. That will make it an elmer. You could specify neither. And then it would be sort of this weird anonymous broadcast that, you know, it's probably really useful for things like, well, things like WikiLeaks. So anyone can come pop a message on. Nobody knows where it's from. It's not directed to anyone in particular, but everybody can read it. Maybe you've got a topic, you know, too tired.

Okay, so you've got your set of topics. Okay. And this is a set, not an array. So the series is. The order is unimportant, it's just a set. This is actually just arbitrary data. In our Web3 JavaScript thing, the data, arbitrary data is prefixed with 0x or it's a number. And what it does is it takes the hash and then to get a 32 bit thing, it just chucks off the last 224 bits and you're left with 32 bits. The reason it's 32 bits and not the full 256 is firstly we don't really need 256 bits, there aren't that many topics. Second, a collision is unimportant. And thirdly, we've got data to save, we've got space to be saved.

Then you've got your payload. Payload is again just unformatted data. So again in the JavaScript API it's 0x, but we have a bunch of stuff that allows you to convert from ASCII and stuff. And I guess eventually there'll be ways of converting arbitrary binary data into this thing, but we don't have that yet.

The last two are the time to live. Integer number of seconds. It could be days, it could be just five seconds. It depends on whether it's important for you that your message actually gets to its recipient. If it's very important, you have a higher time to live. And it depends whether you want the message to stick around or not. So if it's something that you want, a job posting or something, you probably want it to stick around for a day or two before you go online again and refresh it. So that's where you have time to live.

**[32:15] SPEAKER_01:** What thoughts are realistic. Maxwell put a TTL. I'd say two or three days, but I haven't mentioned one. It shouldn't be an expiry time because you don't know later when that message was initially in.

**[32:28] Daniel Nagy:** So a very good point. But expiry time is calculated as time of calling POST plus TTL, and that's actually put in the message itself. So when the message gets distributed on the Whisper network using the wire protocol, it does indeed include an expiratory time.

**[32:47] SPEAKER_01:** No, no. So this is the user API, rather than the sort of internal, timestamp when the user sends it. And that's, I guess, if it's a future time, that it should not improve as it precessed. And.

**[33:02] Daniel Nagy:** Well, you know, if a node that has a. What would it be? A clock that's further ahead of yours, sends you a message that they think is valid and you say, well, it's further ahead, you'll just say, right, mark down this node. I mean, if it's only a couple of seconds ahead, then it's like, well, maybe their clock's a bit skewed. You know, you probably won't mark down much. If it's two days ahead, then it's like this node is really trying to pull one over on the network, you know, disconnect. This guy's bad. So, you know, it really depends, I think. Actually I've written a proposal for the clock skew adjustment. Anyway, so it should really be built into the P2P network level. And then nodes can. Peers can sort of negotiate, if one of them has a vastly skew clock because it plays absolute merry devil when you're, when someone's mining with a computer that hasn't been corrected for summertime. God, it's an hour ahead and then suddenly none of the blocks work.

And then finally priority. So priority is basically how much of a proof of work do you want to do? So it defaults to a small proof of work of like 100 or 200 milliseconds, so you barely see it in user level applications. But it still provides a decent amount of spam protection. But it's the sort of thing which ultimately as the network grows you probably want to raise between because there'll be lots of people who are trying to send lots of messages.

**[34:28] SPEAKER_01:** For TTL if you use number of blocks, does that get rid of some problems or is it problematic?

**[34:34] Daniel Nagy:** The Whisper protocol is entirely independent, so the idea is that it can be used alone.

The final piece of the API puzzle is watch. What watch allows you to do is to surprise surprise. Watch for things that people have posted. So when someone posts something on the Whisper network you get the notification that has happened. Now actually you'll get a notification at some point after it's happened and how long it takes for that notification is how efficient things are being routed and therefore to some degree what security level. Whether you put it up at private, in which case it'll take a long time before you're notified because you'll be filtering through loads and loads of random other stuff. Or efficient, in which case you'll be telling your nodes what you're after, your peers what you're after. You'll be steering really fast and this stuff will come relatively quickly.

Again, you've got the filter. So the filter is the topics. Now this is a subset of the topics that must have been posted with. So it might be posted with like I don't know, IRC application topic one. Topic two might be chat room. Chat room name. Topic three might be original origin. So original name of poster. Right. And it might be that you're in the chat room. You're not filtering on the original name of the poster because you don't care, because you want to go and receive everyone's posts. But you are interested in the other two. So you put the other two in here and when you're posting you put all three.

That way when you say, actually I am only interested in Alistair's posts because Alistair says really interesting things, then you'll filter on all three and you'll only be notified when those guys come. Optionally, you can also specify one of the public keys that you created with the new identity earlier. Now what that does is it says even though I can never tell who actually signed something, assuming that they weren't using topics to tell me. I know from this filter that the messages that come through will have been encrypted or will have been sent to me.

So being encrypted to me and being sent to me are the same thing. It doesn't make a distinction. So what you do is you say right, I'm expecting if these are the topics, that this will be the key that unlocks the data and it obviously unlocks it before it gives it to you. So then you say right, when something comes in, what's that? Change it. A function. M is the message in here is the decrypted message. So M now has things like data expiry, time to live, how much work was proved, all the rest of it topics.

You can also say, right, well what messages are there for this particular watch, for this particular filter? Tell me all the messages that are arrived and this can, well in future versions this may have a way of specifying time, date, times from. So I'm only interested in messages that came through from this point in time to this point in time. And finally you can install your watch to get a notification.

**[37:32] SPEAKER_01:** Do you get the hash topics back or the original topics?

**[37:35] Daniel Nagy:** You get the original topics. So the topics of the message, they're sent in plain, they're sent plain text because they're needed for the routing.

**[37:43] SPEAKER_01:** And the security filter will just add random filters to your filter list.

**[37:48] Daniel Nagy:** Say again?

**[37:49] SPEAKER_01:** So you said it was like a slider bar for how much?

**[37:52] Daniel Nagy:** Yeah. So what it will do is this number of ones that you include in the mask will be fewer. So at the maximum privacy this will all be zero. So you won't tell your peers that you're interested in anything. You'll just take everything and then it's up to you to try to steer your peer set to the peers that tend to give you stuff that's useful when you're watching.

**[38:14] SPEAKER_01:** Do you also set a minimum proof of work there? Accept that's possible.

**[38:18] Daniel Nagy:** Yeah. So that's, it's not in the API yet, but that's a reasonable thing to do as well.

**[38:23] SPEAKER_01:** Why is the filter. Actually my immediate idea would be the primary use for this is to, three messages sent. So I need to say what is it? Two. Two with my sense.

**[38:38] Daniel Nagy:** Yeah. Well the thing is that you have to know that the messages that come through are indeed encrypted with your public key. Now you can't two on its own doesn't filter anything old bold mentioning all mentioning two does is decrypt it with your public key, with this public key right here. What it doesn't do is check first that it's sent to you, because it can't check because it's never mentioned. It's completely opaque as to whether something is sent to you or not. And that's why you use the filter.

**[39:07] SPEAKER_01:** So if you wanted to do that, I think the post had is NFT to, which means that it's got a semi storage. No, it's a server. No, it's not. That's it. So this isn't what's sent on the wire. This is also just the direction how to encrypt.

**[39:22] Daniel Nagy:** So this is an API, right? What this isn't is the wire protocol. The wire protocol doesn't include from and to.

**[39:28] SPEAKER_01:** So what's it using it for? It's just the encryption.

**[39:30] Daniel Nagy:** Exactly. Encryption and signing.

**[39:33] SPEAKER_01:** So is it possible to sign to a subset of people, so say several public.

**[39:38] Daniel Nagy:** You send to everybody. So multicasting. Indeed. So for multicasting, you would first set up a subset of identities that you're interested in that you wanted to have. Read things as a group or receive things as a group. You tell them all a session key and then you would only encrypt, not to each of them individually, but when you want to send a message, you encrypt with a session key.

**[40:02] SPEAKER_01:** But it's still always the topics, the things that provide the routing. No one ever knows who it's encrypted to unless they happen to know that through the topics.

**[40:11] Daniel Nagy:** What can you see from the outside is basically the topics.

**[40:14] SPEAKER_01:** So if you're managing the whole network. But some of these topics tend to be aggregated to certain parts of the mesh or the node graph. And this changes over time. But you can't tell literally what the topics is because of master, you can't as peers, advertise that they're interested in particular topics. You can't tell what those topics specifically are. Well, not unless this mask is all ones. But assuming it's only a few dotted ones, I can't derive a hell of a lot of information about what just monitoring that over time as to, you know, you can note that something is common on Twitter at the moment and then map that because there's a certain pulse of topics in this area and then like two months later trace another and then statistically sort of really pin down the individual's topics and interests or not.

**[41:00] Daniel Nagy:** It's a possibility. It's something that we definitely need to look into for modeling and this is something I'll bring up a bit later. But the idea is ultimately you can, you can ramp down the peer steering and you can ramp down the masking. And in that case, sure, it will take a while before you receive stuff that you're interested in, but it will never be anything other than plausible denial. It's always plausible denial.

**[41:26] SPEAKER_01:** One more thing that if you're really interested in proceed, then one thing that you could do is you send. So you somehow agree with your recipient in advance in a large range of topics and then you send to a square root of that range and they add a search in a different random square root and then one of those messages will be there. So the external observer has no chance of it.

**[41:50] Daniel Nagy:** So following from that, there is actually a protocol that I came up with that allows this to happen. So the basic idea is someone posts a broadcast, they say, right, I'm interested in such and such. I've got a chair for sale. Right. Someone who might want to buy the chair says, right, I'm interested in buying this chair. I will send it to this recipient. But what they do is they put it on. So, they put the topic in. So now someone might know that there was a message being received, but they can't read it in that message. So it's now encrypted. You put a subject in, you put another topic in. That's just a random hash.

And now both of the individuals, both of the dapps, if you like know this random hash and that's then used as the next topic and that's just a random hash. No one can track what that topic mean, what it means at all. And so obviously that can then be probabilistically changed as the session continues.

**[42:50] SPEAKER_01:** So what's the overhead that I'm creating with full anonymity? Like, I don't have a feeling for that. So like fresh discovery of some message that I'm interested in, like how much time?

**[43:02] Daniel Nagy:** The honest answer is I don't know. It's something that needs to be modeled and it's something that hopefully some of our modelers can look into. I would hope with a combination of proof of work, a modest amount of filtering, and peer steering, it's reasonable for the sorts of applications we're going to have on 1.0 and then for 2.0 we can sort of do some proper research and work out ways that we can, that this can be optimized further with the same API. But the API is the most important thing for 1.0 to get people used to thinking in this paradigm and placing their applications in this paradigm.

**[43:38] SPEAKER_01:** Alex, has there been thoughts on routing and you might have covered this. I made a mistake preventing Hackett storms and also preventing denial service attacks. Now it's so obviously somebody can always do a higher improvement work. But then what if somebody just happens to have. I don't know, all he needs is really more proof of work than what is out there right now. Not necessarily than everyone else, because it's only going to be more than who's currently using it. So this person could just use up everybody's bandwidth and then everybody else. It becomes expensive for everyone else to use and now it's hard to use.

**[44:20] Daniel Nagy:** Yep. So if they can afford to put more proof of work in than all the other messages combined on the network, then it's going to grind to all. The question then is, well, how much proof of work is that? And would anyone really be interested in setting up a supercomputer or a massive collection of nodes to do a denial of service attack on the network? What would they gain by doing it? And that's a separate question, as is the question of whether it's actually affordable for anyone to do it.

**[44:48] SPEAKER_01:** We're going to do this for high frequency trading then. I can think of. I mean it's true, but the question is how much is there to be profited from it? And is this profit, is this profit sort of, in the same order of magnitude as the cost that it would take? And that's something that does need to be modeled.

**[45:07] Daniel Nagy:** I don't know the answer.

**[45:09] SPEAKER_01:** If the topic is truncated. How are the. So every message is broadcast to every node?

**[45:15] Daniel Nagy:** No. So the messages wash around the network. You're aiming for every message to be broadcast to every node, but that will never happen.

**[45:23] SPEAKER_01:** Yeah. At least not within a small period of time. So it's not that every node will have all information ultimately they're not building up to that. You're just sort of exchanging messages. The messages are washing around and eventually, you'll get something that you.

**[45:37] Daniel Nagy:** How do we prevent from a message washing around that it ends up just washing around in a circle? Well, if a peer won't forward a message to, the same message to another peer twice, so it won't go in a circle, it might die out early. But that generally means that it wasn't given enough priority or its time to live was too small.

**[45:58] SPEAKER_01:** So if I want to send you a message, but I don't want to reveal the content to anybody, I want the message to be private, then I have to agree with you on a topic. But then that means that I have to have sent you a message already. Difficult, difficult. You know each other's public keys. You can agree on a secret without, without any secret communication. That's the Diffie Hellman. Agreement solves it.

**[46:22] Daniel Nagy:** Okay.

**[46:23] SPEAKER_01:** Is it fair to assume that if I'm not connected to the right peers that there's a good chance I'll miss a bunch of messages that I heard?

**[46:31] Daniel Nagy:** Possibly. Especially if you're not broadcasting insufficiently, precise terms, what you're interested in. But in general, again it needs to be modelled as to precisely what that limit is. It may be that for the foreseeable future it's not a massive problem because people have very decent, very high bandwidth and you're connected to a sufficient number of peers and the peer network can be spread across properly well balanced that actually it doesn't and you know, it's just something that needs to be implemented in a model.

**[47:04] SPEAKER_01:** Is there any physical or biological process that this Whisper is most closely related to? I mean it's some kind of combination between whispering and active listening, but anything else, like, it's not. I mean it feels like a full.

**[47:18] Daniel Nagy:** I don't know, it's an interesting question and probably not one I'm going to be able to address, in a tractable time right now.

**[47:26] SPEAKER_01:** Is Whisper just a working name for the project?

**[47:29] Daniel Nagy:** It was not a working name, but it might become a working name given the amount. I know, I know, it's a shame. I really like the name.

**[47:38] SPEAKER_01:** Yeah, yeah. Like that's one question. Regular expression of filter is something that you command. A regular expression. Yeah, like I want to listen.

**[47:49] Daniel Nagy:** Oh, I see. Well, the thing is, filters are binary. Okay. The topics that they're filtering are not, but the underlying, because the hash is taken. The underlying thing is binary because you want it to be cryptographically secure. So what you don't want is for the by putting ones in particular places, it actually to be clustered around things of roughly similar topics. So you hash it so that the things that is clustered, the clusters are just completely arbitrary. It might be smiley cats, it might be face docs.

**[48:21] SPEAKER_01:** If you restart your dapp and you watch for the same topic in which you received a message with a TTL that hasn't been expired yet, will you see it again. And the next time you start your dapp or will you store it somewhere you sell.

**[48:35] Daniel Nagy:** You won't be notified of its arrival, but you will get it back when you ask for the messages. Assuming that it hasn't been been thrown out because it's not believed to be interesting to any dapps. But this is something that will probably be handled at a level underlying where you say, right, well this dapp was interested in these sorts of messages. I'll probably not chuck them out yet. At least not until dapp runs again and gets to register its interest again.

**[49:00] SPEAKER_01:** So the client even slightly persistent layer.

**[49:03] Daniel Nagy:** Yeah, I mean there's a possibility of a later sort of proof of concept or a later version where we can actually allow clients to say these messages. I know that the TTL, I know they're supposed to expire in an hour, but I'm actually really interested in keeping these forever. And they tick a sort of archive flag and they every now and again they have to sort of reassert, that they want to be archived and then they get messages.

**[49:26] SPEAKER_01:** Maybe you said it in but I missed it. So the topics that are in the filter are. They basically are those. Do they all have to match? Are they end of all subset?

**[49:36] Daniel Nagy:** Oh, sorry. Yes, they all have to match, but they don't have to match all of the topics. They don't have to be a complete set of topics for the entry. They only have to be a subset of the topics for the entry. So it might be that you provide two and the entry actually has three topics or four or five or whatever, but it includes this. Topics of the entry has to be. Have to be a superset of.

**[49:58] SPEAKER_01:** Yeah. Isn't a tag a better term? Because at least topics are in tags.

**[50:03] Daniel Nagy:** Yeah, tags, subjects. Key. You know, I had to land on one.

**[50:08] SPEAKER_01:** Alex, is the topic derived from a single hash or a double hash?

**[50:12] Daniel Nagy:** A single hash. Is that a trick question?

**[50:16] SPEAKER_01:** Absolutely, if there's a good reason. So it's sort of not a good reason. But when there's. So at the beginning when there's not a lot of topics. Yeah, I don't know. Okay, then. Well, think about it. Get back to me.

**[50:30] Daniel Nagy:** Can you do a pre image attack on 32 nodes of a hash?

**[50:33] SPEAKER_01:** Pre image? Yeah, where you just create a whole bunch of like, just a big table of hashes. Like a rainbow table.

**[50:40] Daniel Nagy:** Yeah, not so not for the keys but for like a topic. It's like IRC or something.

**[50:46] SPEAKER_01:** Oh yeah, that's a good point. Yeah, you probably could. Yeah. That probably needs to be.

**[50:51] Daniel Nagy:** Yeah, no, that said, if you've got a rainbow, you'd be able to do it with, an actual hash. It wouldn't get you anywhere because you would just, you could do it anyway. You could just search on the first 32 bits of an actual hash with a rainbow.

**[51:05] SPEAKER_01:** Okay. Anyway, yeah, so is this Whisper suitable for chat? Like application?

**[51:11] Daniel Nagy:** Yeah, that's one of the things that they would do. So something like Skype, Twitter, email. That's something. Well, I don't know, but with email I get latest is up to like a day. So, yeah, probably with the check you need.

**[51:26] SPEAKER_01:** I mean, it's true. Again, like exactly what, what I do is. All I know is I want to talk to Kevin. Privacy between the two of us. And all I know is in public, this, this is a dark level thing. So what this doesn't do is say it, give. It doesn't give you a direct line to me because. Yeah.

**[51:44] Daniel Nagy:** Okay, so, just, I'll just get to the end and then. Oh, sorry, example. Oh, no, no, I've only got. Yeah, I've only got a few slides.

Okay, so this is just a quick example. So we make an identity. There you go, new identity. What we're going to do is we're going to post a message to everybody, broadcast message, going to say, hey, I'm online. What's your name? So, what we do is we say the topics are just the application name. And this is a string. This is somewhere up there. It's like the Hello World application.

The payload is my name. So Gav or whatever. And then the next thing is, what is your name? Right, so it's just like the application is saying, right, well this is like a dapp level protocol. So the first field is going to be, so we can make the payload, I should say, out of a series of 256 bit chunks of data and all it does is append them. So my name and then what is your name? Right, and the idea is that on the opposite side the app will. Then the dapp will go, ooh, this is, this is Gav. He's after somebody, he's after some friends. Okay, so we'll reply to him and then we got like 100 seconds of the time to live and just give it a default priority of a second's worth of proof of work.

Okay. And then what we do is we set up a reply watch. Right, so this is watching out for these messages. Right? The reply watch has a simple filter. Oh, hold on. Right, jump to the next slide.

We set up a broadcast watch. And this is a simple filter. We're looking out for anyone who's broadcasting the topic of this application. So the Hello World application. So everyone running this code will be running it with the same application name. So they'll all be, seeing those posts that happen. And what we say is when something has arrived with this filter and we'll check to see if it's us. So if M from is my identity, well, we're not interested if it is, because we're just going to reply to ourselves. That wouldn't make any sense. We'd have to have very few friends for that to be interesting.

And if it's not us, then let's do something. So what we do, we've got a new message. So, we know that from this topic it's someone asking for our name. So firstly we grab their name, right? That's what this string does. It just takes their name from, the data. We say, oh, look, we've found a broadcast from this guy. They've told them we're going to tell them our name now.

So what we do is we sign, we make a post, we say it's from us, that's our key. We put it to them. So this as the data, the bit that goes in the actual DHT will now be both encrypted and signed. Signed then encrypted, so no one can tell it's actually from us. The topics are going to be the application name again and then also, who it's from. So this is the way of routing it back to them. This is a super simple way because we're just putting as one of the topics their id, their public key so they can look out for their public key as a topic. The payload is going to be our name. There we are. And then we're replying. So we know that they're probably. Well, we don't actually know they're online, but anyway, time for the two seconds. It's a transient thing. Yeah, we just, we don't care if they don't reply if they're online or saving it for a long time. And then a bit of a priority, half a second.

**[55:01] SPEAKER_01:** So how do you know him? I thought you said that was not part of the musicals.

**[55:05] Daniel Nagy:** From is part of it. From isn't. It's not quite part of it. It's in the signature. So it's retrieval from the signature. So if you if you say it's from an identity it will sign the payload.

Okay so that's, that's the broadcast post and the watch for it. Now what we can do is set up a reply watch. The reply watch says right, well let's assume they got this and they've replied. They were looking out for it and they've replied. So we saw what that code was. Now we're looking at a reply which we're watching out for.

The reply the reply is right, well again our app name just to make sure that it is actually this application, my identity. If you remember before we set one of the topics to the sender's identity. So now we're looking out for our own identity in the topics and what we're saying is here this to we're saying if it matches this filter. So if it's on this application it's the filter the topics include my identity. Then we are asserting that it was actually sent to us and thus we're saying to my entity and this is the only thing that prompts the underlying implementation to actually decrypt with our private key. If we didn't put this to in the data of the message would just be a load of gibberish because it would be unencrypted, sorry, undecrypted data. And then finally we say right when it arrives we'll just tell the user hey, I've got a friend. This is her name. So you think.

So things that I haven't really covered in detail mainly because they're probably not quite finished or worked out. The multicasting, that's vaguely. There's a plan as a strategy might need tweaking but Daniel has some ideas on adding to the signatures specifically for plausible deniability which I don't know, maybe get into if you want. And finally as I mentioned before security, privacy and scalability. We need to do modeling to work out how scalable the network is, how long it's going to take for a message to generally go network. Well formed mess will play a large part in making sure that this is that we have a decent upper bound on those times but basically how good actually is it when it goes into the real world?

Any questions?

**[57:32] SPEAKER_01:** What's my incentive in choosing a smaller time to live? Does it cost more proof of work for longer?

**[57:38] Daniel Nagy:** No incentive is that peers will buy combination forward them because there's a greater chance of another peer liking the fact that you gave them that message so that the other peer that you forward to might increase your rate. And that's what you're, as someone who wants to keep their current peer set, you're trying to get your peers to keep you, not disconnect you. So you're incentivized to provide them with useful information.

**[58:08] SPEAKER_01:** Is that the filter needs to be a subset of the topics of the message. So in the example we could actually only use one watch call to get both types of messages.

**[58:19] Daniel Nagy:** That is correct, yes, you're right, yes.

**[58:22] SPEAKER_01:** Actually get the second topic from the message we receive in the callback.

**[58:27] Daniel Nagy:** It is, yeah. But the problem is with having a single watch call, you have to specify the two in the watch call so the underlying layer can decrypt the message for you. And one of them was plain, the other was encrypted. But you're right, there was an issue with that example. The one that only had the one app name topic in would try to give the application, encrypted information. So you would put another topic in that said the initiation, the broadcasting, just so you could differentiate between the two.

**[58:58] SPEAKER_01:** I have a question regarding proof of work in this protocol, because for blockchain I kind of see the value of proof of work. So we get consensus with my blocks and stuff. And I'm not sure if I understood correctly why we have proof of work in Whisper. Is it just for avoiding spamming and stuff? We don't need to do calculations just in order to keep the volume down?

**[59:21] Daniel Nagy:** Pretty much, yeah. It's a basic strategy against that. It's still precisely what proof of work is. Used it again is, something to be tweaked, determined.

**[59:33] SPEAKER_01:** Why is it important to be able to choose the bits in the mask? Why not just tell how many of the front bits do I think.

**[59:39] Daniel Nagy:** Yeah, you could do, it's reasonable.

**[59:42] SPEAKER_01:** So if I have a public address on a blockchain and I decided to use that as my Whisper address, would that leak any information about who I was?

**[59:51] Daniel Nagy:** Yes, it would leak all the information about who you were. So it would link those two. Now you might want to do that. It might be that you've got an address on the blockchain and you want to prove to somebody off chain that you are indeed associated with this addressing that you're rich or you have a high reputation or that you did do that transaction with them. But likewise it may be that you want a new identity and both are supported.

**[60:17] SPEAKER_01:** If someone doesn't give you any information in their filter. Can you kind of like encourage them to give you information by making a whole bunch of messages and just sending them to them and then they'll be like, oh, I'm getting too many messages. Let me just give you a little bit more information.

**[60:33] Daniel Nagy:** Very good point. Now this is mentioned in the wiki. I didn't mention it here. One of the things that will need to be done to avoid this kind of attack. So this is the attack. I got a half decent name for it as well. But this is the attack whereby. Oh, it's the, yeah, like a black hole attack. So everything but attack. So you give, you know what they're interested or you think you know what they're interested in. Right. Because they gave you some sort of thing. So what you do is you send, everything but what you think they're interested in. Yeah. And then you're basically pushing them for them to tell you more and more about what they want in order for you to actually send the thing that they're after.

**[61:16] SPEAKER_01:** You can make the messages that you're sending them, then it's definitely not what you're looking for.

**[61:20] Daniel Nagy:** Say again?

**[61:21] SPEAKER_01:** You can just make up the messages?

**[61:23] Daniel Nagy:** Oh yeah, yeah, that's it. You can, just make random messages. So how do you get around this? Well, you can reasonably assume that, the information, information that you have from the other peers, I mean, okay, if you assume all your peers are bad, then you're pretty fucked anyway. So you assume that the other peers are giving you roughly decent information. And then you do a statistical analysis on the traffic that comes from the other peers, how much of it is actually useful, how much of it isn't, and check to see if that matches what that peer is giving you. So if they're doing a really sort of, heavily, conscious, heavily sort of tainted everything but attack, you'll be able to detect it and throw it away.

**[62:00] SPEAKER_01:** If they know your peers, then you're more vulnerable. If they know your peers. Well, certainly if they've compromised your peers, you're very vulnerable. But if they were to just send those messages to your peers, they might send them to you and it might look like those messages are going through the formula.

**[62:15] Daniel Nagy:** This is slightly reduced by constant, peer, steering. So you just keep getting random peers.

**[62:24] SPEAKER_01:** Sorry, I might have missed it. But when you use the API, where do you set your masks?

**[62:30] Daniel Nagy:** Where do I. Where do you set your mask? Oh, right. The masks are done actually as an underlying level. So the dapp never actually sets the masks. It's something that the user specifies in the interface, of the client, like the browser or whatever, like how much information you're willing to. And then they could. There's obviously the idea of a big slider bar, but then you could also drill down and say, right, for this app, I want more for this, less whatever.

**[62:56] SPEAKER_01:** Call it Zorro instead of Whisper. Because of the masking.

**[63:00] Daniel Nagy:** We should have a competition, shouldn't we, Alex?

**[63:03] SPEAKER_01:** Alex was asking about how you manage the message won't go in a circle. And Jutta was asking for, for some kind of biological counterpart. And it's very similar to the way spore mode communicates using diffusion. But normally when you use diffusion, animals that use diffusion also have some kind of feedback to say, okay, this place where the diffusion coming, there is food. Is there a way? If I am connected to a peer and then I find a message that I want from this peer, is there a way for me to tell that peer you gave me a message I want, please bring me more from wherever your source so we can find this connection automatically.

**[63:41] Daniel Nagy:** You could do. Yep. The issue with that is, of course that you're giving the peer, effectively you're telling that particular peer, you're giving them all the ones you say, right. That message, that topic set there. That's correct. Great, give me more. Like, that is telling them this is the topic you're after. So if you want to do that, you just give them this information in the first place, you can just tell me, tell that peer that he's a good peer and he's helping sources.

**[64:07] SPEAKER_01:** So you don't reply after one message. Like you respond after a thousand messages, as in the past thousand messages. That's for example. So you could do that as a peer rating. So it could just be, hey, what's. What's my rating with you on this protocol?

**[64:23] Daniel Nagy:** And you say, right, your rating is currently 10,000 because you're super awesome.

**[64:28] SPEAKER_01:** That's not really a rating to all the protocols. It's just saying that there is a connection. If there is a big network, then the best way to find a connection between those peers is to.

**[64:39] Daniel Nagy:** We're not dealing with endpoints. Yeah. Okay. Anything else? No. Cool. Thank you.
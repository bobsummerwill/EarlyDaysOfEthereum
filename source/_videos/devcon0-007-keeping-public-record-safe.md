---
title: "Ethereum ÐΞVcon-0: Keeping the Public Record Safe and Accessible"
date: 2014-11-27
author: Daniel Nagy
embed:
  url: https://www.youtube.com/embed/QzYZQ03ON2o
---

Discussion on strategies and approaches for maintaining the security and accessibility of Ethereum's public blockchain record for long-term sustainability.

## Transcript

**[00:00] SPEAKER_00:** So we're interested in low latency instead of high throughput. And we're interested about small pieces of information, not like films. So from an application programmer's point of view, what it does for you is you ask, you know, the hash of some piece of information, you ask for it and you get it as fast as possible. Like preferably from the RAM of your own computer, slightly worse from the hard drive or the SSD of your computer, and in the absolute worst case from the network, but quickly.

So the design goals: integrity, so you don't... so the information stays immutable and you can be sure that you get what you asked for. A measure of permanence, so once something gets there, it's impossible to delete. It's resilient against both random failures and malicious adversaries, where of course if it's resilient against malicious adversaries, it's automatically resilient against random failures. But we sort of keep both in mind.

Speed is very important. And by speed I mean low latency. Optimal utilization of available resources, so network storage and to some lesser extent processing power. But mostly we're interested in network resources and storage resources.

How do we ensure integrity? Each time you receive a piece of data, if it comes from any other source but your RAM, you check the hash. That's just a rule. And because of that, in order for that to be feasible, we need to make sure that there are no long unchecked downloads. So if something is long, then it needs to be chunked. And we should maximize the chunk size in something like four kilobytes, not more.

And there are two kinds of chunks. There's a leaf data fragment and there's a Merkle tree node which has hashes of other chunks. And this of course means that the hash is really a Merkle hash. And I really recommend that we should probably discuss it, that everything, when we say hash inside Ethereum of stuff that needs to be stored, then we always calculate this Merkle hash because even if the purpose is not immediate storage in this archive, still calculating a Merkle hash in a multicore machine is actually faster. And it's nice if the hash always refers to the same thing.

But the underlying assumption is that the vast majority of data that is going to be stored here, it fits into a single chunk. So we're thinking about things like parts of the state, transactions, contracts, transactions, things like that, which are typically not very long.

So how do we go about being resilient and redundant? This is where DHT comes into play. This is going to be a little bit of an introduction to what a DHT is and how they work. Maybe for some of you it will be a little boring.

Node addresses, so the addresses of the machines that form the network and the keys of the pieces of data, the hashes, they come from the same, they are the same type of object. So in this particular case it's probably going to be 256 bit hashes. Because the addresses of the nodes are just the hashes of their public keys. And there's a particular distance measure defined on this space. And by distance measure I mean the mathematical definition of a distance measure. So it's symmetric, the distance from A to B is the same as the distance from B to A. It satisfies the triangle inequality. And the distance from something from itself is zero.

So what you get is that, suppose, so this is an illustration where the distance is like the Euclidean distance on the plane. The black dots are the machines. They are randomly and uniformly distributed because the address is a result of a hashing and the big black circle is the entire space. So that's where the data can live. So a piece of data can be anywhere. And nodes are keeping the, each node is keeping the information that is closest to them.

Now of course as long as they can afford to store something, they just store it. But when their storage resources get full, first their RAM and then their background storage, then they sort of delete what is furthest away from them. So basically there's a radius in which they are responsible for the data. And as the volume of the data inside the DHT increases then these radii, they get smaller and smaller.

And there are like two situations depicted here. The green situation, when these radii are fairly big, they completely overlap the entire space. And of course if the system gets overwhelmed, meaning that the total storage resource inside the system is insufficient, then we get to this wreck situation when there are uncovered places. So this is when, so this is a failure mode. It's a graceful failure, but it's still, it's a failure.

And this system provides a natural load balancing because since pieces of, since both addresses and keys are results from hashes, they're uniformly distributed. That means that all the nodes are exposed to roughly the same load. So this is how we address redundancy.

So in the normal situation, which is depicted with green here, if one node goes offline, then its circle is removed, of course, but still all the other circles still cover the entire, all the green circles still cover the entire black circle. So that's how every DHT works like that. And basically the difference between the different DHTs largely boiled down to how these nodes are connected and what the distance measure is.

So let's first talk about the desirable network topology, how to connect these nodes. Oh, before, before we go there. So suppose this node is interested in this piece of information. Then they need to follow the path through the network topology. So that's why network topology is important.

So we are building a scalable network of n nodes where n can grow indefinitely. The first thing that we want is a low diameter that comes directly from our requirement of low latency. So the theoretical minimum is order one. So for example, if you think about a complete graph, when every node knows every other node there, the diameter is exactly one. So the definition of the diameter is the longest shortest path. So you take every pair of nodes, you find the shortest path between them and the longest of these across all the pairs of nodes is the diameter of the graph. So theoretically it can be as low as one or order of one. So it can be proportional to, it can be a fixed number. And the acceptable maximum, I would say that it's probably log n. So you don't want the diameter to be longer than log n as the network.

The other thing that you want to limit is the degree of the nodes, so how many other nodes a particular node is connected to. Again the theoretical minimum is order one. So it is possible to achieve even log n diameter with a fixed number of nodes. I will show you an example. So that's the theoretical minimum. The acceptable maximum is basically something proportional to the size of the network for a while, probably over a long time. That would be less and less acceptable. The problem of course with a large number of neighbors is that the housekeeping overhead maintaining that network, it will grow and it will become a sizable part of what the nodes do instead of performing their direct duties.

Then another thing that you want is uniform centrality across all nodes. So what centrality is? Centrality in a graph is defined as the number of shortest paths that go through one particular node or one particular edge. You can define edge centrality and node centrality as well.

Actually this property centrality was introduced in applied research which was interested in preventing sexually communicable diseases. And the question was, if we have a limited number of condoms, whom are we going to give them? So this sort of shows you what this centrality really means.

So if you take out the most central nodes from a graph, the graph will fall apart. The connectivity of the graph will be broken. So the centrality needs to be uniform in order for there not to be some vulnerable nodes. So for the cost of bringing down the network should be high. Because if the centrality is not uniform, then there's a small subset of nodes that if you take out that subset of nodes, then your graph falls apart, which is bad both against random failures and even worse against a dedicated adversary. Because all the adversary needs to do is to map out the network, calculate the centrality, and then DDoS the most central nodes.

And of course you also want to keep the housekeeping overhead low. So you want some network topology which is easily maintained.

So I will show you a few examples of how these trade offs can play out. So for example, we currently have a peer selection algorithm which is that simple, you connect to the nodes that you know, you ask them about other nodes, and you connect to those without giving it too much consideration. Perhaps you stop after you reach a certain node limit.

So these completely ad hoc networks, they go through a phase transition in the beginning. In the beginning, they form an almost complete graph. Every node knows a sizable subset of the network, maybe even the majority of nodes. So it's almost complete. So the number of neighbors is in the order of the size of the network. The diameter is more or less fixed. You can reach everybody in one or two hops.

The problem is that in this phase, the housekeeping overhead is ballooning because when you are, so think about just pinging all the other nodes, you need to keep track of their addresses. You need to see which one is alive. So a lot of traffic on the wires is just pings. So the housekeeping overhead is actually the traffic generated by housekeeping is growing with the square of n, until you transition to this other phase. When the number of nodes that one particular node knows, the neighboring nodes is relatively small compared to the size.

Then what you get is what mathematicians call a scale free graph, where you have a wildly different distribution of degrees. Actually they follow a power law. So it's a long tail distribution. That's usually how natural social networks work. So if you look at, for example, whom people friend on Facebook. So you look at social networks like this, or you look at friend to friend computer networks or you look at, for example, the social graph of sexual relationships, then they are typically these scale free graphs. So in nature these scale free graphs, they are very common.

Their diameter statistically is pretty low. So these are this famous six degrees of separation. So it's actually smaller than log n. It's log n over log log n. But that just statistically. The other undesirable property of scale free graphs is that their centrality is not uniform at all. Typically scale free graphs have a very small number of very central nodes.

Which is interesting, this fact is widely used in all sorts of social engineering from marketing to politics that there's these influencer people that if you find the right people to influence, you can spread information or disease or whatever, very fast. Or when you want to bomb a railway network then a few well placed bombs can bring an economy to halt. So it's well studied, it's a well known property of scale free graphs.

So basically this is another argument against this kind of ad hoc infrastructure that in addition to the large housekeeping costs, we will have centrality problems. The network will not be resilient. There will be some nodes which will have high centrality. Because of their high centrality they will have a high load, disproportionately high load. And okay, yep, here we are. They will have a disproportionately high load and they will be, the network will be vulnerable.

And there's another problem which is not mentioned here that okay, we have a distance measure which follows the triangle inequality. But in an ad hoc graph like this there's no guarantee whatsoever that if you go along the gradient like you always take the hop that brings you closest in one hop to your destination, then you will actually follow a shortest path. There's no guarantee for that at all. Actually in practice it's not that bad. So there is an upper bound that in the majority of cases the number of hops will still be fairly low. So it's not catastrophic, but it's definitely not optimal and you can have rare but very painful searches.

So okay, but the basic, so I would not like to change the basic strategy of connecting to a network so we can keep the pattern that you connect to one node, you ask about its neighbors and then by some clever algorithm you select to which ones to connect further. And actually when somebody asks you about your neighbors, you can also be clever and not tell them everything. So by tweaking these two things you can even stay compatible with the original peer finding algorithm, but be somewhat more clever and achieve some completely different topology.

So here's another example. These are the quasi hierarchies. So they are similar to hierarchies but not completely so. Just so this is an illustration. Of course if you are doing it in a real world scenario, it will never be this nice and regular. But this is a good example of the kind of graph that you will achieve if you have a limited small number of neighbors.

So this graph is, for example, 3 regular. It can grow indefinitely and it still will have a logarithmic diameter. So what it is, is that there's this central node, it has three neighbors. These neighbors grow binary trees and the leaves of those binary trees are connected. So this is a three regular graph, logarithmic diameter, constant neighbor number. You can achieve this.

The problem is this, with this is also that the centrality of the nodes is highly variable. But the housekeeping overhead on the other hand is really, really short. So if you, just to tell you how these kinds of graphs are maintained, it's very similar how real armies maintain their chain of commands. So if a general is killed, the army does not collapse immediately. So there's always, all the soldiers have a rank. They always know that if two soldiers who have not previously met, this subordination is immediately established and they have some side connections about where to connect in case some nodes fall out.

So it's doable. So you can build in a decentralized fashion by each node only caring about its own surrounding. You can build graphs like this, but I think that they're still too vulnerable and they place too high a load on some central nodes. Unfortunately, if you keep the degree of the nodes low and you want to maintain a logarithmic diameter, you cannot avoid that. That's a mathematical result.

So what I propose is, and what Gavin also proposes is taking a page from Kademlia. Kademlia is not optimal in the sense that it doesn't take, so for a logarithmic number of neighbors it has a diameter that is larger than necessary and for the logarithmic diameter it has a number of neighbors that is larger than necessary. So it doesn't take anything to the extreme, but both values are sort of acceptable.

And for this, like this is an example, it's a hypercube. Hypercubes are also like that. So Kademlia results in hypercube like topologies. So here every node, so there are 16 nodes here and each one has four degrees.

Kademlia has a low housekeeping overhead, it has a perfectly uniform centrality. And I think what's most convincing is that it already operates in a highly hostile environment because Kademlia is used as the DHT for BitTorrent, for the trackerless, for the trackerless torrents. And you know, there are many highly funded organizations trying to disrupt that network and they don't generally succeed. So it looks like a good idea.

So we would like to take many ideas and maybe quite a bit of code from Kademlia. It has the notion of the routing table. The routing table is basically how the node structures its neighbors. So it has short lived lists of live neighbors. The length of each list is maximized at some small number which is typically between 5 and 20, so it's not really a large number. And for each bit of the address they have at most one list.

So the bits means that, so for each of these lists correspond to nodes whose address is the same up to that bit. So the first list doesn't require any, it differs even in the first bit. The last address is the last list, which is where it is almost always empty of course, but the last list contains the node which differs in only one bit. Of course it never happens in practice that even that list has something in it.

So Kademlia has a very peculiar distance measure. It's the XOR metric. So they take the XOR of the two addresses and treat it as a binary number. Say, good exercise to check that it's really a distance measure.

When a node asks another node about the neighbors that they know, you don't tell them the entire routing table. You tell them only one list. So for each lookup you try to, for each lookup that another node makes, lookup request makes at you, what you do is you try to place that lookup on your lists, so which list corresponds to that lookup and you reveal only that list. You don't upload your entire routing table.

And when you are updating your routing tables because some new nodes come in, you learn about some new nodes. Then what you do is when a list gets full, then if the list is for longer matching prefixes, so there's some space in longer matching prefixes. So the list, so for example you have a list for three matching bits, but you don't have a list for four matching bits. Then what you do is you split this list into two and you start a new list for the longer prefix.

Otherwise if the list is full and the new node is on the far end, then what you do is you simply forget the node that is the worst. By some criteria what Kademlia does is it regularly pings the nodes and from whichever it heard last it will delete. We might do something similar or we might have some other criteria by which to rank the nodes. It doesn't really matter all that much, but it provides some way to control the quality and the resilience of the network.

So how do we join a network like this? You learn about one bootstrap node, you connect to it, you register with the bootstrap node. So basically the bootstrap node adds you to the list where you belong. Then you do a self lookup with the bootstrap node. You try to look up yourself. So you download that particular list in which you have been, to which you have been placed, you download the entire list, and then you insert those, you insert those nodes one by one into your routing table and you know, handle it the way they should be handled.

And then you generate a random address in the range which is one bit further than the bootstrap node and you make a lookup for that address. And that also gives you some nodes. And this way you have joined the network and you have established yourself as an equally central node as everybody else.

So the point of this exercise is that when you join this network it's not that you're going to be somewhere on the outskirts of the network, but you will establish yourself with deep enough connections so that you're just as central as any other node. So it provides a uniformity.

There are some big open questions about what we do. So first there's this thing that are we going to do this over UDP or TCP? Now since all the packets that we are sending around, they're short and since UDP is much easier to send around, send through firewalls and NATs and things like that, I'm actually leaning towards UDP. And that means that maybe this thing should have a separate layer, a separate network layer from the peer to peer protocol that has been presented two talks ago.

Then there's the second question. These two are somewhat related. So NAT tunneling. When you're tunneling through NAT, you either do it by routing your traffic through some third node, which is really bad. Or you really try to burrow a hole through the NAT firewall. You do that by spraying each other with UDPs with random source and destination ports, and rely on the birthday paradox, on one of the requests being an answer to another request. And from that point on the routers will pass those two, that specific source port and that specific destination port right through the NAT firewall.

But the problem is that in this case, the establishment of a connection is slow, so it's really not something that you want to change. So in this case instead, so what Kademlia does and what the BitTorrent's implementation of it does is that it never routes data through nodes. It always gives you an address that, if you're interested in this particular piece, here's an address, go ask that guy.

But if we're doing NAT tunneling, then this is an expensive and slow step, so we might not want to do that. Maybe we want to pass around information and maybe we even need to be somewhat adaptable, like distinguish between nodes behind NAT firewalls and other nodes which have a public IP address.

Another good question is what are we going to do with spam? Because if we implement this directly, then anybody can force it to store forever information to which it knows the hash. But whether this information is useful or not is anybody's guess. And this also gives us, this also leads us to the question of incentives, which really depends on what this thing is going to be used for. And there are many other open questions.

So I think that at this point we start the Q&A session and maybe on Friday we should have a discussion about what to do. Okay. Yeah. So a little bit to elaborate about how I joined to network and what information the field that I joined to should provide me. Like maybe the level of the centrality is a bit general.

No, no. In this case, when you're in Kademlia, there's no rank. Everybody is equal. So what you do is you connect to one node that is already a member. That's how you bootstrap. Then you register with that node. So you give your address to that node and that node puts it into the appropriate list where it belongs to. Then it gives you back the entire list. So you will have a list of addresses of valid nodes from the bootstrap node. You insert all those addresses into your own routing table. And then with this routing table, you do a lookup of a random address which differs from the, so you look at the prefix which you share with the bootstrap node and you take the bit, you flip the bit that comes afterwards to the one that you have, but not the bootstrap node, and you fill up the rest of the bits with some random binary values and you make a lookup.

Now how a lookup looks like, with the lookup you go to a node, to the nearest node that you can find in your routing table and then you ask that next node to give you the corresponding list. You insert all those nodes into your routing table, and then you keep continuing until you find the nearest node. And of course if along the way you find the actual content, then you download that content, you don't continue. But with a random lookup the chances of that happening are negligible.

So visualization of Kademlia lookup. It's like a circle, everybody standing in circle, right?

So X, no, it's not a circle, it's a hypercube. So what you do when you're looking up a node is that your, a lookup is basically you always go one bit closer and you always go along the bit which is higher like has a highest, so higher order bit. So it's always like let's suppose this direction, the vertical direction is the high order direction. So whenever you go from this node to this node, you always go along one dimension closer, but you always follow the same order of bits. That's how you do the lookup. And you're guaranteed to have a logarithmic number because with each hop the number of common bits increases at least by one, so it gives you a guarantee on the diameter.

Okay, next question. What is the strategy against spam? Well, in case of BitTorrent, since they have, since it's mutable, so it's not the same as here. It just overrides the key and it forgets gracefully old keys. So when, so in case of the BitTorrent the information is not really valuable, so they just throw away information that hasn't been queried for a long time. That's all they do. And it's sufficient for their purpose and it might be sufficient for our purpose as well. I don't know. It depends on really what we're going to use it for.

So what are we going to use it for?

**[35:25] SPEAKER_01:** Most of the satellite clients use it in order to query things like transaction receipts, for example.

**[35:34] SPEAKER_02:** Not the only one.

**[35:35] SPEAKER_00:** No, but you can even, even store the state in it. So if, if the like, if you have a full node but you don't have the storage space for storing everything that the full node needs to store, it might dump, you know, things that it, that don't fit into its storage into this. So it's kind of like a public utility. It's like Swarm-ish.

Yeah. So if the bootstrap dies down, well, you need to find one. So for example, there are some botnets that also organize themselves into Kademlia like networks and what they do is they just probe random IP addresses until they find some type of watchdog. Well, or you download a recent list from a website and you know, you go through it and the first node that you find is. Okay, so it's really, you need to find one node that is member of the network and then you're done.

**[36:37] SPEAKER_01:** Don't forget it's on the same network as Ethereum and Whisper. So yeah, if you know an Ethereum node, you'll eventually find a Swarm.

**[36:47] SPEAKER_02:** Do you remember from past connections?

**[36:51] SPEAKER_00:** Yeah, of course. You save, you don't forget your routing table. So when you're switched on, then you renew your routing table. But you use the one that you had. Okay. On the second slot you already have.

**[37:05] SPEAKER_02:** A bunch of nodes.

**[37:10] SPEAKER_00:** Yes. How much greater latency proportionally is a hypercube-like network to.

**[37:21] SPEAKER_01:** A scale free network?

**[37:22] SPEAKER_00:** It really depends on how much information you store. So the latency in this setup really depends on how large your diameter is. And after how large your radius is. But once your radius has been exhausted, then it depends on the diameter. And actually Kademlia is slower. Like on a general scale free network the diameter is log n over log log n, whereas here it's log n. So it's slightly slower but you know, the log log is not that big a deal.

Are you going to talk tomorrow? No, because it's the same talk. I didn't realize that this talk was also me.

Can you elaborate? Because you mentioned a lot of times before that mutable and non mutable DHTs are kind of very different. Yes, they're different. What's the deal there? What's interesting about, so about this. The interesting thing is that you never need to revisit, you don't need to keep querying like you don't need, like flooding the network with new information is not an issue. So here you can get away with, if something is asked of you that you don't know, then you find it and you store it for later reference.

And you know, how to flood the network with new information is not an issue here because it never gets overwritten. You know, it propagates slowly and it's okay. Basically any, any stupid tactic. For example, if you get some piece of information, you send it to the nearest two nodes that you can find. That's good enough because that will flood. Like it will go in the general direction where it needs to be. And it's okay for you.

So you don't have to be very clever about how to make sure that new information propagates through the network. It like it's half of the code of Kademlia, you can safely leave that out. Yes.

**[39:40] SPEAKER_02:** In this scheme, could the entries expire and be removed when they expire?

**[39:52] SPEAKER_00:** For, with regard to spam, good question.

**[39:57] SPEAKER_02:** Because to keep it in there, you have to refresh it, or somebody has to refresh it for you.

**[40:06] SPEAKER_00:** Well, refreshing the spam costs, right? You need to query it continually. So do lookup. So if you want to spam that way, it's probably doable. I don't know. It really depends on what we're going to use it for. How do you incentivize? This is an open network.

**[40:27] SPEAKER_02:** Basically, it stores anything you give to it. It doesn't even have to fit into 4 kilobytes. You can split it up, you can store anything in it.

**[40:34] SPEAKER_00:** Yes, but the question is to put.

**[40:39] SPEAKER_02:** Something in this network, then you can keep it alive.

**[40:42] SPEAKER_00:** And I don't think it costs too.

**[40:43] SPEAKER_02:** Much to keep it alive.

**[40:44] SPEAKER_00:** No, it doesn't. So basically what happens is shown here. So this is the relevant figure that, you know, if there's too much stuff and the nodes cannot keep up, then there will be some blanks here. And then you need to decide what to throw out, because if you throw out information, then these circles will grow again. So basically you need to decide what to throw out when you're full. I mean, when you're really full, when things get really bad. So when not only are you full, but your radius is too small.

**[41:24] SPEAKER_02:** Can you detect that this is happening?

**[41:26] SPEAKER_00:** Yeah, you can detect because again, because the key value pair is not arbitrary. So it's a hash. So it's a uniform randomness. It's uniformly randomly distributed. So from that you can be sure that the density of information in your neighborhood is the same as the density everywhere else. And from that you can make very accurate assumptions of how much information is stored in the whole network.

**[41:56] SPEAKER_02:** But that still doesn't tell you whether there's...

**[42:05] SPEAKER_00:** No you can make educated guesses about how bad the situation is. So that's another thing. Just referring back to your question that because of that, because you can be sure that the keys are distributed uniformly and it's immutable. You can actually from a local point of view of a node has a fairly good estimate of how full the whole network is.

Yes. How does it stay with the Ethereum roadmap? So will it first be recommended using the structure library and switch over to this or? I think so. So I think that it will not be in the next proof of concept it will not be there but in proof of concept number eight it might. Right. That's where it belongs. That's entirely feasible. So I think the target for this is once update.

**[43:03] SPEAKER_02:** Yes, just a use case if you want to have a static website with a big movie on it, some couple gigabyte device. But if I always store them they will always be there for other one to download.

**[43:13] SPEAKER_00:** Right.

**[43:14] SPEAKER_02:** That's how I would do this. Like I, the server of my website store the stuff and even if no one's using it, it's always there. It's kind of a use case for this.

**[43:23] SPEAKER_00:** Yeah, you can use static content there. Actually it would be couple of gigabytes. Yeah, sure. But that's also time span kind of.

**[43:32] SPEAKER_02:** But I store it for me at least so they can drop it out from time to time but it's still reachable for someone else.

**[43:39] SPEAKER_01:** You see the files will.

**[43:41] SPEAKER_00:** Yeah, it's possible. It is actually I'm thinking about adding an HTTP interface just for fun that when you enter a hash in the URL then it will collect the corresponding pieces and push out the entire content but only for the local nodes. So it's only, no, no, no. It's only accessible from 127.0.0.1, it's not accessible from the outside.

So one idea for spam prevention is we just use proof of work and keep the highest before stuff in the table and target kind of like not overflowing and that way blocks will always stay in there because they're always out of the work.

**[44:26] SPEAKER_01:** Of course blocks and transaction receipts and so on will always be hosted by our governors because they will store the data anyway because they use it. That's kind of the definition of our argument.

**[44:37] SPEAKER_00:** Yeah. Why do they use it? Well if the proof of work is such that they need to look it up. So if a Hashimoto style, in Hashimoto style proof of work you need to.

**[44:52] SPEAKER_01:** So yeah, there's a bit of weird. So there's full nodes which, you know, which keep this stuff for the last N blocks. There's super light nodes that don't keep anything really. And then there's archive nodes that keep everything. And the idea is that the foundation runs a few archive nodes and maybe some mining.

**[45:09] SPEAKER_00:** But actually with this you don't even need archive nodes because with this in place, you have a common archive. And as long as you keep randomly checking the past, it will stay up to date and it will be fairly distributed. And you know, this kind of proof of work can be actually a contract. So you can actually offer Ether in exchange for checking the second, for providing, for making spot checks. So it can be done on top of Ethereum, that here's a contract that if you maintain, if you sweep around the archives then you're going to get paid and that's it. You don't even need full archive nodes.

Daniel, what's the behavior if you have like two concurrent requests for writing the same hash but you will write the same thing there? That's the point that here the value. What if it's mutable? If it's mutable, it's a lot harder. It's not designed to be mutable, so we might. But it will be a thick layer on top. Like that's a lot more work than an immutable one. And actually for a mutable one I would probably just use Victor and Skademlia, because it's already there and it's mutable and they have solved all the problems.
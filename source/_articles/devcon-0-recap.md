---
title: "ÐΞVcon-0 Recap"
date: 2014-12-05
author: George Hallam
description: "A comprehensive recap of the first Ethereum developer conference held in Berlin from November 24-28, 2014, covering mission, processes, languages, ÐApps, architecture, security, and future blockchain theory"
embed:
  url: https://blog.ethereum.org/2014/12/05/devcon-0-recap
  img: /images/blog.ethereum.org/2026.01.05/blog_images/DEV-CON-POSTERSblog.jpg
  site: Ethereum Foundation Blog
---

**Day 1 - Monday 24th Nov - ÐΞV: Mission and Processes**

The first day of ÐΞVcon-0 kicked off early at 7am with the Ethereum UK communications team arriving at the venue (Ethereum Dev UG's workspace in Kreuzberg, Berlin) to set up the 4K high quality recording equipment and arrange the space for the event.

After a quick coffee and croissant/pain au chocolat, everyone was ready for the first presentation - "Ethereum ÐΞVcon-0 - Gavin: Welcome! Our mission: ÐApps" which was delivered by Gavin Wood. [Gavin](/people/gavin-wood/) made it very clear within this presentation the need for decentralised applications in today's society with two very powerful opening quotes, "Progress has led to the concentration of power" and "Our mission therefore is decentralisation". Following the presentation on ÐApps, [Gavin](/people/gavin-wood/) invited everyone present to introduce themselves and explain their roles in Ethereum. It was humbling to see how Ethereum has attracted such a magnificent team of incredibly talented people from such a wide variety of backgrounds.

{% include video-embed.html
  name="Ethereum ÐΞVcon-0 - Gavin: Welcome! Our mission: ÐApps"
%}

Next up, Stephan Tual gave a talk highlighting the important role of the UK based communications team in building a strong and populous Ethereum community. He also touched on the streamlining of internal communications procedures to maximise Ethereum's core team efficiency. With 81 Ethereum meetup/hackathons taking place from Tehran to New York and with over 6000 members worldwide, the Ethereum community has grown exponentially over the past 11 months. Still, there is always more to be done. With the inclusion of 4 new members to the team, new educational tools on the horizon and increased interaction with the community, [Stephan](/people/stephan-tual/) hopes Ethereum can become a worldwide phenomenon as we move forward to the release of the genesis block.

**--> MISSING VIDEO <--**

Straight after [Stephan](/people/stephan-tual/)'s talk, Sven Ehlert gave an insightful presentation on how Scrum and Agile will be utilised to again maximise the efficiency of Ethereum's software development. This will be achieved by focusing on the key elements of the "product" that are needed for completion, and by applying incremental development goals with short deadlines for each of the individual developer teams (Mist, C++, Solidity etc). This will hopefully increase the overall output whilst breaking down what is a truly enormous project into manageable pieces.

{% include video-embed.html
  name="Ethereum ÐΞVcon-0 - How will Scrum work for us?"
%}

**(NB: This one was not on the DEVCON0 playlist but was on YouTube)**

Finally to cap off the first day, Alex van de Sande gave an update on Mist, the Ethereum Go client's ÐApp Navigator. As many of you will have seen in [Alex](/people/alex-van-de-sande/)'s recent Mist presentation, the ÐApp Navigator will be an incredibly useful and powerful tool for people looking to interact with Ethereum and will really help make it accessible and easy to use by everyone from the outset - which is of course important for swift adoption.

**--> MISSING VIDEO <--**

**Day 2 - Tuesday 25th Nov - Languages, Ðapps & Architecture**

After Monday's introduction and team updates, day 2 would focus strongly on the direction of Ethereum's languages, ÐApp creation and architecture updates. Gavin Wood and Christian Reitwießner started off with a talk on the vision of the Solidity language and the roadmap to its completion as it comes closer to a language that supports all features provided by the Ethereum Virtual Machine. You can try solidity in your browser now.

{% include video-embed.html
  name="Ethereum ÐΞVcon-0: Solidity, Vision and Roadmap"
%}

This was followed by a brief chat from [Gavin](/people/gavin-wood/) this time focusing on the importance of secure documentation in ÐApp Development. The concept is to intertwine documentation and code in Solidity so that the documentation can be used by the client to alert the user of any significant actions that may take place as a consequence of running the code in certain smart contracts.

**--> MISSING VIDEO?  OR PART OF THE SAME TALK? <--**

Marek Kotewicz then gave an update on the Javascript API in a workshop setting allowing a lot of to-and-fro with the audience. He explained how it works, how to use it with smart contracts and what tools will be available to enable its use and uptake in the future.

**--> MISSING VIDEO <--**

After lunch, Piotr Zieliński presented on Golem, a project that aims to use Ethereum to coordinate a P2P distributed computation network for research use. Participants of the network share their computing power and in return receive a token of worth, incentivising their continued participation. Users can also access the resources to implement their own tasks and distribute them across the network.

{% include video-embed.html
  name="Ethereum ÐΞVcon-0: Golem"
%}

**(Correction - the talk was by Piotrek Janiuk.  This blog and the captions were both wrong)**

Following Piotr, Sven Ehlert took the stage again to speak further on optimising Ethereum's workflow using continuous integration. CI is a concept intended to improve the quality of whichever project it is being used with. Though Ethereum already uses CI, we wish to further refine the process as we move forward. To this end, [Sven](/people/sven-ehlert/) introduced several new and different implementations to make the developers lives easier as the project moves forward.

**--> MISSING VIDEO <--**

To finish off day 2, Lefteris Karapetsas gave an interesting presentation about using Emacs for C++ Ethereum development. He highlighted several plugins to use in order to improve workflow as well as the plugin he's working on for syntax highlighting on Solidity for Emacs. It is very cool to see personal projects increasing Ethereum's team overall efficiency!

{% include video-embed.html
  name="Ethereum ÐΞVcon-0: C++ Ethereum and Emacs"
%}

**Day 3 - Wednesday 26th Nov - Client Comparisons and What is Ethereum?**

Wednesday's presentation and panel content offered a great opportunity to get the whole team on the same page from a client perspective. With Martin Becze arriving from San Francisco, we had representatives for each client ready for a panel talk later on in the day. The aim of panel was to increase the development team's understanding of the different clients and highlight the minor differences between each client and how they implement the Ethereum Virtual Machine.

**--> MISSING VIDEO <--**

The morning commenced with Vinay Gupta leading a workshop which had everyone present trying to come up with a definitive answer to "What is Ethereum?". It turns out it's not as easy as we thought! Each person had a chance to stand up and offer their own personal 30 second definition on what Ethereum is. The answers were diverse, and it was interesting to see how people changed their angle of approach depending on which audience the explanation was aimed at.

{% include video-embed.html
  name="Ethereum ÐΞVcon-0: How to Sell Ideas"
%}

**(This video does not match the description in the blog post, but is certainly a presentation which Vinay Gupta gave at DEVCON!)**

Following Vinay's workshop, Martin Becze brought everyone up to speed with node-ethereum - a Node.js project he has been working on with Joseph Chow in Palo Alto. The talk started by outlining the ethereumjs-lib and node-etheruem's architecture, then focused on areas where the client differs in structure from the other C++, Go and Python client implementations. Jeff Wilcke also gave a brief update on Ethereum Go client on the whiteboard before the panel discussion.

**--> MISSING VIDEO <--**

The presentation space was then rearranged for the panel with Gavin Wood (Ethereum C++), Jeff Wilcke (Ethereum Go), Heiko Hees (Pythereum) and Martin Becze (Node-Ethereum). Each took turns outlining how each client handles state transactions, moves account balances, runs the EVM and saves data to accounts whilst handling sucides and out-of-gas exceptions. Questions where then posed by the audience, discussions continued on late into the night as day 3 drew to a close.

**--> MISSING VIDEO <--**

**Day 4 - Thursday 27th Nov - Robustness and security**

Though it is exceptionally useful to have a large suite of tools available for developers and users wanting to interact with Ethereum, it means nothing if the security and robustness of the network are in anyway compromised. To this end, the Ethereum team is working very hard to audit the software with several external partners and ensure network stability from the release of the genesis block onwards.

To this end, Sven Ehlert, Jutta Steiner and Heiko Hees kicked off the morning with a workshop on the Stress Testing Project. The goal of the project is to again use continuous integration and take it one step further. With CI, the Dev team can test to make sure that each client will behave correctly when it executes a contract. In this respect it will simulate how clients would interact with the blockchain in the real world. This will allow us to understand how the network will behave if the clients have different properties. For instance - clients with low bandwidth and less cpu power interacting with those with more resources available. The project pays special attention to how this will affect potential forks of the blockchain. Later on, the team will simulate attacks on the Ethereum blockchain and network to test its durability and resilience.

**--> MISSING VIDEO <--**

After the workshop, Christoph Jentzsch presented on the why and how of unit testing in the Ethereum project. In his talk, [Christoph](/people/christoph-jentzsch/) described several different types of test that need to be carried out - unit tests, integration tests and system tests. He also explained the different tools available to make it easy for every developer involved in Ethereum to get working on the huge amount of testing that needs to be carried out before it's released.

**--> MISSING VIDEO <--**

Next, Jutta Steiner took the stage to deliver a talk on "Achieving Security". She explained how our approach to security is to initiate both an internal audit and a massive external audit with established software security firms, academics, blockchain research firms and companies interested in utilising Ethereum all taking part. [Jutta](/people/jutta-steiner/) is also working on a bounty program which will be open to the community rewarding those who test and explore the protocol and software. We'll be releasing more information on this shortly if you wish to take part.

**--> MISSING VIDEO <--**

After a quick lunch, Alex Leverington updated us on the vision and roadmap of the Libp2p Multi Protocol Network Framework. The p2p networking protocol is geared towards security as it is entirely encrypted from end to end. He contrasted the Ethereum network with the internet as we know it today, emphasising the difference between using SSL certificates and p2p anonymous networks. He also commented on Ethereum's 3 network protocols - Whisper, Swarm and Ethereum itself. All 3 protocols run on the same line, so framing/multiplexing is being used to stop them from interfering with each others bandwidth needs. A key point to take away from this is that other ÐApps can potentially build their own protocols and use the multiplexing to optimise the connection as well.

{% include video-embed.html
  name="Ethereum ÐΞVcon-0: Multi Protocol Peer Network Framework: Vision and Roadmap"
%}

[Gavin](/people/gavin-wood/) followed up with a presentation on the what and why of Whisper: the Multi DHT Messaging System with Routing Privacy. Consensus is expensive, and for things like pure communications there are more elegant solutions available than using blockchain tech, hence the need for Whisper. To understand Whisper in general, think transactions, but without the eventual archival, any necessity of being bound to what is said or automated execution & state change. He also talked about some specific use cases for Whisper, such as ÐApps that need to provide dark (plausible denial over perfect network traffic analysis) comms to two correspondents that know nothing of each other but a hash. This could be a ÐApp for a whistleblower to communicate to a known journalist exchange some small amount of verifiable material and arrange between themselves for some other protocol (Swarm, perhaps) to handle the bulk transfer.

{% include video-embed.html
  name="Ethereum ÐΞVcon-0 - Whisper: the Multi DHT Messaging System with Routing Privacy. Vision & Roadmap."
%}

To finish off the day, Daniel Nagy bought us up to speed on Swarm, Ethereum's decentralised file storage and transmission protocol specifically targeted toward static web content hosting. [Daniel](/people/daniel-nagy/) also covered DHT (Distributed Hash Table - Kademlia). This will allow peers to connect to other peers distributed throughout the network instead of peer that are simply close to each other. By deterministically connecting to random peers, you know that each peer will have a better picture of the overall state of the network, increasing its viability.

{% include video-embed.html
  name="Ethereum ÐΞVcon-0: Keeping the Public Record Safe and Accessible"
%}

**Day 5 - Friday 28th Nov - Blockchain Theory and The Future**

The fifth and final day of DEVcon 0! After a week of talking about the near future of Ethereum's development and completion, the last day would be focused on future iterations of Ethereum and blockchain technology as a whole.

Vitalik Buterin and Vlad Zamfir started off day five with a whiteboard presentation on Ethereum 1.x. There are several problems that need to be solved as blockchain technology moves forward in the future - scalability and blockchain interoperability being at the forefront of those issues. The idea of Ethereum interacting with thousands of other blockchains is an attractive one, this in itself solves certain scalability problems in that work can distributed across many chains as opposed to bloating one central chain.

{% include video-embed.html
  name="Ethereum ÐΞVcon-0: Ethereum 1.x: On blockchain interop and scaling"
%}

[Gavin](/people/gavin-wood/) then joined [Vitalik](/people/vitalik-buterin/) and together they talked about the Ethereum Light-Client. A light client protocol is especially important for Ethereum as it will allow it to run on low capacity environments such as mobile phones, IoT (Internet of Things) devices and browser extensions. The two explained the development process and usage of Patricia Merkle Trees to implement it. Expect the light client to be ready for the release of Ethereum 1.0.

{% include video-embed.html
  name="Ethereum ÐΞVcon-0: The Path to the Ethereum Light Client"
%}

After lunch, Juan Benet of Filecoin/IPFS showed the audience the technology behind IPFS and Bitswap. He also presented some Ethereum/IPFS use cases such as content addressed files, IPNS naming and high performance distributed filesystem and tool integration.

**--> MISSING VIDEO <--**

[Gavin](/people/gavin-wood/) once again took the stage to reveal Mix, the Ethereum IDE. Mix is being developed in conjunction with AlethZero and expected to be released in the next 12 to 18 months. It supports a rather amazing feature set, including documentation, compiler and debugger integration as you type, information on code health, valid invariant, code structure and code formatting, as well as variable values and assertion truth annotations.

{% include video-embed.html
  name="Ethereum ÐΞVcon-0: Looking at the Ethereum IDE - Mix"
%}

Finally, [Vitalik](/people/vitalik-buterin/) wrapped up the event with a presentation showing some ideas for Ethereum 2.0 (Sharding, Hypercubes) and thanked all of those who attended.

{% include video-embed.html
  name="Ethereum ÐΞVcon-0: Ethereum 2.0 and Beyond"
%}

**(NB: This one was not on the DEVCON0 playlist but was on YouTube)**

Overall, ÐΞVcon-0 was very enriching and worthwhile for everyone who attended. As expected, the Eth Dev team is now very much on the same page and ready to push forward to the release of the genesis block. All of the presentations from DEVcon 0 were recorded and are currently being edited together by our resident graphic designer/video editor Ian Meikle. Starting on the 8th, a steady stream of content - "The ÐΞVcon-0 Series" will be added to the Ethereum Youtube Channel.

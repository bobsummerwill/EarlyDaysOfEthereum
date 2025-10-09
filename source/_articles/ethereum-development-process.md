---
title: "The Ethereum Development Process"
date: 2015-03-05
author: Gavin Wood
embed:
  url: https://blog.ethereum.org/2015/03/05/ethereum-development-process
  img: https://blog.ethereum.org/_next/image?url=%2Fimages%2Feth-org.jpeg&w=1080&q=75
  site: Ethereum Foundation Blog
---

So I'm not sure if this kind of development methodology has ever been applied to such an extreme before so I figured I'd document it. In a nutshell, it's sort of like test-driven triplet-programming development.

While speed-developing our alpha codebase, four of us sat around a table in the office in Berlin. Three people (Vitalik, Jeff and me) each coders of their own clean-room implementation of the Ethereum protocol. The fourth was Christoph, our master of testing.

Our target was to have three fully compatible implementations as well as an unambiguous specification by the end of three days of substantial development. Over distance, this process normally takes a few weeks.

This time we needed to expedite it; our process was quite simple. First we discuss the various consensus-breaking changes and formally describe them as best we can. Then, individually we each crack on coding up the changes simultaneously, popping our heads up about possible clarifications to the specifications as needed. Meanwhile, Christoph devises and codes tests, populating the results either manually or with the farthest-ahead of the implementations (C++, generally :-P).

After a milestone's worth of changes are coded up and the tests written, each clean-room implementation is tested against the common test data that Christoph compiled. Where issues are found, we debug in a group. So far, this has proved to be an effective way of producing well-tested code quickly, and perhaps more importantly, in delivering clear unambiguous formal specifications.

Are there any more examples of such techniques taken to the extreme?

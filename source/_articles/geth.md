---
title: Geth
alias: go-ethereum
description: The Go-Ethereum client software, which has dominated usage since 2014.
---

Geth (Go-Ethereum) is the Go-language implementation of the Ethereum protocol. Started by [Jeff Wilcke](/people/jeff-wilcke/) in late 2013, it became the dominant Ethereum client and was the first to pass its security audit ahead of the [Frontier launch](/articles/frontier/) on July 30, 2015.

## Geth 1.0 Authors

The `v1.0.0` release represented the culmination of work by a core team at [ÐΞV](/articles/eth-dev-cic/). Analysis of the Git commit history up to the 1.0.0 tag reveals the primary contributors:

| Contributor | Role |
|---|---|
| [Jeff Wilcke](/people/jeff-wilcke/) | Lead developer and creator (~3,400 commits under various emails) |
| [Taylor Gerring](/people/taylor-gerring/) | Go client integration (~564 commits) |
| [Felix Lange](/people/felix-lange/) | Core developer (~437 commits) |
| [Viktor Trón](/people/viktor-tron/) | Go core developer (~331 commits) |
| [Péter Szilágyi](/people/peter-szilagyi/) | Go core developer (~275 commits) |
| [Christoph Jentzsch](/people/christoph-jentzsch/) | Test infrastructure (~225 commits) |
| [Maran Hidskes](/people/maran-hidskes/) | Operations (~214 commits) |
| [Gustav Simonsson](/people/gustav-simonsson/) | Core developer (~129 commits) |
| [Bas van Kervel](/people/bas-van-kervel/) | Core developer (~101 commits) |
| [Zsolt Felföldi](/people/zsolt-felfoldi/) | Light client developer (~32 commits) |

Additional early contributions came from [Gavin Wood](/people/gavin-wood/), [Vitalik Buterin](/people/vitalik-buterin/), [Alex Van de Sande](/people/alex-van-de-sande/), and [Martin Becze](/people/martin-becze/).

As [James Hormuzdiar](/people/james-hormuzdiar/) recalled in [Episode 1](/videos/episode001/), the Go client quietly emerged as the most stable implementation:

> "From using all of these clients, the Geth was the most stable at the time. I would always, like, I would start it and it would run."

{% include content-embed.html
  url="https://github.com/ethereum/go-ethereum/commit/ea54283b304a1d308141d21e3ef75b7de0f4519d"
  title="all: update license information (Geth 1.0)"
  site="GitHub"
  date="July 22, 2015"
%}

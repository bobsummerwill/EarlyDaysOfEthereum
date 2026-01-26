---
name: Christoph Jentzsch
description: EVM test infrastructure architect and The DAO co-founder
photo: /images/archive.org/ethdev.com/20150315012946/christoph-jentzsch.jpg
start: Sep 2014
end: Dec 2015
interview: /videos/episode006-christoph-jentzsch/
devcon0: '1173'
social:
  twitter: https://x.com/ChrJentzsch
  github: https://github.com/CJentzsch
  linkedin: https://www.linkedin.com/in/cjentzsch/
---

Christoph Jentzsch was the architect of Ethereum's cross-client test infrastructure, ensuring that multiple implementations could reach consensus. He later co-founded Slock.it and created The DAO, which became both Ethereum's first major application and its first major crisis.

## Background

Christoph was pursuing a PhD in theoretical physics, studying self-organizing systems, when he discovered Bitcoin in 2013. He found [Vitalik Buterin](/people/vitalik-buterin/)'s Ethereum white paper in early 2014, but it was a video of [Gavin Wood](/people/gavin-wood/) presenting at Assembly 2014 in Finland that captured his imagination:

> "I saw a video of Gavin talking about the technology... I was looking for a job at the time. I was almost done with my PhD. So I just emailed him: 'It looks like an interesting project, I would like to contribute, what can I do?'"

Gavin invited him to his apartment in Kreuzberg, Berlin, where Christoph made a fateful request:

> "When I first went to his apartment, I said, 'Give me the most complicated stuff you have.' And this was writing tests for the EVM."

## Testing the World Computer

Christoph's role was to ensure that all Ethereum client implementations—the C++ client, [Geth](/articles/geth/), PyEthereum, and the [Haskell client](/articles/haskell-ethereum/)—produced identical results. This required deep mastery of the protocol:

> "I read the yellow paper, basically, the first time six or seven times. And I found errors in there. So I actually made corrections in the original yellow paper."

His test infrastructure became the authoritative source for protocol correctness. Every client team ran their implementation against Christoph's tests to verify consensus. Before launch, the unofficial rule was clear:

> "They were saying, okay, now if Christoph doesn't find any failing tests for like three weeks or four weeks or something, we are ready."

## DEVCON0

Christoph was present at [DEVCON0](/articles/devcon0/) in Berlin, which he described as an internal company retreat rather than a public conference:

> "Devcon Zero was, like, very internal. There was like 50 people, 50 to 100 people, nobody more. And they were almost all working for the Ethereum Foundation at the time."

He observed the dynamic between the client teams—particularly the competition between Gavin's C++ team and [Jeff Wilcke](/people/jeff-wilcke/)'s Geth team that would later shape Ethereum's development trajectory.

## Why Geth Won

Christoph witnessed firsthand why Geth became Ethereum's dominant client:

> "So the reason Geth won was the security audit was delayed for C++, and they did Geth first. So, they recommended to use only Geth for the first few days, few weeks, for Frontier. People got used to it. And then there was never a reason to switch."

He noted that technical superiority wasn't the deciding factor—it was timing and network effects.

## The Frontier Launch

On July 30, 2015, Christoph watched the Ethereum mainnet launch from the C++ office in Kreuzberg:

> "We were in the C++ Berlin office in Kreuzberg 37a with a nice office, and we just watched it... It was like a beauty to behold, to just see how this works out as intended—completely decentralized, nobody did anything."

The launch used a clever mechanism to avoid any single person "starting" the chain—a script that used the hash of a future Olympic testnet block, allowing the network to emerge organically through peer discovery.

Within weeks, Christoph's testing work proved its value when he discovered a consensus bug between Geth and C++:

> "It was, for me, almost the middle of the night at 10 PM or 11 PM. So I remember seeing this, looking for one hour or so, finding what's the issue. Then I found it, wrote a test about it. Peter Szilágyi was right, Geth was wrong. So we gave it to Jeff. They fixed this."

{% include content-embed.html
  url="https://blog.ethereum.org/2015/08/20/security-alert-consensus-issue"
  img="/images/blog.ethereum.org/2026.01.05/next/image.jpg"
  title="Security alert [consensus issue]"
  author="Jutta Steiner"
  date="2015-08-20"
  site="blog.ethereum.org"
  description="Consensus issue on the Frontier network at block 116,522, caused by a state database issue in geth with deletion of account data during SUICIDE instructions."
%}

## Slock.it and the Economy of Things

As the Foundation's runway shortened, Christoph began thinking about his next chapter:

> "I thought, okay, Ethereum will not be used as a currency, but it might be used as a currency for IoT devices. So instead of the Internet of Things, building the Economy of Things."

He co-founded [Slock.it](https://slock.it) with his brother Simon to connect IoT devices to Ethereum smart contracts. The core insight was that smart contracts are essentially permission systems:

> "Ninety percent of a smart contract is who's allowed to do what... What if we could put this permission system into IoT? And who's allowed to switch on, off, use, change, admin rights, whatever. You put this into a smart contract."

## DEVCON1 and the Smart Lock

At [DEVCON1](/articles/devcon1/) in London, Christoph and [Stephan Tual](/people/stephan-tual/) demonstrated a physical smart lock connected to Ethereum:

> "We just had a Raspberry Pi connected via—I think it was Zigbee or Z-Wave—to the door lock. And on the Raspberry Pi, we had actually an Ethereum client running. And we had a smart contract on-chain where you could send some money to it, and when it received some Ether, it would open up."

Just three or four days before the presentation, they decided to announce something bigger: The DAO.

## The DAO

The DAO concept evolved from Slock.it's fundraising challenges. After VCs turned them down, Christoph conceived of a new model:

> "If I started coding an ICO-like smart contract, why should we have the money directly? It could stay in the contract, and then people could vote for giving us part of it... So we said, well, we could make proposals to it, and then they can vote if the proposal is good or not."

What started as funding for Slock.it's Universal Sharing Network transformed into something much larger:

> "The narrative changed. It was not anymore a DAO for the Universal Sharing Network... It turned into like an investment fund or like an index fund for Ethereum applications."

The DAO raised approximately $150 million worth of Ether—then was exploited in June 2016. Christoph and his team made no money from the project:

> "We worked for—we were not rich people, we came from ordinary families, and we said, well, we can work for like three to four months without a salary... And, of course, after the hack, it was clear there will never ever be a payment. So we made zero money out of the DAO."

## Returning to the Community

Christoph feared returning to DEVCON2 in Shanghai after the DAO hack:

> "I was super worried to go to DEVCON2 because this was after the DAO hack. I was like seriously thinking someone might beat me up there."

Instead, he received a standing ovation:

> "There was like—someone had a standing ovation, I remember becoming emotional, because this was—I did not expect this. I really expected, like, 'Guy, you messed up Ethereum, like, we almost lost it all.'"

He reflects on what this revealed about the Ethereum community:

> "This just speaks to the Ethereum community: how they treated [Stephan](/people/stephan-tual/), how they treated me, even though mistakes were made—honest mistakes, at least from what I can tell. So, this is such a great community of really nice people who really want to change the world."

## Later Work

Slock.it pivoted to consulting, eventually growing to 50 employees. They contributed to the [Energy Web Foundation](https://energyweb.org/) and various IoT blockchain projects. In 2019, the company was acquired by Blockchains Inc.

After leaving Blockchains, Christoph founded Corpus Ventures and created [tokenize.it](https://tokenize.it), which he describes as "a Web3-based AngelList for Europe"—helping German startups tokenize their shares and raise funds on-chain.

He has attended every Devcon since DEVCON0:

> "It's like only once in a lifetime, or two times in a lifetime, you have this moment where everything comes together: the right time, the right place, the right people. This certainly—those one and a half years I worked for Ethereum—are definitely the prime of my career in terms of who I worked with, what we accomplished, the impact we had on the world, and the sweet cypherpunk spirit there."

## Primary Source

This profile draws from [Christoph Jentzsch's Early Days of Ethereum interview](/videos/episode006-christoph-jentzsch/), which provides first-hand accounts of Ethereum's testing infrastructure, the Frontier launch, and the full arc from Slock.it through The DAO.

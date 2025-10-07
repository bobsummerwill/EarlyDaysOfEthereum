# Early Days of Ethereum

A comprehensive historical archive documenting the people, events, articles, and videos from Ethereum's formative years (2013-2018).

## About This Project

**Early Days of Ethereum** (https://www.earlydaysofeth.org) is a living historical archive dedicated to preserving and sharing the stories of Ethereum's founding period. The project chronicles the remarkable journey from Vitalik Buterin's whitepaper in November 2013 through the establishment of the Ethereum Foundation and the early years of the protocol's development.

### What You'll Find Here

- **180+ People Profiles**: Biographies of co-founders, core developers, advisors, and early contributors
- **Historical Articles**: Key blog posts, announcements, and technical updates from 2014-2018
- **Video Archive**: Podcast episodes, conference talks, and interviews
- **Timeline Documentation**: Chronological narrative divided into distinct epochs:
  - Whitepaper to "Red Wedding" (Nov 2013 - Jun 2014)
  - Stiftung Ethereum and ETH ÐΞV (Jul 2014 - Feb 2015)
  - The Interregnum (Mar 2015 - Jun 2015)
  - The Ming Dynasty (Jul 2015 - Jan 2018)
  - The Infinite Garden (Feb 2018 onwards)

### Why This Matters

Many original blog posts, videos, and documents have disappeared as websites changed or shut down. This project preserves primary sources, documents the human story behind Ethereum, and honors the contributors who built the foundation for today's ecosystem.

---

## Jekyll Setup

This is a static site built with Jekyll 4.3.4 and deployed via GitHub Pages.

### Project Structure

```
EarlyDaysOfEthereum/
├── Gemfile                    # Ruby dependencies
├── .github/workflows/         # GitHub Actions for deployment
└── source/                    # Jekyll source directory
    ├── _config.yml            # Jekyll configuration
    ├── _layouts/              # Page templates (default, person, article, video)
    ├── _includes/             # Reusable components (auto_link, embeds, SEO)
    ├── _articles/             # Article collection (Markdown files)
    ├── _people/               # People collection (Markdown files)
    ├── _videos/               # Video collection (Markdown files)
    ├── articles/index.html    # Articles listing page
    ├── people/index.html      # People listing page
    ├── videos/index.html      # Videos listing page
    ├── grid/index.html        # Photo grid view
    ├── assets/css/            # Stylesheets
    └── images/                # Image assets
```

### Local Development

```bash
# Install dependencies
bundle install

# Run development server
bundle exec jekyll serve --source source

# Access at http://localhost:4000
```

### Collections

The site uses three Jekyll collections:

- **Articles** (`_articles/`): Blog posts and announcements
- **People** (`_people/`): Person profiles with photos and bios
- **Videos** (`_videos/`): Podcast episodes and talks

### Deployment

The site automatically deploys to GitHub Pages when changes are pushed to `main`. See `.github/workflows/jekyll-gh-pages.yml` for the build configuration.

---

## Contributing

Contributions welcome via [issues](https://github.com/bobsummerwill/EarlyDaysOfEthereum/issues), [pull requests](https://github.com/bobsummerwill/EarlyDaysOfEthereum/pulls), or directly to [@bobsummerwill](https://x.com/bobsummerwill).

## License

Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) - see [LICENSE](LICENSE) file for details.

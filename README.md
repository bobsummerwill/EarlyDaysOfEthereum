# Early Days of Ethereum - Jekyll Site

This repository has been set up with Jekyll for GitHub Pages deployment, providing a clean, maintainable way to present the Early Days of Ethereum content.

## Structure

- **`Gemfile`** - Ruby dependencies (project root)
- **`source/`** - Jekyll source directory containing:
  - **`_config.yml`** - Jekyll configuration
  - **`_layouts/`** - Page templates
    - `default.html` - Base layout with navigation
    - `article.html` - Article layout
    - `person.html` - People profile layout
    - `video.html` - Video episode layout
    - `mercata.html` - Mercata contest layout
  - **`_articles/`** - Articles (Jekyll collection)
  - **`_people/`** - People profiles (Jekyll collection)
  - **`_videos/`** - Video episodes (Jekyll collection)
  - **`_includes/`** - Template includes
    - `auto_link.html` - Automatic link processing with hidden people redaction
    - `content-embed.html` - Content embed formatting
    - `video-embed.html` - Video embed formatting
    - `seo.html` - SEO metadata
  - **`images/`** - All images (unchanged structure)
  - **`assets/`** - CSS and other assets
  - **`grid/`** - Grid view page
  - **Index pages** - `index.html`, `articles/index.html`, `people/index.html`, `videos/index.html`

## Key Features

- **Responsive Design**: Mobile-friendly layout
- **Absolute Paths**: All paths use simple quoted strings (e.g., `'/people/name/'`) without Jekyll liquid filters
- **Collections**: Organized content using Jekyll collections for articles, people, and videos
- **Auto-linking with Privacy Protection**: Automatic link generation with special handling for hidden people
- **SEO**: Built-in SEO tags and proper metadata
- **Navigation**: Clean navigation between sections
- **GitHub Pages Ready**: Configured for automatic deployment

## Privacy Features

### Hidden People Handling

The site includes comprehensive privacy protection for people marked as `hidden: true` in their front matter:

1. **Auto-link Redaction** (`source/_includes/auto_link.html`):
   - Phase 0: Converts explicit markdown/HTML links to hidden people into `[REDACTED]`
   - Phase 1: Auto-links video titles
   - Phase 2: Auto-links article titles
   - Phase 3: Auto-links people names (with `[REDACTED]` for hidden people)

2. **Video Layout** (`source/_layouts/video.html`):
   - Completely excludes hidden people from hosts and guests lists
   - Adjusts singular/plural headings based on visible person count
   - Hides entire section if all people are hidden

3. **Link Format**:
   - Explicit links: `[Name]('/people/slug/')` → converted to `[REDACTED]` if person is hidden
   - Auto-links: Plain text names → converted to `[REDACTED]` if person is hidden

## Local Development

To run locally:

```bash
bundle install
bundle exec jekyll serve --source source
```

The site will be available at `http://localhost:4000/`

## GitHub Pages Deployment

The site is configured to deploy automatically to GitHub Pages when changes are pushed to the main branch. The GitHub Actions workflow in `.github/workflows/jekyll-gh-pages.yml` handles the build and deployment.

## Content Management

### Adding Articles
Create new files in `source/_articles/` with appropriate front matter including title, description, and date.

### Adding People
Create new files in `source/_people/` with front matter including:
- `name`: Full name
- `role`: Position/role
- `period`: Time period of involvement
- `hidden`: (optional) Set to `true` to redact from public display
- Social links and other metadata

When `hidden: true` is set:
- All explicit links to that person will show as `[REDACTED]`
- Auto-linked mentions of their name will show as `[REDACTED]`
- They will be excluded from video episode host/guest lists

### Adding Videos
Create new files in `source/_videos/` with front matter including:
- Episode number, date, YouTube/Vimeo ID
- `hosts`: Array of host names
- `guests`: Array of guest names
- Guest information

Hidden people in hosts/guests arrays will be automatically excluded from display.

### Images
All images are stored in the `source/images/` directory. Use simple absolute paths:

```markdown
![Description](/images/path/to/image.jpg)
```

Or in HTML:
```html
<img src="/images/path/to/image.jpg" alt="Description">
```

### Links

Use simple quoted paths for all internal links:

**Markdown:**
```markdown
[Link Text]('/path/to/page/')
```

**HTML:**
```html
<a href="/path/to/page/">Link Text</a>
```

The auto_link system will automatically process these and handle hidden people appropriately.

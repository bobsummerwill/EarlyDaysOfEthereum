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
  - **`images/`** - All images (unchanged structure)
  - **`assets/`** - CSS and other assets
  - **`grid/`** - Grid view page
  - **Index pages** - `index.html`, `articles/index.html`, `people/index.html`, `videos/index.html`

## Key Features

- **Responsive Design**: Mobile-friendly layout
- **Relative URLs**: All image paths use Jekyll's `relative_url` filter for proper GitHub Pages deployment
- **Collections**: Organized content using Jekyll collections for people and videos
- **SEO**: Built-in SEO tags and proper metadata
- **Navigation**: Clean navigation between sections
- **GitHub Pages Ready**: Configured for automatic deployment

## Local Development

To run locally:

```bash
bundle install
bundle exec jekyll serve --source source
```

The site will be available at `http://localhost:4000/EarlyDaysOfEthereum/`

## GitHub Pages Deployment

The site is configured to deploy automatically to GitHub Pages when changes are pushed to the main branch. The GitHub Actions workflow in `.github/workflows/jekyll-gh-pages.yml` handles the build and deployment.

## Content Management

### Adding Articles
Create new files in `source/_articles/` with appropriate front matter including title, description, and date.

### Adding People
Create new files in `source/_people/` with appropriate front matter including role, period, and social links.

### Adding Videos
Create new files in `source/_videos/` with front matter including episode number, date, YouTube ID, and guest information.

### Images
All images are stored in the `source/images/` directory. Use Jekyll's `relative_url` filter for proper path resolution:

```markdown
![Description]({{ '/images/path/to/image.jpg' | relative_url }})
```

# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a multilingual Jekyll-based static website for Praktika, a meditation and sleep app. The website supports three languages (English, Polish, Russian) with a blog system focused on meditation content.

## Build & Development Commands

### Local Development
```bash
bundle install              # Install Ruby dependencies
bundle exec jekyll serve    # Start development server (localhost:4000)
bundle exec jekyll build    # Build static site to _site/
```

### Dependencies
- Uses GitHub Pages deployment (configured in Gemfile)
- Ruby/Jekyll with multiple plugins for internationalization and features

## Architecture & Structure

### Multilingual Setup
- **Plugin**: `jekyll-multiple-languages-plugin` handles internationalization
- **Languages**: English (en), Polish (pl), Russian (ru)  
- **Content Structure**: All content is in `_i18n/[lang]/` directories
- **Translation Files**: `_i18n/[lang].yml` contain UI translations
- **Posts**: Blog posts are only in Russian (`_i18n/ru/_posts/`)

### Key Directories
- `_layouts/`: HTML templates (default.html, post.html, blog.html)
- `_includes/`: Reusable components (navbar.html, footer.html, head.html)
- `_sass/`: SCSS stylesheets
- `assets/`: Images, icons, and compiled styles
- `_i18n/`: All multilingual content and translations
- `redirects/`: HTML redirect files for URL management

### Content Management
- **Blog Posts**: Markdown files in `_i18n/ru/_posts/` with YYYY-MM-DD-title format
- **Pages**: Markdown files in `_i18n/[lang]/` directories
- **Images**: Blog images in `assets/images/blog/` with specific naming convention
- **Redirects**: Individual HTML redirect files in `/redirects/` directory

### Jekyll Configuration
- **Pagination**: Uses `jekyll-paginate-v2` with 9 posts per page
- **SEO**: Configured with sitemap, feed generation, and meta tags
- **Analytics**: Google Analytics 4, Facebook Pixel, Yandex Metrika
- **Lazy Loading**: Images optimized with `jekyll-loading-lazy`

### Styling System
- **SCSS**: Compiled from `_sass/` directory with compression enabled
- **Responsive Design**: Uses Flexbox layouts extensively
- **Mobile Menu**: CSS-only hamburger menu implementation

## Content Guidelines

### Blog Posts (Russian only)
- All posts must be in `_i18n/ru/_posts/` directory
- Use YYYY-MM-DD-title.md naming convention
- Include frontmatter with title, layout, image (optional)
- Images should have both full-size and `-res` (compressed) versions

### Internationalization
- Use `{% t key.name %}` for translated strings in templates
- Add translations to appropriate `_i18n/[lang].yml` files
- Page content goes in `_i18n/[lang]/` directories

### Navigation & URLs
- Blog is only available for Russian locale (`site.lang == 'ru'`)
- External links use proper target="_blank" and rel="noopener"
- Redirects are managed via individual HTML files in `/redirects/`

## Deployment

- **Platform**: GitHub Pages
- **Build**: Automatic on push to main branch
- **Domain**: praktika.app with CNAME configuration
- **SSL**: Managed by GitHub Pages

## Analytics & Tracking (GDPR Compliant)

### Implemented Tracking Services
- **Google Analytics 4** (G-FS0M8R7KHB) - Uses Consent Mode v2, respects Do Not Track
- **Facebook Pixel** (386000906841885) - Respects consent and Do Not Track settings
- **App Store integration** (ID: 1467786415) - Static meta tag, no tracking

### Cookie Consent System
- **Cookie Banner**: `_includes/cookie-consent.html` with JavaScript consent management
- **Styling**: `_sass/_cookies.scss` (imported in main stylesheet)
- **GDPR Compliance**: Default deny, explicit consent required for all tracking
- **Do Not Track Respect**: All tracking services honor browser DNT settings

### Consent Flow
1. All tracking services default to "denied" state
2. Cookie banner shows for users without consent
3. On consent acceptance:
   - Google Analytics updates to "granted" via Consent Mode v2
   - Facebook Pixel starts PageView tracking
   - Consent cookie set for 31 days
4. Users with DNT enabled are never tracked regardless of consent

### Configured but Not Implemented
- **Yandex Metrika** (53745279) - Only in `_config.yml`, not actively used
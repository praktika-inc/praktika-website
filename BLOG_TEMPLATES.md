# Blog Post Templates

## Preserved Files

### detail_blog-backup.html (in /ru/ directory)
- Original Webflow blog post template with Russian content
- Contains complete blog post layout with:
  - Dynamic content placeholders for title, image, and content
  - App download promotion section
  - Related posts section
  - Russian-specific navigation and text
  - All original Webflow classes and structure

## New Jekyll Layouts

### _layouts/blog-post.html
- Modern Jekyll blog post layout based on the detail_blog template
- Features:
  - Multi-language support (English, Russian, Polish)
  - Featured image support
  - App download call-to-action
  - Related posts section
  - Clean Jekyll/Liquid templating
  - Integrates with existing includes (navbar, head, footer, scripts)

## Usage

To create a blog post using the new layout:

```yaml
---
layout: blog-post
title: "Your Post Title"
lang: ru  # or 'pl' for Polish, 'en' for English
image: "/assets/images/your-image.jpg"  # optional
---

Your post content here...
```

The layout will automatically:
- Display the correct language for UI elements
- Show appropriate app store links
- Display related posts in the same language
- Handle featured images if provided

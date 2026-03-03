# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview
Personal website built with Jekyll, This is a GitHub Pages personal portfolio site for Tomasz Dygas (SAP Developer/Architect), built with Jekyll and hosted at `https://lolek24.github.io`. The site uses the `just-the-docs/just-the-docs` remote theme.

## Build/Test/Lint Commands
- **Build**: `just build` or `just static-build` (builds Jekyll site and Tailwind CSS)
- **Serve**: `just serve` or `just server` (starts local development server)
- **Test**: `just test` (runs all tests)
- **Test (single)**: `pytest tests/test_file.py::test_function`
- **Lint**: `just lint` or `just lint --hook-stage manual` (runs pre-commit hooks)
- **Format**: `just lint` (includes ruff/ruff-format for Python)
- **Clean**: `just clean` (removes _site directory)
- **Rebuild**: `just rebuild` (force complete Jekyll rebuild)

## Content Management Commands
- **About**: Information
- **Portfolio**: Portfolio
- **Blog**: Blog - underconstruction

## Code Style
- **Python**: ruff for linting/formatting (black style), reorder-python-imports
- **HTML/CSS**: djhtml/djcss with 2-space tabs
- **Tailwind**: rustywind for class ordering
- **JavaScript**: djjs formatter
- **Line endings**: Unix style with final newline
- **Git**: Avoid large file commits

## Important Restrictions
- **NEVER** attempt to load the tailwind.css file directly
- **DO NOT** open or browse content folders (_posts, _movies, _series, _games, etc.) unless specifically requested
- Use Tailwind classes directly in HTML/templates
- Content folders are prefixed with underscore (_) and should not be accessed without explicit user request

## Key Technologies
- **Jekyll**: Static site generator with Liquid templating
- **Tailwind CSS**: Utility-first CSS framework (v3.0.24)

## Additional Tools
- **Favicons**: `just favicon` (generates from assets/images/2025-brickman.jpg)
- **Table of contents**: `just toc` (generates TOC in markdown)

## Local Development

```bash
# Install dependencies (requires Ruby + Bundler)
bundle install

# Serve locally with live reload
bundle exec jekyll serve

# Build static output to _site/
bundle exec jekyll build
```

The site is automatically built and deployed by GitHub Pages on push to `main`. No CI configuration is needed.

## Architecture & Structure
Jekyll site with content organized in collections prefixed with underscore:
- `_posts/` - Blog posts in YYYY-MM-DD-title.md format
- `_portfolio/` - Custom Portfolio
- `_agents/` - Custom AI agent configurations
- `_appearances/`, `_drafts/`, `_events/` - Other content types
- `pages/` - Static pages (about, now, etc.)
- `scripts/` - Python automation scripts for content fetching
- `assets/` - Images, CSS, JavaScript files
**Pages** (Markdown with HTML/CSS/JS inline):
- `index.md` — Homepage with a custom tab bar (Overview, Expertise, Services, Contact tabs). Tabs are toggled via inline JavaScript using `.sap-tab-panel` / `.sap-active` classes.
- `portfolio.md` — Portfolio page with project cards, skills grid, and experience timeline.
**Configuration** (`_config.yml`):
- Remote theme: `just-the-docs/just-the-docs-template`
- Markdown: kramdown with GFM input and Rouge syntax highlighting
- Plugins: `jekyll-feed`, `jekyll-seo-tag`, `jekyll-remote-theme`, `jekyll-sitemap`, `jekyll-search`, `jekyll-language-plugin`
**Styling**: The site uses a minimal style
**No build tooling, tests, or JavaScript framework** — this is a pure static site. The only dependency is the `github-pages` gem.

## Content Conventions
- Internal links use Jekyll's `relative_url` filter: `{{ '/portfolio' | relative_url }}`
- Icons come from Font Awesome (loaded via CDN in the theme)

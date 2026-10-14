# Static Site Generator

**Python · unittest** · [View the code](https://github.com/smcgb/static-site-generator)

## Why build one

Plenty of static site generators already exist. I wanted to understand how Markdown actually becomes HTML, so I built one from scratch as part of the [Boot.dev](https://www.boot.dev) curriculum. It uses no Markdown libraries, only the Python standard library.

This website is built with it. I moved my portfolio off Squarespace and onto GitHub Pages, so every page here started as a Markdown file.

## How it works

1. **Inline parsing:** text is split into typed `TextNode` runs for bold, italic, code, links, and images
2. **Block parsing:** documents are split into blocks and classified as paragraphs, headings, code, quotes, or lists
3. **HTML tree:** each block becomes a small HTML AST of `LeafNode` and `ParentNode` objects that render themselves to HTML strings
4. **Page generation:** every Markdown file under `content/` is rendered into an HTML template, mirroring the directory structure, and static assets are copied alongside

Every module has its own `unittest` suite.

## How this site uses it

The generator lives in this site's repository as a git submodule. Writing a new page is just adding a Markdown file and running the build script. The output is committed to `docs/` and served by GitHub Pages.

[Back to projects](/projects)

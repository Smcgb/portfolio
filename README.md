# shaneboyce.dev portfolio

My portfolio site, built with my own
[static site generator](https://github.com/smcgb/static-site-generator)
(included here as a git submodule in `generator/`) and hosted on GitHub Pages.

## Layout

```
portfolio/
├── content/      # Markdown pages, one folder per URL (content/about/index.md -> /about/)
├── static/       # copied verbatim into docs/ (CSS, images, CNAME)
├── template.html # page shell: header nav, footer, {{ Title }} / {{ Content }}
├── generator/    # static-site-generator submodule
├── build.sh      # builds the site into docs/
├── main.sh       # builds, then serves docs/ at http://localhost:8888
└── docs/         # generated output, served by GitHub Pages
```

## Usage

```sh
git clone --recurse-submodules git@github.com:Smcgb/portfolio.git
./main.sh                 # preview locally
./build.sh                # build for a custom domain (basepath "/")
./build.sh /portfolio/    # build for https://smcgb.github.io/portfolio/
```

Commit `docs/` after building; GitHub Pages serves it from `main` → `/docs`.

To pull in generator updates:

```sh
git submodule update --remote generator
```

## Writing content

Pages use the Markdown subset the generator supports: headings, paragraphs,
`-` and `1.` lists, `>` quotes, fenced code, links, images, `**bold**`,
`_italic_`, and `` `code` ``. Every page needs one `# H1`, which becomes the
page title. Blocks must be separated by blank lines, and plain text can't contain
an unpaired `_` or `*` (put identifiers with underscores inside link text or
rephrase).

# Tatla Lake Cottage

[![Website](https://img.shields.io/website?url=https%3A%2F%2Ftatlalake.ca&label=tatlalake.ca)](https://tatlalake.ca)
[![Deploy](https://github.com/wisl-tatlalake/tatlalake.github.io/actions/workflows/deploy.yml/badge.svg)](https://github.com/wisl-tatlalake/tatlalake.github.io/actions/workflows/deploy.yml)
[![Release](https://img.shields.io/github/v/release/wisl-tatlalake/tatlalake.github.io)](https://github.com/wisl-tatlalake/tatlalake.github.io/releases)

Marketing website for a short-term-rental cottage on **Tatla Lake**, BC (West
Chilcotin) — bookable on Airbnb and VRBO. Built with
[Jekyll](https://jekyllrb.com/) and the
[Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) theme, hosted
on GitHub Pages at **[tatlalake.ca](https://tatlalake.ca)**.

## Editing the site

- **Text & sections:** `index.md` (home), `rates.md`, `gallery.md`
- **Navigation:** `_data/navigation.yml`
- **Photos:** drop real images into `assets/images/` (see the README there);
  keep the file names to avoid editing pages
- **Booking links, analytics, title:** `_config.yml`

## Local development

With Docker (recommended — no local Ruby needed):

```sh
docker compose up            # http://localhost:4000, live reload
docker compose up --build    # after changing the Gemfile
```

Or with a local Ruby toolchain:

```sh
bundle install
bundle exec jekyll serve --livereload
```

## Deploying

Every push to `main` triggers the **Build and deploy** GitHub Action, which
builds the site, checks internal links with `html-proofer`, and publishes to
GitHub Pages. Versioning/changelog is automated by `release-please`.

---

An open-source project by [WISL](https://wisl.earth).

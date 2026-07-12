# Local development image only — production deploys via GitHub Actions, not this file.
# Bakes the gem bundle into the image so `docker compose up` serves instantly with no
# per-run `apt`/`bundle install`. Gems install to the system bundle path (/usr/local/bundle),
# so mounting the source over /srv/jekyll at runtime does not clobber them.
FROM ruby:3.3-slim

# build-essential + git compile native gems; libcurl4 is needed by html-proofer's
# HTTP library (ethon/typhoeus); nodejs is the JS runtime that jekyll-minifier
# (uglifier) uses to minify JS. (CI's ubuntu runner has these.)
RUN apt-get update -qq \
    && apt-get install -y -qq --no-install-recommends build-essential git libcurl4 nodejs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /srv/jekyll

# Install gems first (cached layer) so editing site content doesn't trigger a re-bundle.
# Gemfile.lock is optional (the glob tolerates its absence); bundle install writes
# one into the image if it isn't committed.
COPY Gemfile Gemfile* ./
RUN gem install bundler -N && bundle install

EXPOSE 4000 35729
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload"]

FROM alpine:latest

# Install runtime dependencies
RUN apk add --update --no-cache \
  build-base \
  libstdc++ \
  openssl \
  ncurses-libs \
  inotify-tools \
  make \
  nodejs \
  npm \
  postgresql-client \
  git \
  elixir

RUN mkdir -p /app

WORKDIR /app

RUN mix local.hex --force
RUN mix local.rebar --force

RUN mix archive.install --force hex phx_new

COPY mix.exs .
COPY mix.lock .

CMD mix deps.get && mix phx.server

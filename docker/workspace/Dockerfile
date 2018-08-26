FROM elixir:1.7-alpine

# install tools
RUN apk add --no-cache \
  curl

# install phoenix
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez
RUN mix local.hex --force \
  && mix local.rebar --force

ENV ENV="/etc/profile"
ADD aliases.sh /etc/profile.d/aliases.sh
ADD prompt.sh /etc/profile.d/prompt.sh

WORKDIR /workspace

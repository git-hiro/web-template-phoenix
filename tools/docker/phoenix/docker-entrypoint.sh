#! /bin/ash

# deps
mix deps.get
mix deps.compile

# start server
iex -S mix phx.server

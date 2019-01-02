#! /bin/ash

cd phoenix

# deps
mix deps.get
mix deps.compile

# ecto
mix ecto.create
mix ecto.migrate

# start server
iex -S mix phx.server

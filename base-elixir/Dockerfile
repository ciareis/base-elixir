FROM elixir:1.11.3

# Repository/Image Maintainer
LABEL maintainer="Leandro Henrique <emtudo@gmail.com>"

RUN mix local.hex --force && \
    mix archive.install hex phx_new 1.5.8 --force && \
    mix local.rebar --force

RUN mkdir /app
WORKDIR /app

COPY . .

ARG MIX_ENV=prod

ENV MIX_ENV=${MIX_ENV} \
    SECRET_KEY_BASE="escreva alguma coisa"

RUN mix deps.get --only ${MIX_ENV} && \
    mix compile

EXPOSE 4000

CMD ["mix", "phx.server"]

FROM elixir:1.20.2-otp-28

WORKDIR /app

RUN mix local.hex --force && \
    mix local.rebar --force

EXPOSE 4000

CMD ["mix", "phx.server"]
FROM esydev/esy:nightly-alpine-latest

COPY package.json .
COPY esy.lock .
RUN esy build-dependencies
COPY hello.ml .
RUN esy

ENTRYPOINT ["/entrypoint.sh"]

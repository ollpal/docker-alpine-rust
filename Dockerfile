FROM frolvlad/alpine-glibc

RUN apk add --update --no-cache curl
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

ENV PATH="/root/.cargo/bin:$PATH"

ENTRYPOINT ["sh"]

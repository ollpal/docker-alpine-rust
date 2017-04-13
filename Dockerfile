FROM ubuntu

RUN apt-get update && apt-get install -y \
  curl

ENV HOME /home/dev

WORKDIR /rust

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

ENV PATH="$HOME/.cargo/bin:$PATH"

ENTRYPOINT ["bash"]

# docker-rust

Rust in a docker container

    docker build --build-arg http_proxy --build-arg https_proxy -t rust .
    
    docker run -it -e http_proxy -e https_proxy -v $PWD:/home/user/dev --hostname rust -e USER_ID=$(id -u) -e GROUP_ID=$(id -g) rust

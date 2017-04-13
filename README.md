# docker-rust
Rust in a alpine docker container

    docker build --build-arg http_proxy --build-arg https_proxy -t rust .
    
    docker run -it --rm -e http_proxy -e https_proxy -v $PWD:/rust -u $(id -u):$(id -g) rust

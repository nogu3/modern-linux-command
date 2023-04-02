From ubuntu:22.04

RUN apt update && \
    apt install -y software-properties-common \
    curl \
    gcc \
    git \
    neofetch \
    bat \
    fd-find \
    ripgrep
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
RUN $HOME/.cargo/bin/cargo install exa \
    hexyl \
    procs \
    tokei \
    dutree \
    lsd

RUN echo $'\n\
alias cargo="$HOME/.cargo/bin/cargo"\n\
alias exa="$HOME/.cargo/bin/exa"\n\
alias hexyl="$HOME/.cargo/bin/hexyl"\n\
alias procs="$HOME/.cargo/bin/procs"\n\
alias tokei="$HOME/.cargo/bin/tokei"\n\
alias dutree="$HOME/.cargo/bin/dutree"\n\
alias lsd="$HOME/.cargo/bin/lsd"\n\
' >> /root/.bashrc
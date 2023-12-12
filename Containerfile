FROM registry.fedoraproject.org/fedora-toolbox

RUN dnf install neovim -y && \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | CARGO_HOME=/cargo RUSTUP_HOME=/rustup sh -s -- -y && \
    dnf install gcc -y

ENV PATH="/cargo/bin:$PATH"

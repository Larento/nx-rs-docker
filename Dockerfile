# Nightly is needed for `build-std` feature used in cross-compilation.
FROM ghcr.io/rust-lang/rust:nightly

# Add user
WORKDIR /apps
RUN groupadd -r user
RUN useradd -r -g user user
RUN chown -R user:user /apps
USER user

# Install `cargo-nx`
RUN rustup component add rust-src
RUN cargo install cargo-nx --git https://github.com/aarch64-switch-rs/cargo-nx

FROM devkitpro/devkita64:20231108

# Nightly is needed for `build-std` feature used in cross-compilation
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain nightly
RUN cargo install cargo-nx --git https://github.com/aarch64-switch-rs/cargo-nx

# Use Rust image
FROM rust:1.82

# Working Dir
WORKDIR /app

# Copy project
COPY . .

# Build the project
RUN cargo build --release

# Entry point
CMD ["./target/release/multi-threaded-chat-server"]
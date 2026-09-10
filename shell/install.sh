#!/bin/sh

set -eu

ZIBA_DIR="${ZIBA_DIR:-$HOME/.ziba}"

info() {
    printf '→ %s\n' "$1"
}

success() {
    printf '✓ %s\n' "$1"
}

error() {
    printf '✗ %s\n' "$1" >&2
    exit 1
}

info "Welcome to Ziba."

OS="$(uname -s)"

case "$OS" in
    Linux)
        success "Linux detected."
        ;;
    Darwin)
        info "macOS detected."
        info "You're developing Ziba on macOS."
        ;;
    *)
        error "Unsupported operating system: $OS"
        ;;
esac

mkdir -p "$ZIBA_DIR"

success "Ziba directory: $ZIBA_DIR"
success "Bootstrap complete."

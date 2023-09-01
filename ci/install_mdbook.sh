#!/bin/sh
set -e

MDBOOK_VERSION=0.4.34
MDBOOK_EPUB_VERSION=0.4.34

is_cargo_crate_installed() {
  name=$1
  version=$2
  cargo install --list | grep "$name v$version:" > /dev/null
  return $?
}

install_cargo_crate() {
  name=$1
  version=$2
  flags=$3
  if is_cargo_crate_installed $name $version
  then
    echo "$name version $version is already installed"
  else
    echo "installing $name version $version..."
    cargo install $flags --vers "=$version" $name
  fi
}

install_cargo_crate mdbook $MDBOOK_VERSION '--no-default-features'
install_cargo_crate mdbook-epub $MDBOOK_EPUB_VERSION

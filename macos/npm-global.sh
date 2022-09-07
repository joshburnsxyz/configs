#!/bin/sh

# This script installs a desired set of packages from NPM globally.

inpm() {
  $(which npm) install --global $1
}

inpm prettier
inpm yarn
inpm neovim

#!/usr/bin/env bash
set -e
REPO="palezislanda/hollymodulelab"
LIB="tin-splinter.a"
URL="https://github.com/${REPO}/releases/download/hidden-forest-calm-badger/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app

#!/usr/bin/env bash
pkg install rust -y
cargo install genact
export PATH=$PATH:~/.cargo/bin/
curl https://raw.githubusercontent.com/Crisp-Casper/Genact-for-Termux/main/bash.bashrc >${PREFIX}/etc/bash.bashrc
genact

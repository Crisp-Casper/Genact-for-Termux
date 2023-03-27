#!/usr/bin/env bash
rm /data/data/com.termux/files/usr/etc/tls/openssl.cnf
pkg install openssl rust -y
cargo install genact
export PATH=$PATH:~/.cargo/bin/
curl https://raw.githubusercontent.com/Crisp-Casper/Genact-for-Termux/main/bash.bashrc >${PREFIX}/etc/bash.bashrc
genact

#!/usr/bin/env bash
yes | pkg install openssl rust -y
git clone https://github.com/svenstaro/genact.git
cd genact
cargo install --path ./
cd ..
rm genact -rf
export PATH=$PATH:~/.cargo/bin/
curl https://raw.githubusercontent.com/Crisp-Casper/Genact-for-Termux/main/bash.bashrc >${PREFIX}/etc/bash.bashrc
genact

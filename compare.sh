#!/bin/bash -ex

brew_home=/home/linuxbrew/.linuxbrew
formula_path=$brew_home/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/

/usr/bin/diff \
    Formula/pbjenkins.rb \
    $formula_path/jenkins.rb

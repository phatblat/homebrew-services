#!/bin/bash -ex

/usr/bin/diff \
    Formula/pbjenkins.rb \
    /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/jenkins.rb

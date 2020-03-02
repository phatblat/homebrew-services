#!/bin/bash -e

# brew_home=/home/linuxbrew/.linuxbrew
# jenkins_formula_path=$brew_home/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/jenkins.rb

jenkins_formula_path=~/tmp/jenkins_formula.rb
local_formula_path=Formula/pbjenkins.rb

# Write a copy of the Jenkins Homebrew formula to a temp folder.
# This way the formula doesn't need to be installed.
brew cat jenkins > $jenkins_formula_path

command diff \
    $local_formula_path \
    $jenkins_formula_path \
    | grep -B 1 "sha256"

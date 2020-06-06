#!/bin/bash -e

# brew_home=/home/linuxbrew/.linuxbrew

jenkins_formula_path=(brew_home)/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/jenkins.rb
if ! test -f "$jenkins_formula_path"; then
    # When the jenkins formula is not installed, write a tmp copy for comparison.
    jenkins_formula_path=/tmp/jenkins_formula.rb
    brew cat jenkins > $jenkins_formula_path
fi
local_formula_path=Formula/pbjenkins.rb

# Write a copy of the Jenkins Homebrew formula to a temp folder.
# This way the formula doesn't need to be installed.
brew cat jenkins > $jenkins_formula_path

command diff \
    $local_formula_path \
    $jenkins_formula_path \
    | grep -B 1 "sha256"

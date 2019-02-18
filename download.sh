#!/bin/bash -e

if test -z "$1"; then
    echo "Usage: download.sh 2.165" >&2
    exit 1
fi

version=$1
readonly file="jenkins-$version.war"
readonly url="http://mirrors.jenkins.io/war/$version/jenkins.war"

echo "👇🏻 Downloading Jenkins $version - $url"

curl \
    --fail \
    --location \
    --progress-bar \
    --output $file \
    $url

shasum \
    --algorithm 256 \
    $file

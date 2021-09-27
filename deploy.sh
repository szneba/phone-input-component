#!/usr/bin/env sh

set -e

npx vue-cli-service build

cd dist

git init
git add .
git commit -m "New Deployment"
git push -f https://github.com/szneba/phone-input-component.git main:gh-pages

cd -

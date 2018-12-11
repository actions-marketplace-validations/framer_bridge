#!/bin/sh

printf "@framer:registry=https://registry.framer.com/\nalways-auth=true\n//registry.framer.com/:_authToken=$NPM_AUTH_TOKEN" > "$HOME/.npmrc"
chmod 0600 "$HOME/.npmrc"

VERSION=$(yarn info --json | jq '.data["dist-tags"].latest | (split(".") | .[-2] = (.[-2]|tonumber + 1) | join("."))')

sh -c "yarn publish --access=restricted --new-version=${VERSION} --no-git-tag-version $*"

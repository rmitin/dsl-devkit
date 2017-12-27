#!/usr/bin/env bash
if [ "$TRAVIS_BRANCH" = 'master' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
    openssl aes-256-cbc -K $encrypted_290a23996497_key -iv $encrypted_290a23996497_iv -in ddk-configuration/cd/codesigning.asc.enc -out ddk-configuration/cd/codesigning.asc -d
    gpg --fast-import ddk-configuration/cd/signingkey.asc
fi

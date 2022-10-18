#!/bin/sh
hugo -D
echo 'ipfs name publishing...'
ipfs name publish --key blog $(ipfs add -Q -r public/)

#!/bin/sh
hugo -D
echo 'ipfs name publishing...'
cid=$(ipfs add -Q -r public/)

echo $cid

ipfs name publish --key blog $cid
ipfs pin add $cid

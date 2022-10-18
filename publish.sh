#!/bin/sh

hugo -D
ipfs add -r public/

echo 'public/ cid?'
read cid
echo 'ipfs name publishing...'
ipfs name publish --key blog $cid

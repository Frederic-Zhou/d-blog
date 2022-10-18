---
title: "How to build a D-Blog"
date: 2022-10-18T12:53:30+08:00
draft: true
description: ""
tags: ["hugo", "hexo", "jekyII","IPFS"]
summary: ""
cover: "/posts/how-to-build-d-blog/IPFS-Large.jpg" 
---

Creating an IPFS-based decentralized blog is very simple.

IPFS can easily **store static files**, so it is very suitable for building static blog programs such as hugo, hexo, jekyII, etc.

Take `Hugo` for example

1. Create a Hugo blog Reference: [hugo docs](https://gohugo.io/documentation/).
2. Install IPFS Reference: [ipfs install](https://docs.ipfs.tech/install/).
3. Create a key to publish your blog: `ipfs key gen <your key name>`.
4. gen hugo blog static directory `public/`: `cd <path/to/hugo> && hugo -D`.
5. add `public/` to ipfs: `ipfs add -r /public/` .
6. publish `public/` to ipfs: `ipfs name publish --key <your key name> <cid of public/ directory>`.
7. Send the address to your friends `<your key>`.

Plus, you can make the address easier to remember with **DNSlink**

**reference**: [dnslink](https://docs.ipfs.tech/concepts/dnslink/)
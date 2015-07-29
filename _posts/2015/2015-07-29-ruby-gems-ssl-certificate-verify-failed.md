---
layout: post
title: Ruby gems SSL certificate verify failed
author: fbauer
tags: [ruby]
---

With _ruby gems_ on Windows I got this error message:

`Gem::RemoteFetcher::FetchError: SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed (https://rubygems.org/gems/minitest-5.5.1.gem)`

I could solve it by following the steps in the gist of [luislavena](https://github.com/luislavena):  
[howto-manually-add-trust-cert-to-rubygems.md](https://gist.github.com/luislavena/f064211759ee0f806c88#installing-using-update-packages-new)

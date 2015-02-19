---
layout: post
title: My .inputrc for MINGW32 bash
author: fbauer
tags: [git, bash]
---

I've picked some commands I like and put them in my [.inputrc]({{ site.images }}/2015/inputrc.txt) (in directory found with `echo ~`)

{% highlight bash %}
# source http://superuser.com/a/589629
# source http://www.gnu.org/software/bash/manual/bashref.html#Commands-For-History

set completion-ignore-case on

"\e[[E": re-read-init-file             # F5
"\e[2~": paste-from-clipboard          # Insert
"\e[5~": history-search-backward       # Page up
"\e[6~": history-search-forward        # Page down
"\M-\e[D": backward-word               # Alt-LeftArrow
"\M-\e[C": forward-word                # Alt-RightArrow
{% endhighlight %}



Thanks a lot to these sources:

1. [superuser: bash home/end/delete key inserting tilde, or if preceded by escape key, \[1~ \[3~](http://superuser.com/a/589629)
2. [Bash Reference Manual](http://www.gnu.org/software/bash/manual/bashref.html#Commands-For-History)

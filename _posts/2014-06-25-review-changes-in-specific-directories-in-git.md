---

layout: post
title: Review changes in specific directories with git
author: fbauer
tags: [git]

---

Two handy aliases which show all changes between current `HEAD` revision and the remote branch `origin/master` for specific folders:



{% highlight ini %}
[alias]
rv = log HEAD..origin/master --reverse --stat --ignore-space-at-eol -b -- Folder1/ Folder2/Subfolder/ Folder3/
rc = "!git log HEAD..origin/master --oneline --ignore-space-at-eol -b -- Folder1/ Folder2/Subfolder/ Folder3/ | wc -l"
{% endhighlight %}



- `git rv`: show _log messages_ filtered by given folders
- `git rc`: show _count of log messages_ filtered by given folders

---
layout: post
title: Bulk ammending commit messages in git
author: fbauer
tags: [git]
permalink: /p/2014/10/23/bulk-ammending-commit-messages-in-git/
---

At work we have a giant repository with many projects. Each commit is prefixed with the project and suffixed with an internal project number.

Because I do _not_ want to maintain those prefixes and suffixes during development, I ammend my commit messages before rcheckin to CVS.
<!--break-->

This blog article from gaffo came in handy:  
[Bulk ammending commit messages in git](http://blog.confabulus.com/2011/07/25/bulk-ammending-commit-messages-in-git/)



## My commands

Prepend and append text to commit messages (from master branch to HEAD):

{% highlight bash %}
git filter-branch --msg-filter 'echo -n "Prefix: " && cat && echo. && echo "Suffix, separated by empty newline"' master..HEAD
{% endhighlight %}

Prepend text to commit messages (from master branch to HEAD):

{% highlight bash %}
git filter-branch --msg-filter 'echo -n "Prefix: " && cat' master..HEAD
{% endhighlight %}

Append text to commit messages (from master branch to HEAD):

{% highlight bash %}
git filter-branch --msg-filter 'cat && echo. && echo "Suffix, separated by empty newline"' master..HEAD
{% endhighlight %}



## Tidy up

A little later, I needed the following Stackoverflow articles:

### Remove backup branches

`git filter-branch` creates backups of the branches before it rewrites them. How to remove that backup?  
[Remove refs/original/heads/master from git repo after filter-branch --tree-filter?](http://stackoverflow.com/a/7654880)

Sample:
{% highlight bash %}
git update-ref -d refs/original/refs/heads/my-branch
{% endhighlight %}

### Undo filter-branch

In case `git filter-branch` must be undone, a `git reset --hard HEAD@{1}` comes to the rescue  
[Undoing a git rebase](http://stackoverflow.com/a/135614) (with the help of `git reflog`)

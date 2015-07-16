---
layout: post
title: Include network share in Windows 10
author: fbauer
tags: [windows10]
permalink: /p/2015/01/26/include-network-share-in-windows-10/
---

I tried to map a network drive to my computer. Windows 10 could not reconnect it after updating from Windows 7. So I assumed, something changed between the two windows versions and tried to reconnect the network drive manually:

	net use Y: \\servername\Public /Persistent:Yes /User:Guest

Always got [system error 1240](https://msdn.microsoft.com/en-us/library/windows/desktop/ms681383(v=vs.85).aspx#error_login_wksta_restriction).

### Solution

After a while I researched in my `smb.conf` files of the server which said, that guest logins were not allowed...

Using a user mentioned in `/etc/samba/smbpasswd`, the `net use` command succeeded.

I do NOT want to talk about it... ;-)

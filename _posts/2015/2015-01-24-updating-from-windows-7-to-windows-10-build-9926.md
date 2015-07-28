---
layout: post
title: Updating from Windows 7 to Windows 10 Build 9926
author: fbauer
tags: [windows10]
permalink: /p/2015/01/24/updating-from-windows-7-to-windows-10-build-9926/
---

1. In `services.msc`, disable and end "[Windows Management Instrumentation](https://msdn.microsoft.com/en-us/library/aa826517%28v=vs.85%29.aspx)" (service name "winmgmt")

	Reason: Used to force Windows Update Installer to use another method than WMI to detect RAM (which in my case was 64 MB)

2. Uninstall virus scanner (in my case _[avast!](https://www.avast.com/)_)

	Reason: Virus scanner blocked Windows Update Installer to write to system partition (even when using virus scanner's "completely disable" feature)

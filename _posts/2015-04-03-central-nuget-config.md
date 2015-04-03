---
layout: post
title: Central NuGet.config file
author: fbauer
tags: [nuget]
---

At work we use a central `NuGet.config` file to configure additional NuGet repositories for all developer Machines and the CI-Build environment (see [Chaining multiple configuration files](http://docs.nuget.org/consume/nuget-config-file#chaining-multiple-configuration-files)).

Further we define a common folder which holds all downloaded packages (defined in line 7: "repositorypath") for all solutions in our code repository (see [Specify ‘packages’ Folder Location](http://docs.nuget.org/Release-Notes/NuGet-2.1#specify-‘packages’-folder-location)).

Both `nuget.exe` as well as _Visual Studio_ use the defined repositories from that configuration file when placed in a parent folder of the solution.



### Sample

Here is a sample file as a gist:

<script src="https://gist.github.com/fbau3r/cf80320b620b241d028f.js"></script>

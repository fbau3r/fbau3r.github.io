---
layout: post
title: Corporate NuGet Repository Success
author: fbauer
tags: [nuget]
---

In April 2015, I posted about [Central NuGet.config file]({% post_url 2015/2015-04-03-central-nuget-config %}).

Meanwhile, the project "Corporate NuGet Repository" is running for one year and four months since it's go-live in 10/2014.

In the beginning we had **7 Packages** in our repository (which is a network share, for the sake of simplicity).

By now, we have **39 Packages** (10 Service Contracts among them) with:

- Automated Continuous Integration Builds since 11/2014 (TFS builds which automatically create `*.nupkg` files),
- Usage-Analysis since 11/2014 (using a parser which merges all `packages.config` files and the contents of the repository to XML files then use MS Excel as "frontend"),
- Changelog since 01/2015 (with version validation and CI-Build integration),
- a lot of internal documentation (concept and 58 blog-entries, and counting),
- 12 MB disk usage (on out network share),
- Top10 Reports now and then (just for fun, using Usage-Analysis)
	![Top10 Package Report]({{ site.images }}/2016/corporate-nuget-top10.jpg)

I am really proud of this project!

Thanks to all colleagues who contribute to this project so much!

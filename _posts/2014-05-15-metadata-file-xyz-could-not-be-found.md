---
layout: post
title: "Metadata file 'XYZ' could not be found"
author: fbauer
tags: [visual studio]
---

Sometimes Visual Studio aborts building a Solution with the error message  
`Metadata file 'XYZ' could not be found`.
<!--break-->

There are many reasons for this error (e.g. [Project is not built at all](http://stackoverflow.com/a/17723774), [Clean and Build vs. Rebuild Issues](http://stackoverflow.com/a/20692783)). In my case it has been a project file which was not loaded properly. At the time of building it was `unavailable`:  
![Project unavailable]({{ site.images }}/2014/05/project-unavailable.jpg)

So always check whether there are `unavailable` projects in Solution Explorer when a Solution is not building. Open the context menu of the unavailable project, then choose `Reload project` and check Output Window for errors if it still cannot be loaded...

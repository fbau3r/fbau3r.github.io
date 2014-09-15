---

layout: post
title: CasperJS and ANSICON in Windows
author: fbauer
tags: [casperjs, ansicon]
date: 2014-09-15

---

I could not get ANSICON to work together with CasperJS. Either I had plain output or scrambled text with color codes for ANSICON inside.

After researching a solved 32/64bit process changing issue, I took a step back and tested if ANSICON would give me the expected results at all.

So I wrote an `ECHO` to console with escaped color codes. The output was colored.

Next I examined the logfile of `ansicon -l7` (_Log console output_) which told me that an output to console via `ECHO` _was_ logged but no output of CasperJS was logged at all. That led me to the thought, that `casperjs.exe` might do something wrong in output redirection of the underlying `phantomjs.exe` call.

I looked up the code for [`casperjs.exe` on github](https://github.com/n1k0/casperjs/blob/master/src/casperjs.cs) and picked the arguments I needed to call `phantomjs.exe` directly.

It worked! Calling my `casperjs.bat` file instead of `casperjs.exe` has colored output. :-)

Download Readme and Batch File:

- [readme.md]({{ site.images }}/2014/09/readme.md)
- [casperjs.bat]({{ site.images }}/2014/09/casperjs.bat.txt)

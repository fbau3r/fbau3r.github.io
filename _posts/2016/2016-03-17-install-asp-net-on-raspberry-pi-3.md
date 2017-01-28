---
layout: post
title: Install ASP.NET on Raspberry Pi 3
author: fbauer
tags: [rpi]
---

I managed to install ASP.NET 5 (1.0.0-rc1-update1) on a Raspberry Pi 3 with Raspbian Jessie!

I mainly used the following three sources to get it up and running for me:

- [How to run ASP.NET 5 Beta 3 or GoLang on a Raspberry Pi 2](http://www.hanselman.com/blog/HowToRunASPNET5Beta3OrGoLangOnARaspberryPi2.aspx) from Scott Hanselman
- [Installing ASP.NET 5 On Linux](https://docs.asp.net/en/latest/getting-started/installing-on-linux.html)
- [Home repository ASP.NET Core](https://github.com/aspnet/home)

## Point in Time
At my point in time, I'm using the following versions:

- [Raspbian Jessie](https://www.raspberrypi.org/downloads/raspbian/) Version February 2016
- Mono Repository (intentionally **wheezy** because _jessie_ does not have armhf Packages yet)
- ASP.NET 5 1.0.0-rc1-update1 (Latest commit [1efd101](https://github.com/aspnet/Home/tree/1efd1013379930a3855854885edb59c9ce47ca58))
- libuv v1.8.0



## Step 1 - INSTALL MONO FROM THE MONO PROJECT'S REPOSITORIES

Used **OPTION 1: INSTALL MONO FROM THE MONO PROJECT'S REPOSITORIES** from [How to run ASP.NET 5 Beta 3 or GoLang on a Raspberry Pi 2](http://www.hanselman.com/blog/HowToRunASPNET5Beta3OrGoLangOnARaspberryPi2.aspx).

### Use Debian Wheezy Repository from Mono Project

	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
	echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
	sudo apt-get update && apt-get upgrade
	sudo apt-get install mono-complete



## Step 2 - Install libuv

From the ASP.NET 5 documentation: [Install libuv](https://docs.asp.net/en/latest/getting-started/installing-on-linux.html#install-libuv)

	sudo apt-get install make automake libtool curl
	curl -sSL https://github.com/libuv/libuv/archive/v1.8.0.tar.gz | sudo tar zxfv - -C /usr/local/src
	cd /usr/local/src/libuv-1.8.0
	sudo sh autogen.sh
	sudo ./configure
	sudo make
	sudo make install
	sudo rm -rf /usr/local/src/libuv-1.8.0 && cd ~/
	sudo ldconfig



## Step 3 - Install ASP.NET 5

Used **ADDING ASP.NET 5** _MODIFIED_ from [How to run ASP.NET 5 Beta 3 or GoLang on a Raspberry Pi 2](http://www.hanselman.com/blog/HowToRunASPNET5Beta3OrGoLangOnARaspberryPi2.aspx).

### Install dnvm - .NET Version Manager

	mkdir ~/sources
	mkdir ~/sources/aspnet5
	cd ~/sources/aspnet5
	git clone git://github.com/aspnet/home.git
	sh ~/sources/aspnet5/home/dnvminstall.sh
	source ~/.dnx/dnvm/dnvm.sh
	dnvm upgrade

### Add Certificates for NuGet

	CERTMGR=/usr/local/bin/certmgr
	sudo $CERTMGR -ssl -m https://go.microsoft.com
	sudo $CERTMGR -ssl -m https://nugetgallery.blob.core.windows.net
	sudo $CERTMGR -ssl -m https://nuget.org

	mozroots --import --machine --sync



## Step 4 - Restore Sample-Project

### NuGet Restore for Linux - dnu

	cd ~/sources/aspnet5/home/samples/1.0.0-rc1-update1/HelloMvc
	dnu restore



## Step 5 - Run Webserver

	cd ~/sources/aspnet5/home/samples/1.0.0-rc1-update1/HelloMvc
	dnx web

Open Webpage <http://localhost:5004> and voilà!

![ASP.NET on Raspberry Pi 3]({{ site.images }}/2016/rpi3-and-aspnet5.jpg)

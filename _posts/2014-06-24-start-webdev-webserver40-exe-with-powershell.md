---

layout: post
title: Start WebDev.WebServer40.EXE with Powershell
author: fbauer
tags: [powershell]

---

Start `WebDev.WebServer40.exe` from _Microsoft Visual Studio 2012_, if it is not yet running. The function starts the webserver if it was not yet started.



	[CmdletBinding()]
	PARAM
	(
		[ValidateNotNull()]
		[int]$port = 8080,

		[ValidateNotNullOrEmpty()]
		[ValidateScript({Test-Path $_})]
		[string]$path = (pwd)
	)

	Set-Variable PROCESSDIRECTORY -Option Constant -value ([System.Environment]::ExpandEnvironmentVariables('%CommonProgramFiles(x86)%\Microsoft Shared\DevServer\11.0\'))
	Set-Variable PROCESSNAME -Option Constant -value 'WebDev.WebServer40.exe'

	$matchingProcesses = Get-WmiObject Win32_Process -Filter " name = '$PROCESSNAME' " |
		Where-Object { $_.CommandLine -like "*/port:$port*" }

	if($matchingProcesses -ne $null)
	{
		# output a warning if another path than given path is used by existing process
		if(-not($matchingProcesses.CommandLine -like "*/port:$port /path:$path"))
		{
			Write-Warning ('Process "{0}" with PID "{1}" already listening to port "{2}"
CommandLine: "{3}"' -f $matchingProcesses.Name, $matchingProcesses.Handle, $port, $matchingProcesses.CommandLine)
		}
		return
	}

	& "$PROCESSDIRECTORY$PROCESSNAME" /port:$port /path:$path
	& start http://localhost:$port/



## Update
Removed `function Start-Webserver{}` surrounding so the snippet can be saved to a file (e.g. _Start-Webserver.ps1_) to be executed, e.g.:

	powershell -noprofile -file Start-Webserver.ps1

Append parameters `port` and `path` if you need other values than default values, e.g.:

	powershell -noprofile -file Start-Webserver.ps1 -port 8008 -path C:\temp\myWebsite

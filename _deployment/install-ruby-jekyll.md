# Install Ruby and Jekyll
1. Download `Ruby 1.9.3-p545` from [Ruby Installer Downloads](http://rubyinstaller.org/downloads/)
1. Install to `c:\tools\ruby193`
	- Check "Add Ruby executables to your PATH"
	- Check "Associate .rb and .rbw files with this Ruby installation"
1. Download `DevKit-tdm-32-4.5.2-20111229-1559-sfx.exe` from [Ruby Installer Downloads](http://rubyinstaller.org/downloads/)
1. Extract to `c:\tools\devkit` then follow [Development Kit Documentation](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit)
	- run `ruby dk.rb init`
	- run `ruby dk.rb install`
	- verify with JSON gem
1. Install jekyll: `gem install github-pages` in _Command Prompt with ruby_
1. Install missing dependency for "watcher": `gem install wdm`



## Setup Shortcuts
All Shortcuts use repository location as Working directory!

1. jekyll: `%COMSPEC% /k jekyll serve -w --config _config.yml`



### Nice CMD settings
1. Tab `Options`
	1. QuickEdit mode
2. Tab `Font`
	1. Size _12_
	2. Font _Consolas_
3. Tab `Layout`
	1. Screen buffer size: Width _94_, Height _500_
	2. Window size: Width _94_, Height _47_
	3. Window position: Left: _0_, Top: _0_, _uncheck_ Let system position window
4. Tab `Colors`
	1. Screen background: Lila (6)

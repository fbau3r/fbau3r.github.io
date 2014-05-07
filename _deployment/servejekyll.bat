@ECHO OFF

SET configuration=%~1
IF ""=="%configuration%" (
	SET configuration=debug
)

SET configfile=_config-%configuration%.yml
IF "release"=="%configuration%" (
	SET configfile=..\_config.yml
)

REM http://jekyllrb.com/docs/windows/#encoding
CHCP 65001

REM open page in browser (though it's not running yet)
START "" "http://localhost:4000/"

CALL c:\tools\jekyll\setpath.cmd
CALL jekyll serve --watch -s .. -d ..\_site --config %configfile%

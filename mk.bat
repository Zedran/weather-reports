@ECHO OFF

set source_path=./src
set output_path=./build/metar.exe

go mod tidy
go build -o %output_path% -trimpath -ldflags "-s -w" %source_path%

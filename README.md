
# getGOing

## getGOing is a barebones Go project template

Features:

* Single command to build and run in Golang project in Docker (via `make`)

* Third party dependencies managed by `dep`

* Source code copied into Docker using volume mounts (elimiate need to re-build image)

* `/vendor` cached between image rebuilds

Instructions:

The entry point for this project is `cmd/projectd/main.go`

`make`
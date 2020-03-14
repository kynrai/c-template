# C Sample project layout

Work in progress

## Makefile

`TARGET` is the name of the app, change as you like. It will nbe the name of the bin created.

### `make`

Creates directiories and builds C files outputting `.o` files to `obj/` and `bin` files to `bin/`

### `make run`

Runs the `TARGET` (default: app) and builds if needed. Also rebuilds on subsequent runs if code in src has changed.

### `make clean`

Cleanup obj and bin directories but leaves the directories there. Directories are omitted from git

## Development

Generally just write code under src and call `make run` to execute. Change code and call `make run` again.

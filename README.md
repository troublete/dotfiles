# dotfiles
> essential setup of dotfiles for new Unix-like (preferably macOS) environment

## Quickstart

```sh
make
```
## Requirements

I'd recommend to have following utilities installed, since the full setup
requires them to be available.

### Required
* `make` (the initial linking is defined as a make target, for most Unix-like
  systems `make` should be available anyway)
* `find(1)` (required by make target to link files, should be available on most UNIX systems anyway)
* `ln(1)` (required by make target to link files, should be available on most UNIX systems anyway)

### Optional
* [Homebrew](https://brew.sh) (a global `.Brewfile` will be linked aswell which
  installs some necessities)

## Targets

* **all** (default): *link* *deps*

* **link**
Links all files to `~`, marks the initial setup.

* **deps** 
Will install global brew formulas.

## Notes

### Recommendations

* [rvm](https://rvm.io) - Ruby version manager, similar to `nvm` (which is contained within `.Brefile`)
* Using `tcsh`, which is already installed on macOS

## License
© 2017-2019 MIT Willi Eßer

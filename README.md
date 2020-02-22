# Self-contained Talvos build script

## Setup

```
$ git submodule update --init --recursive
```

## Requirements

* cmake
* ninja
* python(to checkout dependencies for SPIRV-Tools)
* (optional) readline library(Used in Talvos)
  * Install by `sudo apt install libreadline-dev` for Ubuntu

## Linux

Build SPIRV-Tools

```
$ ./scripts/build-externals.sh
```

Built files will be installed to `<repo>/dist`.
 

```
$ ./scripts/bootstrap-linux.sh
$ cd build
$ ninja
$ ninja test
```

## Windows, macOS

T.B.W.

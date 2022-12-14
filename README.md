# container-latex

A personal container image for building LaTex projects. It contains all the dependencies that I require to build my own LaTex documents.

Do not consider this to be a universial image. But if you find this useful as well yet miss a package, feel free to open an issue or a PR to improve this image.

The GPLv3 license of this repository only applies to its source code aka its Dockerfile, Github Workflow, scripting etc. Images built using this repo may contain software to which this license does not apply.

## Usage

A typical usage pattern may look like this:

```
# assuming all required files are in your current working directory
podman run --rm --pull newer -v "$${PWD}":/oki -w /oki ghcr.io/tamara-schmitz/container-latex:main latexmk -pdf doc.tex
```

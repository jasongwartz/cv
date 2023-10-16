# Jason Gwartz - CV

![pdflatex](https://github.com/jasongwartz/cv/actions/workflows/pdflatex.yaml/badge.svg)

This is a GitHub repo representing my current CV. It's written using in LaTeX, modified from a template from latextemplates.com.

## Development

**TLDR:**
```sh
./build.sh
# Builds a Docker image with the required LaTeX packages,
# and runs `pdflatex` to produce the output PDF.
```

Since the visual output can differ significantly based on LaTeX distributions and available plugins, the best way to build the CV is using a Docker image. It is possible to build locally, but the appearance may not be consistent.

The provided `build.sh` script will build a Docker image with the required packages, and use `pdflatex` to produce a PDF in the repo's directory.


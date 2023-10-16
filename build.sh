set -euxo pipefail

docker build . -t jasongwartz/cv-builder
docker run --rm -v $PWD:/data jasongwartz/cv-builder pdflatex jasongwartz.tex

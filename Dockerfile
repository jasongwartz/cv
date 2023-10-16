FROM ubuntu

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        texlive-latex-recommended \
        texlive-fonts-recommended \
    && \
    apt-get install -y --no-install-recommends \
        texlive-latex-extra \
        texlive-fonts-extra \
        texlive-lang-all \
    && \
    rm -rf /var/lib/apt/lists/*

WORKDIR "/data"

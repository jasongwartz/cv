IMAGE := jasongwartz/cv-builder
TEX := jasongwartz.tex
PDF := $(TEX:.tex=.pdf)
SOURCES := $(wildcard *.tex *.cls)

.PHONY: build dev

build: $(PDF)

$(PDF): $(SOURCES) .image-built
	docker run --rm -v "$$PWD":/data $(IMAGE) pdflatex $(TEX)

.image-built: Dockerfile
	docker build . -t $(IMAGE)
	@touch .image-built

dev: .image-built
	@command -v fswatch >/dev/null 2>&1 || { echo "Error: fswatch is required (brew install fswatch)"; exit 1; }
	@echo "Building PDF..."
	@$(MAKE) build
	@echo "Watching for changes..."
	@fswatch -o $(SOURCES) | while read -r _; do \
		echo "Change detected, rebuilding..."; \
		$(MAKE) build; \
		echo "Done."; \
	done

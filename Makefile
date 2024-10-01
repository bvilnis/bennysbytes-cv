# Makefile for Hugo site

# Variables
HUGO := hugo
PUBLIC_DIR := public

# Default target
.PHONY: default
default: help

# Help target
.PHONY: help
help:
	@echo "Available commands:"
	@echo "  make build    - Build the Hugo site"
	@echo "  make serve    - Serve the site locally"
	@echo "  make new      - Create a new content file"
	@echo "  make clean    - Remove generated files"
	@echo "  make deploy   - Deploy the site (customize as needed)"

# Build the site
.PHONY: build
build:
	$(HUGO)

# Serve the site locally
.PHONY: serve
serve:
	$(HUGO) server -D

# Create a new content file
.PHONY: new
new:
	@read -p "Enter the title of the new content: " title; \
	$(HUGO) new content/posts/$$title.md

# Clean generated files
.PHONY: clean
clean:
	rm -rf $(PUBLIC_DIR)

# Deploy the site (customize this target as needed)
.PHONY: deploy
deploy: build
	@echo "Deploying the site..."
	# Add your deployment commands here
	@echo "Deployment complete."

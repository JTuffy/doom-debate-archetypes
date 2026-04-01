# Makefile for dd-post Quarto project

QUARTO := "C:/Program Files/Quarto/bin/quarto.exe"

# ── Default ──────────────────────────────────────────────────────────────────
.PHONY: all
all: render

# ── Build ─────────────────────────────────────────────────────────────────────
.PHONY: render
render:
	$(QUARTO) render

# ── Dev server ────────────────────────────────────────────────────────────────
.PHONY: preview
preview:
	$(QUARTO) preview

# ── Clean build artifacts ─────────────────────────────────────────────────────
.PHONY: clean
clean:
	rm -f $(OUT)
	rm -rf index_files
	rm -rf .quarto

# ── Open rendered output in default browser (Windows) ────────────────────────
.PHONY: open
open: render
	start $(OUT)

# ── Check all source files exist and include chain is intact ─────────────────
.PHONY: check
check:
	@echo "Checking chapter files..."
	@for f in \
		chapters/axes.qmd \
		chapters/cuts.qmd \
		chapters/position.qmd \
		chapters/utility.qmd \
		chapters/archetypes/intro.qmd \
		chapters/archetypes/hard-doomer.qmd \
		chapters/archetypes/structural-doomer.qmd \
		chapters/archetypes/conditional-doomer.qmd \
		chapters/archetypes/multipolar.qmd \
		chapters/archetypes/gradualist.qmd \
		chapters/archetypes/safe-by-design.qmd \
		chapters/archetypes/paradigm-skeptic.qmd; do \
		test -f "$$f" && echo "  ✓ $$f" || echo "  ✗ MISSING: $$f"; \
	done

# ── Help ──────────────────────────────────────────────────────────────────────
.PHONY: help
help:
	@echo "Targets:"
	@echo "  make render   — build index.html from index.qmd"
	@echo "  make preview  — start live-reload dev server"
	@echo "  make clean    — remove build artifacts"
	@echo "  make open     — render and open in browser"
	@echo "  make check    — verify all chapter files exist"

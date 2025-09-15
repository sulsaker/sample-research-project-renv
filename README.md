# Sample Research Project (R + Python + LaTeX) — with `renv`

This scaffold keeps R, Python, and LaTeX together and adds **per‑project R libraries** using `{renv}`.

## Quick start

```bash
# clone
git clone git@github.com:<your-username>/sample-research-project-renv.git
cd sample-research-project-renv

# Python (optional)
python -m venv .venv
# PowerShell: .venv\Scripts\Activate.ps1
pip install -r requirements.txt

# R (Positron or Rscript): restore packages
Rscript -e "renv::restore()"

# Build TeX (VS Code LaTeX Workshop or latexmk)
code .
```

## Layout
- `R/analysis.R` — demo R script that writes a CSV and a plot.
- `python/analysis.py` — demo Python script that writes a CSV and a plot.
- `tex/main.tex` — minimal article that includes the generated figure and cites `refs.bib`.
- `renv.lock` — exact R package versions for this project.
- `renv/` — renv internals; the heavy `renv/library/` is ignored by Git.
- `.vscode/tasks.json` — includes **R: restore & run analysis** task.

## renv workflow
In R:
```r
renv::restore()           # install deps from renv.lock
# add packages
renv::install(c("ggplot2","readr","fixest"))
renv::snapshot()          # update renv.lock
```

# LAB1 – Linear Programming (airline problem)

Data Analysis, Optimization and Decision Making – UAB 2026-27.
Deadline: Wednesday 11 November 2026, 23:59. One report per group on Campus Virtual.

## Folders

- `report/` – the report (IEEE Access template)
  - `LAB1_Report.tex` – the text of the report
  - `LAB1_Report.pdf` – the compiled report
  - `figures/` – the figures, made in MATLAB
  - all other files belong to the template (do not change them)
- `matlab/` – the MATLAB code
  - `lab1_part1a_graphical.m` – Part 1a (graphical method)
  - `lab1_part1c_simplex.m` – Part 1c (simplex method with `linprog`)
  - `lab1_part2_fuel.m` – Part 2 (minimum fuel)

## To do

Each group member adds their name and NIU in `report/LAB1_Report.tex` (search for `TODO`).

## Compile the report

Compile `report/LAB1_Report.tex` with pdfLaTeX (for example in Overleaf).
Or run `latexmk -pvc` in the `report/` folder: the PDF is rebuilt every time you save.

## Run the code

In MATLAB, go to the `matlab/` folder and run a script.
Part 1c and Part 2 need the Optimization Toolbox (`linprog`).
Part 1a and Part 2 save their figure in `report/figures/`.

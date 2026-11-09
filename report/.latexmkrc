# latexmk settings for LAB1 report -- run `latexmk -pvc` in this folder
$pdf_mode = 1;
@default_files = ('LAB1_Report.tex');
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 -file-line-error %O %S';
$out_dir = 'build';
$pdf_previewer = 'open -a Preview';
$success_cmd = 'cp build/LAB1_Report.pdf LAB1_Report.pdf';

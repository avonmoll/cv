$out_dir='build';
$pdf_previewer = 'open -a Skim';
# $pdflatex = "xelatex %O %S -shell-escape -synctex=1 -interaction=nonstopmode -output-driver='xdvipdfmx -z3'";
$pdf_mode = 1;
$dvi_mode = 0;
$postscript_mode = 0;
$pdflatex = 'pdflatex -shell-escape -synctex=1 -interaction=nonstopmode';
@generated_exts = (@generated_exts, 'synctex.gz');

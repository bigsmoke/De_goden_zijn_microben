all: De_goden_zijn_microben.pdf

De_goden_zijn_microben.pdf: De_goden_zijn_microben.tex
	pdflatex $<
	pdflatex $<

.PHONY:
ambush:
	while true; do make | ccze -A; inotifywait --recursive --event modify .; sleep 0.1; done


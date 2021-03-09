EXAMPLE=example
BEAMER=beamer-example

default: $(EXAMPLE).pdf $(BEAMER).pdf

%.dvi: %.tex lstcustom.sty
	latex $<
	# Run latex twice for references
	latex $<

%.pdf: %.tex lstcustom.sty
	pdflatex $<
	# Run latex twice for references
	pdflatex $<

clean:
	rm -rf *~ auto $(addprefix $(EXAMPLE).,aux dvi log pdf) \
                       $(addprefix $(BEAMER).,aux dvi log nav out pdf snm toc vrb)


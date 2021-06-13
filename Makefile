EXAMPLE=example
BEAMER=beamer-example

dockerimage:=registry.gitlab.com/mark.e.royer/texlive-full-with-emacs:20210611
dockeropts:=-u 1000:1000 -w /test \
-v $(CURDIR):/test \
-v /etc/group:/etc/group:ro \
-v /etc/passwd:/etc/passwd:ro \
-it --rm


.PHONY: clean squeaky-clean startdocker startdocker-build startdocker-build

default: $(EXAMPLE).pdf $(BEAMER).pdf

%.pdf: %.tex lstcustom.sty
	latexmk -pdf -shell-escape $<

# Start docker and leave open
startdocker:
	docker run $(dockeropts) $(dockerimage)

# If you don't want to keep the container alive, build the default
# make target and exit.
startdocker-build:
	docker run $(dockeropts) $(dockerimage) make

clean:
	rm -rf *~ auto $(addprefix $(EXAMPLE).,aux dvi log pdf) \
                       $(addprefix $(BEAMER).,aux dvi log nav out pdf snm toc vrb)


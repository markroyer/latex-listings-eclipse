example_file=example
beamer_file=beamer-example

dockerimage:=registry.gitlab.com/mark.e.royer/texlive-full-with-emacs:20210611
dockeropts:=-u 1000:1000 -w /test \
-v $(CURDIR):/test \
-v /etc/group:/etc/group:ro \
-v /etc/passwd:/etc/passwd:ro \
-it --rm


.PHONY: clean squeaky-clean startdocker startdocker-build startdocker-build

default: $(example_file).pdf $(beamer_file).pdf

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
	rm -rf *~ auto $(addprefix $(example_file).,aux dvi fdb_latexmk fls log pdf) \
           $(addprefix $(beamer_file).,aux dvi fdb_latexmk fls log nav out pdf snm toc vrb)


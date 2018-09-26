ifeq ($(OS), Windows_NT)
	cd=chdir
	cp=cp
	rm=del
	rm_pdf=$(rm) *pdf 2> nul
	mv=move
else
	cd=cd
	cp=cp
	rm=rm -f
	rm_pdf=$(rm) *pdf
	mv=mv
endif
asyc = asy
asycopt = -noV

asyfiles=$(wildcard *.asy)
pdffiles=$(patsubst %.asy, %.pdf, $(asyfiles))
outputpdffiles=$(patsubst %.asy, pdfout/%.pdf, $(asyfiles))

all: $(outputpdffiles)

$(outputpdffiles) : pdfout/%.pdf : %.pdf
	@echo copy file $< to ./pdfout &&\
		$(cp) $< pdfout

$(pdffiles): %.pdf : %.asy
	@echo compile $< && \
		$(asyc) $(asycopt) $<

clean:
	@echo Clean... &&\
	$(rm) *.pdf *.log *.aux &&\
	$(cd) pdfout && $(rm) *.pdf && $(cd) ..

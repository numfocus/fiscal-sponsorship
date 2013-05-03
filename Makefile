fsa=numfocus-fsa-template

$(fsa).pdf: $(fsa).tex fsa-definitions.tex leadership-body.tex signatures.tex
	latex $(fsa)
	dvips $(fsa).dvi
	ps2pdf $(fsa).ps

clean:
	rm -f *~ *.aux *.dvi *.log

cleanall: clean
	rm -f $(fsa).pdf

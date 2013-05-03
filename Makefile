fsa=numfocus-fsa-template

$(fsa).pdf: $(fsa).tex fsa-definitions.tex leadership-body.tex signatures.tex
	latex $(fsa)
	dvips $(fsa).dvi
	ps2pdf $(fsa).ps

clean:
	rm -f *~ *.aux *.dvi *.log $(fsa).ps

cleanall: clean
	rm -f $(fsa).ps $(fsa).pdf

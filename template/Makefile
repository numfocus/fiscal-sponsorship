# Makefile for the NumFOCUS Fiscal Sponsorship agreement

# For each project, the template file will have been renamed to something else;
# adjust the line below to reflect the real name of the file. No other changes
# should be necessary
fsa=numfocus-fsa-template

# Targets

# Note: we run latex like this instead of pdflatex b/c the file uses a
# postscript-only package for the DRAFT watermark.
$(fsa).pdf: $(fsa).tex fsa-definitions.tex leadership-body.tex signatures.tex
	latex $(fsa)
	latex $(fsa)
	dvips $(fsa).dvi
	ps2pdf $(fsa).ps

clean:
	rm -f *~ *.aux *.dvi *.log $(fsa).ps

cleanall: clean
	rm -f $(fsa).ps $(fsa).pdf

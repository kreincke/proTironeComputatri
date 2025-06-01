# This file is part of proScientia.ltx
# (c) 2022 Karsten Reincke (https://github.com/kreincke/proScientia.ltx)
# It is distributed under the terms of the creative commons license
# CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)

#LATEX=latex
LATEX=pdflatex

AUX_EXTS=url bbl blg aux dvi toc log lof nlo nls ilg ils ent out log bcf xml nav snm vrb
RES_EXTS=ps pdf
RESULTS=results

LNX_TD="../.."
PTC_TD="../../${LNX_TD}"
LES_TD=${PTC_TD}/lessons

LVZ="fi-literaturverzeichnis"

help:
	echo "make [ release | lesson | lvz | YOURFILE.pdf | help]"

release: lesson 

lesson: lvz
	mv ${LVZ}.pdf ${LES_TD}
	@ tree ${LES_TD}	

lvz:
	@ make ${LVZ}.pdf

check:
	@ echo "### `date +'%Y%m%dT%H%M%S'`"
	@ echo "### checking library entries of ${LVZ}"
	@ $(LATEX)  ${LVZ}.tex
	@ biber ${LVZ}.bcf

.SUFFIXES: .tex .dvi .ps .pdf .rtf

.tex.pdf:
	@ echo "### `date +'%Y%m%dT%H%M%S'`"
	@ echo "### converting $< to $@"
	@ $(LATEX) $<
	@ biber `basename $< .tex`
	@ makeindex `basename $< .tex`.nlo -s ../../cfg.gl/nomencl.ist -o `basename $< .tex`.nls
	@ $(LATEX) $<
	@ $(LATEX) $<
ifneq ($(LATEX),pdflatex)
	@ echo "### converting DVI to PostScript"
	@ dvips $<
	@ echo "### converting PostScript to PDF"
	@ ps2pdf $<
endif
	@ make clear

.tex.dvi:
	@ echo "### `date +'%Y%m%dT%H%M%S'`"
	@ echo "### converting $< to $@"
	@ latex $<
	@ biber `basename $< .tex`
	@ makeindex `basename $< .tex`.nlo -s cfg/nomencl.ist -o `basename $< .tex`.nls
	@ latex $<
	@ latex $<

.dvi.ps:
	@ echo "### `date +'%Y%m%dT%H%M%S'`"
	@ echo "### converting $< to $@"
	@ dvips $<

clear:
	$(foreach EXT, ${AUX_EXTS}, if [ ! "x`ls *.${EXT} 2>/dev/null`" = "x" ]; then rm *.${EXT}; fi;)

clean:	clear
	$(foreach EXT, ${RES_EXTS}, if [ ! "x`ls *.${EXT} 2>/dev/null`" = "x" ]; then rm *.${EXT}; fi;)



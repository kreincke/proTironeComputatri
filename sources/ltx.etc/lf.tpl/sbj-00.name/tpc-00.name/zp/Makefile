# This file is part of the Open Source project 'proTironeComputatri'
# (c) 2025 Karsten Reincke (https://github.com/kreincke/proTironeComputatri)
# It is distributed under the terms of the creative commons license
# CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)

#LATEX=latex
LATEX=pdflatex

AUX_EXTS=url bbl blg aux dvi toc log lof nlo nls ilg ils ent out log bcf xml nav snm vrb json tmp
RES_EXTS=ps pdf 

TFL=texfiles.tmp

help:
	echo "make | make YOURFILE.pdf"

texFiles:
	@ if [ -f ${TFL} ]; then rm ${TFL}; fi
	@ ls *.tex | grep -v inc-image-list.tex | while read f; do echo $$f; echo $$f >> ${TFL}; done
	
.SUFFIXES: .tex .dvi .ps .pdf .rtf

.tex.pdf:
	@ echo "### `date +'%Y%m%dT%H%M%S'`"
	@ echo "### (1) collecting relevant tex files"
	@ make texFiles
	@ echo "### (2) computing the image reference"
	@ ../../../../bin/collect-img-meta-data.sh
	@ python3 ../../../../bin/write-img-meta-data-list.py > inc-image-list.tex
	@ echo "### (2) converting $< to $@"
	@ $(LATEX) $<
	@ biber `basename $< .tex`
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
	@ if [ -f ./inc-image-list.tex ]; then rm ./inc-image-list.tex; fi 
	


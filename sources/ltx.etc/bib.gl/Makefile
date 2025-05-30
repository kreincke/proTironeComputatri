# This file is part of the Open Source project 'proTironeComputatri'
# (c) 2025 Karsten Reincke (https://github.com/kreincke/proTironeComputatri)
# It is distributed under the terms of the creative commons license
# CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)

#LATEX=latex
LATEX=pdflatex

AUX_EXTS=url bbl blg aux dvi toc log lof nlo nls ilg ils ent out log bcf xml nav snm vrb json tmp
RES_EXTS=ps pdf 

clear:
	$(foreach EXT, ${AUX_EXTS}, if [ ! "x`ls *.${EXT} 2>/dev/null`" = "x" ]; then rm *.${EXT}; fi;)



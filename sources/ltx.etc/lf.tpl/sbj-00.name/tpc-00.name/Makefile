# This file is part of the Open Source project 'proTironeComputatri'
# (c) 2025 Karsten Reincke (https://github.com/kreincke/proTironeComputatri)
# It is distributed under the terms of the creative commons license
# CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)

AUX_EXTS=""
RES_EXTS=pdf

SUBDIRS=""

default: clean


EVD="../../../3ps/eisvogel"

help:
	echo "make [ help | exercise | oraltrack | playbook | deepdive | zenprese | all |  YOURFILE.pdf"


exercise: exercise.pdf
	echo "writing exercise.pdf"

oraltrack: oraltrack.pdf
	echo "writing oraltrack.pdf"

playbook: playbook.pdf

deepdive:

zenprese:
	(cd zp && make tpc.pdf)



.SUFFIXES: .md .pdf 

.md.pdf:
	@ echo "### `date +'%Y%m%dT%H%M%S'`"
	@ echo "### converting $< to $@"
	@ pandoc header.md $< -o $@ --from markdown --template ${EVD}/eisvogel.latex --listings -V lang=de-DE
	@ make clear

clear:
	$(foreach EXT, ${AUX_EXTS}, if [ ! "x`ls *.${EXT} 2>/dev/null`" = "x" ]; then rm *.${EXT}; fi;)

clean:	clear
	$(foreach EXT, ${RES_EXTS}, @if [ ! "x`ls *.${EXT} 2>/dev/null`" = "x" ]; then rm *.${EXT}; echo "removing existing .${EXT}-target-files"; fi;)

dclear: clear
	$(foreach DIR, ${SUB_DIRS}, cd ${DIR} && make clear && cd ..;)

dclean: dclear clean

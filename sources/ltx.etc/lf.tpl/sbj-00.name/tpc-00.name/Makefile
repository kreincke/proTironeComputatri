# This file is part of the Open Source project 'proTironeComputatri'
# (c) 2025 Karsten Reincke (https://github.com/kreincke/proTironeComputatri)
# It is distributed under the terms of the creative commons license
# CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)

AUX_EXTS=tmp
RES_EXTS=pdf
RESULTS=results

default: clean

DEPFILE=playbook.pdf

EVD="../../../3ps/eisvogel"

help:
	echo "make [ help | exercise | oraltrack | playbook | deepdive | zenprese | all |  YOURFILE.pdf"

all: exercise oraltrack playbook zenprese

exercise: 
	echo "writing exercises"
	@ mkdir -p ${RESULTS}
	@ FN=`ls exercise*.md` && BN=`basename $${FN}`\
		&& CN=`echo $${BN%\.*}` && make $${CN}.pdf \
		&& mv $${CN}.pdf ${RESULTS}

oraltrack:
	echo "writing oraltrack"
	@ mkdir -p ${RESULTS}
	@ FN=`ls oraltrack*.md` && BN=`basename $${FN}`\
		&& CN=`echo $${BN%\.*}` && make $${CN}.pdf \
		&& mv $${CN}.pdf ${RESULTS}

playbook: 
	echo "writing playbook"
	@ mkdir -p ${RESULTS}
	@ FN=`ls playbook*.md` && BN=`basename $${FN}`\
		&& CN=`echo $${BN%\.*}` && make $${CN}.pdf \
		&& mv $${CN}.pdf ${RESULTS}

zenprese:
	echo "writing zenprese"
	@ mkdir -p ${RESULTS}
	@ (cd zp && BN=`ls zp-tpc*` && CN=`echo $${BN%\.*}`\
		&& make $${CN}.pdf && mv $${CN}.pdf ../${RESULTS})

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
	if [ -d ${RESULTS} ]; then rm -rf ${RESULTS}; fi


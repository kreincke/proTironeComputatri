# This file is part of the Open Source project 'proTironeComputatri'
# (c) 2025 Karsten Reincke (https://github.com/kreincke/proTironeComputatri)
# It is distributed under the terms of the creative commons license
# CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)

AUX_EXTS=tmp
RES_EXTS=pdf
RESULTS=results

INCOLL=tmp.tmp # the file into which the sub content is collected

EXER=exercises
ORTR=oraltracks
PLBO=playbooks

LNX_TD="../../"
PTC_TD="../../${LNX_TD}"
LES_TD=${PTC_TD}/lessons


EVD="../../3ps/eisvogel"

help:
	echo "make [ help | exercises | oraltracks | playbooks | zenprese | all ] "

lessons:
	@ ( cd ${LNX_TD} && ./bin/align-download-area.sh )
	@find . -type d -name "tpc-*" | while read d; do \
		echo "installing lesson files for $${d} to ${LES_TD}";\
		(cd $${d} && make lessons) \
		done
	@ make all
	@ ( WD=`pwd | sed "s/^.*ltx.etc\///"` && mv results/*.pdf ${LES_TD}/$${WD} )
	@ tree ${LES_TD}

all: exercises oraltracks playbooks zenprese	

exercises: 
	@ echo "collecting exercises"
	@ mkdir -p ${RESULTS}
	@ if [ -f ${INCOLL} ]; then rm ${INCOLL}; fi
	@ find . -type d -name tpc* | while read d; do\
		find $${d} -type f -name "exercise*.md" | while read f; do\
			cat $${f} >> ${INCOLL};\
			echo "adopting content of $$f";\
	  done;\
	done;
	@ pandoc header.${EXER}.md ${INCOLL} -o collected-${EXER}.pdf --from markdown --template ${EVD}/eisvogel.latex --listings -V lang=de-DE
	@ mv collected-${EXER}.pdf ${RESULTS}
	@ make clear


oraltracks:
	@ echo "collecting oraltracks"
	@ mkdir -p ${RESULTS}
	@ if [ -f ${INCOLL} ]; then rm ${INCOLL}; fi
	@ find . -type d -name tpc* | while read d; do\
		find $${d} -type f -name "oraltrack*.md" | while read f; do\
			cat $${f} >> ${INCOLL};\
			echo "adopting content of $$f";\
	  done;\
	done;
	@ pandoc header.${ORTR}.md ${INCOLL} -o collected-${ORTR}.pdf --from markdown --template ${EVD}/eisvogel.latex --listings -V lang=de-DE
	@ mv collected-${ORTR}.pdf ${RESULTS}
	@ make clear

playbooks: 
	@ echo "collecting playbooks"
	@ mkdir -p ${RESULTS}
	@ if [ -f ${INCOLL} ]; then rm ${INCOLL}; fi
	@ find . -type d -name tpc* | while read d; do\
		find $${d} -type f -name "playbook*.md" | while read f; do\
			cat $${f} >> ${INCOLL};\
			echo "adopting content of $$f";\
	  done;\
	done;
	@ pandoc header.${PLBO}.md ${INCOLL} -o collected-${PLBO}.pdf --from markdown --template ${EVD}/eisvogel.latex --listings -V lang=de-DE
	@ mv collected-${PLBO}.pdf ${RESULTS}
	@ make clear

zenprese:
	echo "writing zenprese"
	@ mkdir -p ${RESULTS}
	@ (cd zp && make clean && BN=`ls zp*` && CN=`echo $${BN%\.*}`\
		&& make $${CN}.pdf && mv $${CN}.pdf ../${RESULTS}/collected-zps.pdf)

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


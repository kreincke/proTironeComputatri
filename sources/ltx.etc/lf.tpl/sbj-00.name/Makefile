# This file is part of the Open Source project 'proTironeComputatri'
# (c) 2025 Karsten Reincke (https://github.com/kreincke/proTironeComputatri)
# It is distributed under the terms of the creative commons license
# CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)

AUX_EXTS=tmp
RES_EXTS=pdf

INCOLL=tmp.tmp # the file into which the sub content is collected

EXER=exercises
ORTR=oraltracks
PLBO=playbooks

LNX_TD="../.."
PTC_TD="../../${LNX_TD}"
LES_TD=${PTC_TD}/lessons


EVD="../../3ps/eisvogel"

help:
	echo "make [ help | release | lessons | newExLes | exercises | newOtLes | oraltracks | newPbLes | playbooks | newZpLes zpenpreses ] "

release: lessons 
	find . -type d -name "tpc*" | while read tpc; do echo "releasing $${tpc}"; ( cd $${tpc} && make release ); done
	@ PWD=`pwd | sed "s/^.*ltx.etc\///"` && echo having released $${PWD}

all: exercises oraltracks playbooks zenpreses	

lessons: all 
	@ ( cd ${LNX_TD} && ./bin/align-download-area.sh )
	@ WD=`pwd | sed "s/^.*ltx.etc\///"` && mv *.pdf ${LES_TD}/$${WD}
	@ tree ${LES_TD}

# recreates execise collection, releases it into the lesson directory tree
# AND TODO: calls regeneration of the general execise collection in dir ../
newExLes: exercises
	@ ( cd ${LNX_TD} && ./bin/align-download-area.sh )
	@ WD=`pwd | sed "s/^.*ltx.etc\///"` && mv exercises.pdf ${LES_TD}/$${WD}
	@ tree ${LES_TD}

exercises: 
	@ echo "collecting exercises"
	@ if [ -f ${INCOLL} ]; then rm ${INCOLL}; fi
	@ find . -type d -name tpc* | while read d; do\
		find $${d} -type f -name "exercise.md" | while read f; do\
			cat $${f} >> ${INCOLL};\
			echo "adopting content of $$f";\
	  done;\
	done;
	@ pandoc header.${EXER}.md ${INCOLL} -o ${EXER}.pdf --from markdown --template ${EVD}/eisvogel.latex --listings -V lang=de-DE
	@ make clear

# recreates the oraltrack collection, releases it into the lesson directory tree
# AND TODO: calls regeneration of the general oraltrack collection in dir ../
newOtLes: oraltracks
	@ ( cd ${LNX_TD} && ./bin/align-download-area.sh )
	@ WD=`pwd | sed "s/^.*ltx.etc\///"` && mv oraltracks.pdf ${LES_TD}/$${WD}
	@ tree ${LES_TD}

oraltracks:
	@ echo "collecting oraltracks"
	@ if [ -f ${INCOLL} ]; then rm ${INCOLL}; fi
	@ find . -type d -name tpc* | while read d; do\
		find $${d} -type f -name "oraltrack.md" | while read f; do\
			cat $${f} >> ${INCOLL};\
			echo "adopting content of $$f";\
	  done;\
	done;
	@ pandoc header.${ORTR}.md ${INCOLL} -o ${ORTR}.pdf --from markdown --template ${EVD}/eisvogel.latex --listings -V lang=de-DE
	@ make clear

# recreates the playbook collection, releases it into the lesson directory tree
# AND TODO: calls regeneration of the general playbook collection in dir ../
newPbLes: playbooks
	@ ( cd ${LNX_TD} && ./bin/align-download-area.sh )
	@ WD=`pwd | sed "s/^.*ltx.etc\///"` && mv playbooks.pdf ${LES_TD}/$${WD}
	@ tree ${LES_TD}

playbooks: 
	@ echo "collecting playbooks"
	@ if [ -f ${INCOLL} ]; then rm ${INCOLL}; fi
	@ find . -type d -name tpc* | while read d; do\
		find $${d} -type f -name "playbook.md" | while read f; do\
			cat $${f} >> ${INCOLL};\
			echo "adopting content of $$f";\
	  done;\
	done;
	@ pandoc header.${PLBO}.md ${INCOLL} -o ${PLBO}.pdf --from markdown --template ${EVD}/eisvogel.latex --listings -V lang=de-DE
	@ make clear

# recreates the zenpresentation collection, releases it into the lesson directory tree
# AND TODO: calls regeneration of the general zenprese collection in dir ../
newZpLes: zenpreses
	@ ( cd ${LNX_TD} && ./bin/align-download-area.sh )
	@ WD=`pwd | sed "s/^.*ltx.etc\///"` && mv zps.pdf ${LES_TD}/$${WD}
	@ tree ${LES_TD}

zenpreses:
	echo "writing zenprese"
	@ (cd zp && make clean && BN=`ls zp*` && CN=`echo $${BN%\.*}`\
		&& make $${CN}.pdf && mv $${CN}.pdf ../zps.pdf)

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


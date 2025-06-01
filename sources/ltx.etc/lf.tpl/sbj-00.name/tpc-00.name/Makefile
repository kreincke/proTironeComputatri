# This file is part of the Open Source project 'proTironeComputatri'
# (c) 2025 Karsten Reincke (https://github.com/kreincke/proTironeComputatri)
# It is distributed under the terms of the creative commons license
# CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)

AUX_EXTS=tmp
RES_EXTS=pdf

LNX_TD="../../.."
PTC_TD="../../${LNX_TD}"
LES_TD=${PTC_TD}/lessons

EVD="../../../3ps/eisvogel"

help:
	@ echo "make [ help | lesson | all | newExLes | exercise | newOtLes | oraltrack | newPbLes | playbook | newZpLes | zenprese |  YOURFILE.pdf"

release: lesson 
	@ PWD=`pwd | sed "s/^.*ltx.etc\///"` && echo having released $${PWD}

all: exercise oraltrack playbook zenprese

# recreates all tpc documents and releases them into the lesson directory tree
# requires a manually evoked release of the corresponding sbj documents
lesson: exercise oraltrack playbook zenprese
	@ ( cd ${LNX_TD} && ./bin/align-download-area.sh )
	@ WD=`pwd | sed "s/^.*ltx.etc\///"` && mv *.pdf ${LES_TD}/$${WD}
	@ tree ${LES_TD}

# recreates the tpc execise document, releases it into the lesson directory tree
# AND recreates & releases the exercise collection in the corresponding sbj dir
newExLes: exercise
	@ ( cd ${LNX_TD} && ./bin/align-download-area.sh )
	@ WD=`pwd | sed "s/^.*ltx.etc\///"` && mv exercise.pdf ${LES_TD}/$${WD}
	@ tree ${LES_TD}
	@ (cd .. && make newExLes)

exercise:
	make exercise.pdf

# recreates the tpc oraltrack document, releases it into the lesson directory tree
# AND recreates & releases the oraltrack collection in the corresponding sbj dir
newOtLes: oraltrack
	@ ( cd ${LNX_TD} && ./bin/align-download-area.sh )
	@ WD=`pwd | sed "s/^.*ltx.etc\///"` && mv oraltrack.pdf ${LES_TD}/$${WD}
	@ tree ${LES_TD}
	@ (cd .. && make newOtLes)

oraltrack:
	make oraltrack.pdf

# recreates the tpc playbook document, releases it into the lesson directory tree
# AND recreates & releases the playbook collection in the corresponding sbj dir
newPbLes: playbook
	@ ( cd ${LNX_TD} && ./bin/align-download-area.sh )
	@ WD=`pwd | sed "s/^.*ltx.etc\///"` && mv playbook.pdf ${LES_TD}/$${WD}
	@ tree ${LES_TD}
	@ (cd .. && make newPbLes)

playbook:
	make playbook.pdf

# recreates the tpc zp document, releases it into the lesson directory tree
# AND recreates & releases the zp collection in the corresponding sbj dir
newZpLes: zenprese
	@ ( cd ${LNX_TD} && ./bin/align-download-area.sh )
	@ WD=`pwd | sed "s/^.*ltx.etc\///"` && mv zp.pdf ${LES_TD}/$${WD}
	@ tree ${LES_TD}
	@ (cd .. && make newZpLes)

zenprese:
	@ echo "writing zenprese"
	@ (cd zp && make zp.pdf && mv zp.pdf ../)

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


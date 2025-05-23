# This file is part of the Open Source project 'proTironeComputatri'
# (c) 2025 Karsten Reincke (https://github.com/kreincke/proTironeComputatri)
# It is distributed under the terms of the creative commons license
# CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)

# files which resursively shall be erased for clearing the dev tree
EF="img-meta-data.json"


clear:
	for fn in ${EF}; do \
		find . -name $${fn} | while read ff; do \
			echo erasing $${ff}; rm $${ff}; \
		done; \
	done; \

#!/bin/bash
# This file is part of the Open Source project 'proTironeComputatri'
# (c) 2025 Karsten Reincke (https://github.com/kreincke/proTironeComputatri)
# It is distributed under the terms of the creative commons license
# CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)

BD=dist

# for each LERNFELD and each of its subjects create a dist directory:
# any subject directory will contain the topic specific files
find lf* -maxdepth 1 -type d | grep sbj | while read d; do echo $d; mkdir -p $BD/$d; done


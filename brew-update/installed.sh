# Search the TMPDIR for a file less than one day old named
# lastbrew.txt  This file is created by install.sh
find $TMPDIR -mmin -1440 | grep -q lastbrew.txt
# See if install.sh has created a file called lastosxupdate.txt
# in the current shell's TMPDIR
find $TMPDIR -mmin -1440 | grep -q lastosxupdate.txt
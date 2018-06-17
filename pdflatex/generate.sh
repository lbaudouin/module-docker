#!/bin/bash
if [ "$#" -eq 0 ]; then
	f=$(ls /input/*.tex | head -n 1)
else
	f=$1
fi

out=$(basename $f)
out=${out/.tex/.pdf}
echo "$f -> $out"

pdflatex $f > dev/null 2>&1
pdflatex $f > dev/null 2>&1
pdflatex $f

cp /output/$out /input/

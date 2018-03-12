prog: outputdir ziele.pdf
	echo "Done"

outputdir:
		mkdir output


ziele.pdf: ziele.md
		pandoc ziele.md -f markdown -o output/ziele.pdf
clean:
	rm -rf output/
#foo.o: foo.c
#		gcc -c foo.c

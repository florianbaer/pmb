prog: outputdir ziele.pdf meilensteine.pdf
	echo "Done"

outputdir:
	mkdir output

meilensteine.pdf: src/meilensteine.md
	pandoc src/meilensteine.md -f markdown -o output/meilensteine.pdf

ziele.pdf: src/ziele.md
	pandoc src/ziele.md -f markdown -o output/ziele.pdf

clean:
	rm -rf output/
#foo.o: foo.c
#		gcc -c foo.c

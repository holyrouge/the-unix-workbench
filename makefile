README.md:
	touch README.md
	echo "# The Unix Workbench - Guessing Game" > README.md
	echo "Make was run on:" >> README.md
	date >> README.md
	echo
	echo "The number of lines in guessinggame.sh is:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

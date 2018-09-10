all: README.md

README.md: 
	touch README.md
	echo "## TF Guessing Game Project" > README.md
	date >> README.md
	echo >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md


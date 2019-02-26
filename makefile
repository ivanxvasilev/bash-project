readme:
	echo "## Ivan's Guessing Game!" > README.md
	echo "Date of creation using *make* on $$(date)." >> README.md
	echo "Number of lines in *guessinggame.sh*: " >> README.md
	cat guessinggame.sh | wc -l >> README.md

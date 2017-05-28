file = main

$(file): $(file).pl sample.pl
	swipl -O -q -g main --stand_alone=true -o $(file) -c $(file).pl

	
clean:
	rm -f main
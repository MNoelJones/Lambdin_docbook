all: Lambdin_complete.pdf

%.pdf: %.xml | output
	pandoc working/$< -o output/$@ -f docbook


%_complete.xml: %.xml | working
	xmllint $< --xinclude > working/$@

output:
	mkdir $@

working:
	mkdir $@

clean:
	rm working/*

real-clean: clean
	rm output/*

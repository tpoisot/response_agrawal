all: impact.pdf impact.doc coverletter.doc coverletter.pdf

impact.doc: impact.md impact_refs.bib
	pandoc -H margins.sty  --bibliography impact_refs.bib impact.md -o impact.doc

impact.pdf: impact.md impact_refs.bib
	pandoc -H margins.sty --bibliography impact_refs.bib  impact.md -o impact.pdf

coverletter.doc: coverletter.md
	pandoc -H margins.sty coverletter.md -o coverletter.doc

coverletter.pdf: coverletter.md
	pandoc -H margins.sty coverletter.md -o coverletter.pdf

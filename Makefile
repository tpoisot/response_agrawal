all: impact.pdf impact.doc

impact.doc: impact.md impact_refs.bib
	pandoc -H margins.sty  --bibliography impact_refs.bib impact.md -o impact.doc

impact.pdf: impact.md impact_refs.bib
	pandoc -H margins.sty --bibliography impact_refs.bib  impact.md -o impact.pdf
GV := $(wildcard *.gv)
SVG := $(patsubst %.gv,%.svg,$(GV))

.PHONY: all
all: $(SVG)

%.svg: %.gv
	dot -Tsvg -o $@ $<

.PHONY: clean
clean:
	@rm -f $(SVG)

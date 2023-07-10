TESTS=$(sort $(basename $(wildcard test*.lama)))
DEBUG_FILES=stack-dump-before data-dump-before extra-roots-dump-before heap-dump-before stack-dump-after data-dump-after extra-roots-dump-after heap-dump-after
LAMAC=../src/lamac

.PHONY: check $(TESTS)

check: $(TESTS)

$(TESTS): %: %.lama
	@echo $@
	cat $@.input | LAMA=../runtime $(LAMAC) -i $< > $@.log && diff $@.log orig/$@.log
	cat $@.input | LAMA=../runtime $(LAMAC) -ds -s $< > $@.log && diff $@.log orig/$@.log
	LAMA=../runtime $(LAMAC) $< && cat $@.input | ./$@ > $@.log && diff $@.log orig/$@.log

clean:
	$(RM) test*.log *.s *~ $(TESTS) *.i $(DEBUG_FILES)
	$(MAKE) clean -C expressions
	$(MAKE) clean -C deep-expressions

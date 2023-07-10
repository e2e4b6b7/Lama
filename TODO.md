### TODO list

- [x] Fix heap&stack&extra_roots dump
- [x] Remove extra and dead code
- [x] Debug print -> DEBUG_PRINT mode
- [ ] Modes (like FULL_INVARIANTS) -> separate files
- [ ] Check `mmap`/`remap`/...
- [ ] Check: `__gc_stack_bot`: same issue as `__gc_stack_top`?
- [ ] Check: Can we get rid of `__gc_init` (as an assembly (implement in C instead))?
- [ ] Check: runtime tags: should always the last bit be 1?
- [ ] Normal documentation: a-la doxygen
- [ ] Think: normal debug mode
- [ ] Sexp: move the tag to be `contents[0]` instead of the word in sexp header; i.e. get rid of sexp as separate data structure
- [ ] Fix warnings in ML code
- [ ] Fix warnings in C code
- [ ] Add more stress tests to `stdlib/regression` and unit tests
- [ ] TODO: debug flag doesn't compile
- [ ] Magic constants
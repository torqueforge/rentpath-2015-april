TJ Notes
========

- [ ] Redo house shameless to DRY following the exact steps in
  `house_2_shameless_to_dry` branch.

  My code was very similar except that I went right away to an array. I didn't
  introduce the conditional, nor the default argument. But both of those
  approaches better serve the foundational nature of the example.

  Use conditional with default argument:
  https://github.com/torqueforge/rentpath-2015-april/commit/f2acda316b7db63b29d9bc605976438d66c97fc4

  Especially important are the notes in this commit which begin to transition us
  from the conditional to an array of phrases:
  https://github.com/torqueforge/rentpath-2015-april/commit/878fa94fc87fa1eef305a52e41956e19e8c8bbc1

House shameless to DRY, take 2
------------------------------

Leading questions for getting to case 1 as empty string:

- Once we have the phrase method and are using it in case 2, what will it take
  to make it usable for case 1?
- What would phrase need to return for case 1 that would make the same exact
  line of code in case 2 work for case 1? (Empty string)

Leading questions for making phrase open to case 1:

- If we use phrase for case 1, does phrase need to know about num? Yes.
- How can we allow for phrase to accept a parameter without changing any of the
  code we currently have in `line`? In other words, how can we allow for phrase
  to accept a parameter without actually passing one? Use default parameter

Add default parameter


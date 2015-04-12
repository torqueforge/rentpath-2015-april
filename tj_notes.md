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

Questions for Sandi
-------------------

- [ ] Clarify flocking rules and how they relate to the refactoring rules.
- [ ] How to get them to see successor, leading questions.
- [ ] Just to verify, we do house shameless to DRY in mob, then they do house
  shameless to DRY, then we come back to bottles shameless green and onto
  bottles shameless to DRY in mob.

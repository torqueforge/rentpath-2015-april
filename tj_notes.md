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

- [x] Clarify flocking rules and how they relate to the refactoring rules. Stay
  close to the guy next to you but not too close. Simple rules, complex behavior
  emerges.
- [x] How to get them to see successor, leading questions. Very often they want
  to put a third conditional in amount. Don't try to solve it all at once. How
  can we make them a little more alike. What happens if you send 99 to amount.
  `amount(99)` and `amount(number-1)`. These are the same thing. The parameter
  represents a concept. Just like we've been doing, the first thing we've been
  doing is give it a name. Let's name that concept and send a message for it.
  "When you're on x number verse, what is the next verse? 50/49, 5/4, etc. Keep
  doing that until they say the concept is 'next'. Unfortunately, 'next' is a
  keyword. :) If you were a Fixnum in Ruby, what message do you send to get the
  adjacent number. `succ` and `pred` - since we're counting down, probably
  `successor` because `succ` is such a terrible name. Actually it's a completely
  appropriate name from a meta standpoint. It's difficult to isolate this
  concept, but the refactoring rules bring us to it. We didn't have to figure it
  out, we just needed to resist the temptation to do too much. `amount(99)` is
  the key. This approach might not be the first thing you think of until you get
  used to following and trusting the refactoring rules. Our desire to leap
  toward the hard problems and discount the simple ones often leads us to miss
  these kinds of abstractions.
- [x] Just to verify, we do house shameless to DRY in mob, then they do house
  shameless to DRY, then we come back to bottles shameless green and onto
  bottles shameless to DRY in mob. Yes.
- [x] I'm making some cheatsheets for myself for things like steps for method
  extraction. Would those be useful to you? Yes.

---

Shameless green for house should be a case statement with strings, not an array.
The refactoring is simpler then. Here's why: indexing into an array on a number
is basically a conditional, but it's one level of indirection more than the case
statement, you've separated the looping from the list. Which is where we want to
go with the code, ultimately, but it's too early for that abstraction, it's too
easy to get wrong what goes into it. 'This is...' is not part of the abstraction
and making an array right away usually gets this wrong. The array abstraction
will only have the bits that need to be accumulated, which is easier to discover
by starting with a case statement and strings.

If there are multiple conditions in a conditional (more than 2, that is use an
elsif) and the check is against the same value every time (like number) a case
statement reads more clearly.

house: We're going to take the two shortest strings and make them just alike.
We're not going to get distracted by any other strings until the 2 that are most
alike are exactly alike. How do you choose what you work on next? A recurring
theme. Often people discount things they think they understand and move to the
hard problem. Instead, choose the things we understand best. Let's make the
simplest problems disappear first, then often the hard problems become simpler.
When people do something complicated: "If you're smart enough to do this, you're
smart enough to do something simpler."

Too many leading questions that aren't working: "My questions must not be so
great, so I'm going to tell you, then I'm going to ask you what I should have
asked."

Leading questions, even if the answers are obvious, allow them to build a mental
model, even if it's in tiny layers. Example, leading questions toward the empty
string as the last item in the array of phrases in house.

Keeping students busy when some get ahead: enumerable presentation, adhoc
exercises presentation on interesting parts, explore factories,

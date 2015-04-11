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

House shameless to DRY, take 2
------------------------------

Leading questions for getting to case 1 as empty string:

- Once we have the phrase method and are using it in case 2, what will it take
  to make it usable for case 1?
- What would phrase need to return for case 1 that would make the same exact
  line of code in case 2 work for case 1? (Empty string)

Leading questions for making phrase open to case 1:

- If we use phrase for case 1, does phrase need to know about num? (Yes).
- How can we allow for phrase to accept a parameter without changing any of the
  code we currently have in `line`? In other words, how can we allow for phrase
  to accept a parameter without actually passing one? (Use default parameter)

Add default parameter. Run tests, of course.

Now, we know that for case 1 we want an empty string and for case 2 we want 'the
malt that lay in ' (which is already there).

- Are we now safe to add the conditional without breaking the tests? I think so.
  Let's try it. (It should work.)

Remember that we are working toward DRYing out cases 1 and 2. We are taking the
strings with the smallest differences and making them the same. So, we want to
make case 2 work such that we can copy and paste it to case 1 and it just works.

- Given that, what's our next step? (Add num arg to phrase message send.)

Run tests, of course.

- What's next? (In any order: remove the default argument in `phrase`. Use case
  2 code for case 1.)

Now that we have the same exact code for cases 1 and 2:

- What's next? (Remove duplicate case 2. This can be done either by: `when 1..2`
  or by adding an else clause to the case statement and removing both case 1 and
  2. I like the else clause approach but either is fine.)

Now we need to transition from 2 cases to 3. We are DRYing this code out, so it
cannot duplicate 'the malt that lay in '. We must have only 1 instance of that
string in our code.

Let's talk about what should be returned from each of the cases. (A whiteboard
will be helpful here.)

```
 Now:

when num == 1, phrase(num) should return ''
when num == 2, phrase(num) should return 'the malt that lay in '
when num == 3, phrase(num) should return 'the rat that ate the malt that lay in '
```

Seeing the solution requires understanding that the '' above is _something_, and
that what's actually needed is:

```
when num == 1, phrase(num) should return ''
when num == 2, phrase(num) should return 'the malt that lay in ' + ''
when num == 3, phrase(num) should return 'the rat that ate ' + 'the malt that lay in ' + ''
```

The algorithm is cumulative. Case 1 is an empty string, but it's still
something.

So, we need an implementation that will allow us to accumulate strings.

- Can anyone suggest what that might be? (An array. Specifcally, an array that
  we join. This requires a bit of Ruby knowledge, so if they need help, nudge
  them along.)
- Going back to our refactoring rules, where should we place that code? (At the
  top of phrase, before the conditional, so that it gets parsed and executed,
  but not used.)

The line of code we're aiming for is:
`['the rat that ate ', 'the malt that lay in ', ''].last(num).join('')`

Now, delete the conditional so that we are using the code. Remember that if
we're wrong, we can get back to green with a single change. That's the key here.

Use our new phrase code for case 3 by removing case 3.

Run tests, of course.

- What about that space at the end of 'the rat...' and 'the malt...'? Is that
  space part of the phrase or part of the cumulative algorithm? (The algorithm.)
  How can we change the code so that we make the space part of the cumulative
  algorithm and also save ourselves the hassle of having to add a space to every
  part of the phrase? (Add the space to join.)

Let's do that, but remember our refactoring rules: add the line of code above so
that it's parsed and executed, but not yet used. When we're ready, remove the
code we no longer want.

Use else branch if we're not already doing that.

Add line breaks to array for readability.

Add all remaining substrings to `phrase`. At this point, it becomes an exercise
in copy/paste.

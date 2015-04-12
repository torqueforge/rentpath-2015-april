Pre Class
=========

Prepare the Repo
----------------

- [x] Create a new repo under TorqueForge following the directions in
  CLASS_SETUP.md.

Copy the 99Bottles and House exercises to master.

    git checkout master

    git checkout origin/house -- house/
    git commit -m 'add house exercise'

    git checkout origin/bottles -- bottles/
    git commit -m 'add bottles exercise'

    git push

This checks a single folder (house/ or bottles/) out of a branch (origin/house
or origin/bottles) and places that folder into master, ready to be commited.

Prepare the Surveys
-------------------

Angela makes them, they're on my google drive under 'Surveys'.

Each day's survey needs to be checked, and a bitly link must be created for the
actual form.


DAY 1
=====

Supplies
--------

- Small post-it notes (10x-ish times num of students)
- Poster (wall) sized post-it notes (2 packs)
- Many colors of sharpie markers
- Many ballpoint pens
- Cheap kitchen timer

- [x] Colleen from RentPath is getting these materials for the class

Opening
-------

- Pass out small post-it notes, pens and sharpies
- Have them write their name on a small post-it attach to back of laptop
- Warn them that they should pick a different seat tomorrow morning
- Show the repo on the projector or write it on the board

*Say:*

- I'm not Sandi Metz. I'm TJ Stankus and this is Katrina Owen. Sandi and Katrina
  have developed the content of this course and refined it over two years of
  teaching. We would have loved to have Sandi here but this course is booked out
  until November and we didn't want to wait that long.
- I've met most of you before, but for those I haven't met, I am an employee of
  RentPath, but I've taught this material with Sandi and Katrina a few times.
  I'm comfortable and familiar with the material, but not nearly as much as
  Katrina. Between the two of us we should be able to handle any questions that
  come up. We'll also have an hour at the end of each day to talk with Sandi via
  a Google Hangout.
- Katrina introduction.
- git clone this repo: https://github.com/torqueforge/rentpath-2015-april
- Warning: YOU'LL NEVER CHECK CODE INTO MASTER OF THIS REPO


- We'll introduce the course in a bit
- For the next three days you’ll either be working (writing code) or talking to
  each other
- We don’t like to be talked at so you'll be writing code right away

Ask if they have experience pairing. If they don't, discuss how pairing works.
Have them put themselves into pairs across Ruby and OOD experience.

They know one another, so they can just do this.

(If they don't know one another, ask them to stand up and arrange themselves in
a line based on how much Ruby experience they have. This is amazingly chaotic,
but it works.)

Once they're paired, get the sanity test running on everyone's machine.

*Say:*

- There’s a readme in your repo
- Following the directions to run the sanity test
- Pro-tip: You probably need to 'bundle install'

Start the Bottles pre-test
--------------------------

*Say:* Here's how you run the tests:

    cd bottles
    ruby test/bottles_test.rb

- We have pre-written tests in minitest
- Who has used minittest (no one)? (That's okay, it works just like you’d
  expect)
- After 30 minutes we will interrupt you
- Don't worry about finishing, just write some code to get a sense of the
  problem
- THIS IS NOT A TEST
- YOU WILL NOT FINISH, don't worry, THIS IS NOT A TEST

Set the timer for 30 minutes.
10:15 - 10:45

- We interrupted you, that’s frustrating.
- We are annoying you on purpose
- We're all about learning theory
- Learning theory says we should take breaks
- Take a break :-)

*VERY SHORT BREAK?*

10:50am

Introduce the course
--------------------

### Explain how it works

Set the timer for 5 minutes to show them we're serious about not talking on and
on and then tell them the following things:

- Course structure is dictated by learning theory
- Interrupt and reflect is better than flow for learning
- We'll do a lot of: 30 minute exercise, interupt, reflect
- Best schoolkid math outcomes from teachers who only ask questions
- Having said that, I'll tell you a few more things

### Preempt the skeptics

- We'll be asking you to learn some new techniques
- Some of you will find these techniques tedious and boring
- Don't resist. Suspend disbelief. Commit to learning them.
- You can ignore them after we're gone if you haven't been convinced.
- You can't choose to ignore them if you don't know them.
- Think of this as a 3-day coding vacation.
- Commit to doing what we ask.

### Console the planners

- We'll learn, and practice, principles of OO Design
- We'll learn how to remove conditionals
- Do you have any messy conditionals?
- Overall schedule is flexible, we have a plan but it will not survive
- Syllabus is online (http://www.sandimetz.com/courses/ follow syllabus link)
  for those who need to know where we're going
- I need you to have faith for a while (probably until tomorrow afternoon)
- Survey each morning to give us feedback and tweak the course

### Collect Goals

About to collect goals, make sure you have a place to put them, perhaps put 4
big poster post-its on wall. Do not yet put labels on these posters.

*Give them instructions:*

Write your own 3 goals on 3 different post-its

For private courses we collect goals, read each aloud and stick on the wall.

As you collect the goal goal post-its, group them into: OOD, refactoring,
testing, misc.

Once all the goal post-its are up, have them guess the names of the 4 groups,
and then write the label on each group.

Bottles Show and Tell
---------------------

*Describe how show and tells work:*

- Like 5 minute lightning talk
- Tell us your approach and how it led to your solution
- If someone has already shown a solution like yours, you don't have to show
- If you're showing, your job is to finish within 5 minutes
- If you're watching, your job is to applaud wildly when timer goes off

### During Bottles Show and Tell

- Did you finish? (your solution is too complicated)
- Did you find this exercise easy or hard?
- Are you proud or embarrassed about your code?
- Is your code understandable (would it pass the inebriation test?)
- Is this solution more complicated or simpler than the previous one?
- How did you decide what code to write? (I saw a pattern and I went there. What
  if you don’t see a pattern?)
- What force drove you to make these decisions?
- For production, would it look like this?
- Is there complexity here that the tests did not force you to implement?

### Post Bottles Show and Tell

- Bottles was hard and you didn't finish
- Save your code in a branch
- DON'T CHECK CODE INTO MASTER
- We're going to learn some new techniques
- We'll return to bottles in a bit and apply the new techniques
- We'll learn on a simpler example.
- On to 'The House That Jack Built'

*BREAK - PROBABLY LUNCH*

House
-----

### House, Shameless Green

The house exercise is already in master.

*Say:*

    cd house
    ruby test/house_test.rb

- Same deal as before, unskip the tests one by one
- Strive for the shameless green (whatever that is!)
- You only get 10 minutes
- Copy and paste is your friend

### House, Shameless Green show & tell

Define shameless green

- Intersection of maximum comprehensibility with minimum complexity
- Maximize comprehension, don't worry about changeability
- Many kinds of duplication are ok
- Prioritizes getting the tests running green
- Uses the Red-Green-Refactor cycle
- Uses simple transformations (see Bob), simple abstractions
- Collects maximum information (all tests green) before creating complicated
  abstractions
- Be brave (if you wrote it) and admiring (if you're looking at someone else's
  code)

*See show_and_tell_cheatsheet.md for questions*

By the end of Show & Tell, they should have picked a winner for Shameless Green.

### House, Shameless to DRY

*Prep*

Push a version of House Shameless Green to master. This can be one of the ones
they just wrote, or mine. To get mine:

    git checkout master
    git checkout origin/house_1_shameless_green -- house/
    git commit -m 'shameless house'
    git push origin master

Ask for a volunteer to type. Have them do a `git pull` and tell them you'll
need them to hook up to the projector in just a minute.

#### When to Refactor

Ask them to define the word 'refactor':

"Change the structure/arrangement of code without altering its behavior."

Ask them if they use the word 'refactor' to mean implementing *new* behavior.
(They'll say yes.)  This is not refactoring.

*Ask:*

- What does shameless green reveal about the domain of House? (There are 12
  cases/lines)
- What is the algorithm for building a line? (It's cumulative, but you can't
  tell from the code.)
- What annoys you most about this code? (The duplication of strings.)
- Should you 'refactor' your current house implementation, i.e., should you do
  more?
- Do you have justification to do more? Perhaps not (discuss, maybe need a new
  requirement), but let's pretend that we do.

#### How to Refactor

This is the start of DRYing out the strings using a very specific refactoring
technique.

##### The big picture

1. Parse some code.
2. Execute the code without using the result. (step is sometimes skipped)
3. Execute the code and use the result
4. Delete unused code.

Simple rules. Like flocking or schooling rules, seemingly complex behavior
emerges.

##### The specific plan

1. Find the strings that are most alike
2. Find the smallest difference between them
3. Make the smallest change that will remove the difference
4. Try to make changes only on a single line of code (can't always, but try)
5. Run the tests after each change
6. If the tests fail, undo and make a better change

##### Other things to say

Never chase after red; if the tests fail, undo and make a change that leaves the
tests green.

The rule is to make small differences the same, NOT to DRY out big commonalities.

Don't get distracted by strings that are the same, instead identify and remove
strings that are different.

Do complete 'horizontal' refactorings before switching to a 'vertical' path.
This means that once you pick two strings and start making them the same, you
should finish this entirely before getting distracted by a third string, no
matter how much that other string calls out to you.

#### Mob DRYing out strings in House

Get the volunteer typist hooked up to the monitor.

Ask them to do a `git pull` on master.

Tell the class NOT to work along on their own computers. Right now they should
just pay attention and participate; they'll do this exact exercise individually
later.

To get everyone to talk, consider asking one small group (3-4 folks) at a time
to be responsible for making the next suggestion. Given them some sort of token
to hold when it's their turn, and let them decide who gets the token next.

Help them with get started. Ask:

- Which cases are most alike? They should choose line 1 and line 2.
- What is the smallest difference between them? '' or 'the malt that lay in '
- What is the smallest change that will remove the difference? If these two
  things represent the same concept, I should name the concept, and then send a
  message in this place.
- What is the concept? Phrase
- Okay, create a #phrase method.
- What should it return?

Here they always pick

    'the malt that lay in '

because they can't wrap their heads around ''. Just run with it. See the
refactorings in the branches of the repo for the steps.

Detailed notes for mob DRYing house
-----------------------------------

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
in copy paste.

Mob all the way through DRYing out the House strings. Afterwards:

*Say/Ask:*

- Who hates this technique? Who loves it? (love/hate breaks down across
  experience lines)
- If you hate it, why?
- You can only choose whether to use the technique if you know it.
- You think this is slow because it is easy (tedious), but if you don’t do this
  it is hard and slow.
- Have you ever written code for 15 or 20 minutes and then had to throw it all
  away, or dug so deep a hole that you did `git reset --hard`?
- What was wrong? You thought you knew where you were going, but couldn’t get
  there.
- How much complexity ends up in the code that you don’t need, with this
  technique?

It is not inevitable that your production code be the way it is.

Your tendency to want to move fast, tendency to want to be
clever/smart/complicated.

*BREAK*

### House, They do Shameless to DRY

14:00

Have them `git pull` and go do House Shameless to DRY

Set timer for 30 minutes

Should not need a Show & Tell, but if you do, do it.

Tell them to put this problem away, and we'll return to it on day 3. Now we'll
return to Bottles and find Shameless Green and then apply these refactoring
rules to see what happens.

99 Bottles, Redux
-----------------

14:45-ish

### 99 Bottles, Shameless Green

*Say:*

- Commit outstanding work to a branch
- cd bottles
- Start over and write bottles shameless green
- You get 15 minutes

### 99 Bottles, Shameless Green Show & Tell

*Say:*

- We're having a bake off.
- Make your best pitch that you win the Shameless Green.

*For each Show & Tell, ask:*

*See show and tell cheatsheet*

They might put evil pair code in #verse, #verses and #song to pass the tests. If
so, ask:

- What responsibility does #verse have? (produce any verse)
- What about #verses? (call #verse for any range of verse numbers, or produce
  all the verses?)
- What about #song?

Only #verse is responsible for producing a verse, the other methods are
responsible for algorithms.

Also ask these questions:

- How many verse variants are there?
- Which verses are most alike?
- Which are different?
- In what way?
- What's the algorithm for looping?

After all Show & Tells have them choose a Shameless Green Winner.

*Ask:*

- Is the winning code production ready? (if it’s never going to change, then of
  course!)

*Things you might discuss:*

When you start the statement with "if you want to change..." you know you’re
guessing.

This makes assumptions about the kinds of changes that are going to come, but we
never know.

What kinds of changes might occur that this code can't easily handle?

If I wait until I have the next requirement to refactor, will it cost more, or
less?

There is a place to guess. We want exemplary code. If I have experience that
tells me that this customer will want x, y, z, then I might be justified to make
the guess IF a novice programmer is coming behind me. If it’s me who’s coming
behind, then I can just do it when I ask. (For RentPath, in the web team at
least, we have a wide range of experience levels, so it's usually safe to assume
that the programmer coming behind you will copy your approach.)

Get a Bottles Shameless Green into master. Either take theirs, or

    git checkout master
    git checkout origin/bottles_1_shameless -- bottles/
    git commit -m 'shameless bottles'
    git push origin master

Whichever you choose, you should now have a Bottles Shameless green, and tests
with no skips, in master.

*BREAK*

### 99 Bottles, Mob Shameless Green to DRY

16:00-ish

As break is ending, get another volunteer typist.

*Ask:*

- Should we stop here at Bottles Shameless Green?
- What would justify a change to this code? A new requirement?
- Introduce 6-packs requirement.
- Talk about open/closed.

Ask them what the O in SOLID stands for. (Open/Closed)
Ask them what Open/Closed is short for. (Open for extension/Closed for Modification)
Ask them what that means.

Talk briefly about open/closed:

- Imagine a world in which you never have to change existing code to implement
  new behavior.
- Don't worry that this seems impossible, just pretend for a minute that it's
  true.
- If it's true, what are the consequences?

Make sure they say:

- Adding new behavior can't break distant and unrelated things.
- Your existing tests are always green.

You should deal with new requirements in two steps.

1. Make the existing code open to the new requirement
2. Implement the new requirement

When thinking about a new requirement:

- Flowchart questions:
  - Is this code open/closed to 6-packs
  - Do you know how to make it open/closed
  - Fix the most approachable sin

For Bottles Shameless:

- What is the most approachable sin? What do you hate most, that you understand
  and know how to fix? (duplication of strings)
- You know how to fix duplication of strings... the flocking rules.

### Bottles, Mob shameless to DRY

Repeat the refactoring rules from before.

Get the volunteer typist hooked up.

Don't allow the typist to think.

Rotate around the room, making small groups responsible for telling the typist
the next thing to do.

*Say:*

- Don't type along; you'll each do this tomorrow morn.
- If you feel the urge to jump vertically, don't stray from the path, just write
  your issue down. Make a TODO list. You can go back to it.

As they mob this:

- Point out that the flocking rules cause you to write methods that are mini
  examples of open/closed. We put 'if' statements in the methods to make the
  methods 'open' to use in new places.
- Remember that they'll encounter a Liskov violation when they try to send
  capitalize to #amount so that, in the 0 case, 'no more' will turn into 'No
  more'. They should send #to_s to the number inside of the #amount method. The
  method should return a trustworthy object; it should return something that
  understands #capitalize.
- When extracting a method, they'll occasionally choose the non-else case as the
  first thing they return. This requires that they use a real value (not :fixme)
  as the default for the parameter. Give them time to understand this.
- Many times they can make things the same by using a no-op. This is an
  important idea. The *concept* exists, even if it can sometimes be implemented
  as a no-op.

More detailed breakdown
-----------------------

### 2 case

- What two strings are most alike? (case 2 and else)
- What's the smallest difference that we can make the same? (Change instances of
  2 to #{number} and 1 to #{number-1})

Now we encounter the bottle/bottles difference:

We need to make 'bottle' and 'bottles' the same. This means we'll have to send
a message in each string's place, and this, in turn, means we have to name this
concept.

We decide to name the concept 'container'. Now we have to add a method and send
the message in the place of each string. We'll following the micro refactoring
rules here, making the smallest changes possible, and nibbling our way toward a
complete method that can be used to replace 'bottle' and 'bottles'.

First compile a new (sparse) #container method. Notice this returns the value
from the 'else' branch.

Then we can either execute the container method by putting at the top of the
verses method before the case statement, or we can just plug it in where we
expect to use it in the else branch of the case statement. While plugging it in
is a slight violation of the refactoring rules, it's a small enough change to
warrant breaking them.

Add a dummy default argument to the container method, like `:else_branch`

Add the conditional to `container`, which now returns 'bottle' or 'bottles'. The
caller does not yet pass an argument, so this only proves that the string
'bottles' (the else branch) is the right answer for our one caller.

Notice that we are adding code to meet the next requirement before attempting to
use the added code in the next place. We _want_ to be able to say
`#{container(number-1)}` in place of 'bottle' and we're:
1) changing the exiting code to be open/closed to the new requirement,
2) making sure the new code continues to work in the current place, and then,
3) we'll just replace 'bottle' with the new message `#{container(number-1)}`

Now that container is open/closed, use it for the 'if' case.

Remove the superfluous default parameter.

Now the strings are the same and we can remove the 2 case.

### 1 case

Begin with sending `#{number}` where possible, just like we did for the 2 case.

Send `#{container(number)}` where possible.

NOTE: I did container before pronoun. I'm going to leave it like that; we'll see
if I regret it. It felt like the right thing to do considering: use existing
methods to DRY strings as much as possible and do horizontal refactorings.

#### pronoun

Usual method extraction and message passing steps apply:

1. Add bare method that returns just the string we need in the else branch.
2. Run tests to parse that code.
3. Send the message (use the code) in our string. Run tests that prove execution
AND usage of our new code. (We are combining steps here, but it's okay. We
_could_ have just stuck a message send somewhere completely inconsequential to
prove execution first, then in the next step actually use the return value of
the message.)
4. Add default dummy argument to method.
5. Add conditional within the method. Strict adherence to the refactoring rules
would have us do this in two steps: 1) add the conditional above the existing
return value, run the tests, then, 2) remove the old return value, run the
tests. But it's okay in this exercise to combine these steps into one.
6. Add parameter to the message send.
7. Use the message where the 'if' part of the branch would be triggered.
8. Remove the dummy default parameter from the method.

#### amount/remaining

Let them go down the 'no more' path if the class chooses to do so, but guide
them toward using a default argument for the else branch as we've been doing,
just so they see what can happen when that goes awry.

When students try to make 'no more' and '#{number-1}' the same, they often
unconsciously do something slightly different then previously. They seem
confused by the fact that 'no more' is a straightforward string and
'#{number-1}' is interpolated, and they often choose to return 'no more' in
`amount`. They don't recognize that they've picked the non-default value, and in
a minute things break for them in a confusing way. Watch, it's about to happen.
:-)

Details of using incorrect 'no more' approach for amount:

- Use `:else_branch` like we have been for the default parameter.
- It breaks when we add the conditional and don't send the parameter.
- Fix: change default parameter to be the compared value in if.

After adding `amount` we are able to remove the 1 case branch.

### 0 case

Here is where I realize that remaining is not a good name. It serves the end
part of the verse well, but now that we're looking to use that concept for the
beginning part of the string, it makes less sense. Also, and mainly because of
my experience with this exercise I know it's coming, the idea of remaining is
probably a reach towards the concept of successor. But going there back when I
did was too early.

- Rename `remaining` to `amount`. Using the refactoring rules, we duplicate the
  remaining method, rename it `amount`, then go about replacing `remaining`
  usage with `amount`.

- Use amount capitalize for 'no more'.

- Continue to make the the first part of the strings the same using `amount` and
  `container` methods.

- Add action method. You need the number argument.

#### successor

When number is 0, number-1 doesn't fare so well as a parameter to amount.
Students will often want to add a third branch to `amount` for number == -1, but
ask that they resist that urge, promise them that there is a concept lurking
which will obviate the need to add a 3rd conditional branch to `amount`. Also,
we don't know this yet, but there is value in keeping these extracted methods in
the same shape.

- How can we make them a little more alike? `amount(99)`
- What happens if you send 99 to amount? You end up with `amount(99)` and
  `amount(number-1)`.

These are essentially the same thing, but the parameter represents a concept.
Just like we've been doing, the first thing we do is give it a name. Let's name
that concept and send a message for it.

- When you're on x number verse, what is the next verse? 50/49, 5/4, etc. Keep
  doing that until they say the concept is 'next'.

Unfortunately, 'next' is a keyword. :) If you were a Fixnum in Ruby, what
message do you send to get the adjacent number. `succ` and `pred` - since we're
counting down, probably `successor` because `succ` is such a terrible name.
Actually it's a completely appropriate name from a meta standpoint. It's
difficult to isolate this concept, but the refactoring rules bring us to it. We
didn't have to figure it out, we just needed to resist the temptation to do too
much. `amount(99)` is the key. This approach might not be the first thing you
think of until you get used to following and trusting the refactoring rules. Our
desire to leap toward the hard problems and discount the simple ones often leads
us to miss these kinds of abstractions.

**OFFICE HOURS*


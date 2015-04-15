DAY 2 Timeline
==============

10:00 - 11:00: Surveys, reflection posters, update goals (break)
----------------------------------------------------------------

- Pick a new seat
- Do survey, review (Responses | Summary)
- Do 'Reflect on What I Learned' posters:

*BREAK*

Update Post-it goals during break.

11:00 - Lunch: 99 Bottles, they do Shameless Green to DRY
---------------------------------------------------------

- 30 minutes to DRY out the strings, might need more time

During lunch: Mob 99 Bottles, DRY to Extract class
--------------------------------------------------

Ask about their experience

- Problems?
- Insights?

We're still trying to add 6-packs

- Is DRY Bottles open/closed to 6-packs? (No)
- Would you have to edit this class? (Yes)
- Do you know how to make it open/closed? (No)
- Fix the most egregious sin
- What is the sin?

### Code Smells

- Kent Beck coined 'code smell'
- Martin Fowlers book.
- Jay Fields book.
- Every code smell has a corrective refactoring recipe
- If you could only recognize code smells, you could apply the correct recipe
- What are the code smells in 99 Bottles DRY?

- Private-ish methods
- Methods which take the same parameter
- Methods which depend more on the parameter they get passed then on the rest of
  the class
- Clusters of similar shapes
- ??? Only say this if they say it. Primitive Obsession

These smells combine to support the idea that Bottles has more than one
responsibility. We should identify those responsibilities and separate them.

What do you not like about the code at this point? Uncertain? SRP...

### SRP

- If this were 2 things what would they be?
- Where would we split this class?
- Where would we add private keyword?

### Extract class

Talking points after:

- All methods contain a conditional
- All methods contain ONLY the conditional
- The methods are all switching on the same value
- That value represents the same concept everywhere
- Each branch of each conditional returns the smallest atomic idea

Is it open/closed to 6-packs? No.

### They Do -> 99 Bottles, DRY to Extract class

*SHORT BREAK*

### DEMO 99 Bottles, Conditional to Polymorphism

16:00

If planning to start from my extracted class, be sure you:

    git checkout master
    git checkout origin/origin/bottles_3_dry_to_bottle_number -- bottles/
    git commit -m 'extracted BottleNumber class'
    git push origin master

and then have them

    git pull

Remind them of the current state of the code.

- BottleNumber has been extracted.
- Once created, instances never mutate. They're thread-safe.
- Methods all contain conditionals that switch on 'number'.
- 'number' represents the same thing in every case.

Notice that we still have the Primitive Obsession code smell, but now we're
obsessing on not just a Fixnum, but on a specific value of a Fixnum. This is
only obvious because of the shape of the code, and the code is only shaped this
way because we following the refactoring (flocking) rules.

Help them get started with bottles_4_bottle_number_to_no_conditionals. You
should only have to prompt them to create one subclass and fix one method, and
they should get the rest on their own. Stand in the back and relinquish control
as soon as possible.

Process:

(In all of the following, run the tests at every opportunity.)

Leading questions:

- Do we still have the primitive obsession code smell? (Yes)
- What is the recipe for getting rid of that code smell? (Extract class)
- Let's pick on method: amount. What value do we wish we had a smarter object
  for? (0)

- Create BottleNumber0 as subclass of BottleNumber
- Copy one method, maybe #amount into it
- Delete everything but what's needed for 0
- Go into Bottles and get an instance of BottleNumber0 for the 0 case.

    def bottle_number_for(number)
      if number == 0
        BottleNumber0.new(number)
      else
        BottleNumber.new(number)
      end
    end

Remove unneeded code from Bottles#amount

Change:

    def amount
      if number == 0
        "no more"
      else
        number.to_s
      end
    end

To:

    def amount
      number.to_s
    end

Repeat until you have BottleNumber0, BottleNumber1 and BottleNumber, and
a little #bottle_number_for or #make_bottle_number factory method in Bottles.

### 99 Bottles, Data Clump

Talk about data clumps. x,y is Point, starting\_date ending\_date is DateRange, etc.
Fix the #quantity/#container data clump with #to_s in BottleNumber



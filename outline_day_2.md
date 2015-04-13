DAY 2
=====

Reflect upon day 1
------------------

10:00

Make sure survey is ok
Make bit.ly link for survey

- Remind them to pick a different seat
- Tell them bit.ly link
- Give them a few minutes to fill out survey
- Go over survey publicly

Do 'Reflect on What I Learned' posters:

- Get in groups of 4 or 5
- Discuss what you learned yesterday
- Take a wall post-it and draw something that represents it, or
- Classes have done poetry, Ms Manners questions, art, plays, etc. The bar is
  high.
- You get 30 minutes. You'll run out of ideas at 15 minutes. Stick with it, the
  best ideas happen if you persevere. Don't quit and read email at the 16 min
  mark.

Do reflection presentations

Tell them to take a break, but during the break to update their post-it goals.
This is always a bit confusing. Lately I've been telling them to update the wall
to reflect their current goals. They can find a move their previous goals, or
put up new goals. They can dot-vote by putting blank new post-its somewhere.
They can rip a post-it in half. Whatever. We just want them to think.

*BREAK*

Update Post-it goals during break.

Bottles, Redux, continued
-------------------------

### 99 Bottles, They do Shameless Green to DRY

11:00am

Make sure they 'git pull', which should get them the 'Shameless' from which we
demoed

- 30 minutes to DRY out the strings
- We'll see where you are, might need more time
- If you get done, go through it again with the other person typing
- Don't go off the rails, get one of us before you go off the rails

This might take two iterations.

If they go off the rails, help them. If they still go off the rails, hook them
up to the projector and have the class give them advice.

Check a DRY Bottles into master for us to demo Extract Class

Ask them about their experience:
- names
- problems
- insights
- did they stop in time?
- did they stay the course?

Transition to:
- Is it open closed?
- Do you know how to make it open/closed?
- What's the most egregious sin?

Talk about the characteristics of the DRY Solution

- Methods depend on the argument that got passed
- The if statements are duplicated in all the private methods
- The solution is apparently more complicated
- Each private method has the same shape
- Only one public method uses the private methods *******
- That public method also takes the same parameter and when we name it verse
  this method gets extracted along
- Return values in the branches of the conditionals are the smallest atomic
  piece, and it’s the piece described by the method name
- Each private method has ONLY a conditional

- Is this code more complicated or simplier? What would flog say?
- We've turned one conditional into many!!!
- Is this better or worse than Shameless Green?

### 99 Bottles, DRY to Extract class

We're still trying to add 6-packs.

- Is DRY Bottles open closed to 6-packs? (Would you have to edit this class?)
- Do you know how to make it open/closed?
- Fix the most egregious sin

- What is the sin?

Talk about Code Smells

- Kent Beck coined 'code smell'
- Martin Fowlers book.
- Jay Fields book.
- Every code smell has a corrective refactoring recipe
- If you could only recognize code smells, you could apply the correct recipe
- What are the code smells in 99 Bottles DRY?
  - Clusters of similar shapes
  - Private methods
  - Many methods take the same argument (What does the argument represent? Trace
    it all the way back to enumeration.)
  - Many methods depend more on the argument they got passed then the class as a
    whole
  - If you were going to divide this class into two parts, where would you split
    it?

Primitive Obsession code smell: 'number' ought to be a first class object which
hold onto a single value of number and implements all those methods. Then you
wouldn't have to pass the argument around.

### DEMO 99 Bottles, DRY to Extract class

- In extracted methods, change 'number' argument to 'bottle_number'

What does this argument represent? A verse? Or a bottle number? While it's true
that in the #verse method the 'number' argument represents a verse number, by
the time the arg is passed to the private methods it represents a bottle number.

We know this because the `#successor` method is used to change the value of the
number that gets passed to `#amount` and `#container`. During any verse N,
`#amount` might get called with (N), or with (N+1). Therefore, `#amount` is not
taking verse number as an argument, it's taking bottle number.

Naming the concept correctly makes everything clear. We should next extract a
class that holds bottle_number as a piece of state, and move methods that depend
on that piece of state to it.

- Create an empty class
- Copy the methods to it
- Add an attr_reader and initializer for number
- In Bottles, go into every method we've moved and replace contents with
  BottleNumber.new(number).action(number)

Then remove remove the method arguments one at a time, using a default of
`self.number`.

In Bottles, add:
`bottle_number_for(number)` to return `BottleNumber.new(number)`

In Bottles#verse add:
`bottle_number = bottle_number_for(number)`

and replace calls one at at time until forced to:

`next_bottle_number = bottle_number_for(bottle_number.successor)`

then finish replacing.

- Why can't I just say bottle_number.successor, ie, just ask a BottleNumber for
  its successor? Because successor returns a Fixnum, not a BottleNumber.

- This is a Liskov violation
- Don't try to fix it now, just note it
- I would prefer to just ask the object I know for something and have to answer
  be right
- Don't want to get the result and have to do something to it
- This is just like the problem of #amount needed to return a 'capitalizable'

In Bottles, delete obsolete code, ie, delete the forwarding methods.

Once Extract Class is done, notice:

- All methods contain a conditional
- All methods contain ONLY the conditional
- The methods are all switching on the same value
- That value represents the same concept everywhere
- Each branch of each conditional returns the smallest atomic idea

Is it open/closed to 6-packs?

### They Do -> 99 Bottles, DRY to Extract class

### Create SOLID posters

### DEMO 99 Bottles, Conditional to Polymorphism

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


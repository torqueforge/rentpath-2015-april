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

* get in groups of 4 or 5
* discuss what you learned yesterday
* take a wall post-it and draw something that represents it, or
* Classes have done poetry, Ms Manners questions, art, plays, etc. The bar is high.
* You get 30 minutes. You'll run out of ideas at 15 minutes. Stick with it, the best ideas happen if you persevere. Don't quit and read email at the 16 min mark.

Do reflection presentations

Tell them to take a break, but during the break to update their post-it goals. This is always a bit confusing. Lately I've been telling them to update the wall to reflect their current goals. They can find a move their previous goals, or put up new goals. They can dot-vote by putting blank new post-its somewhere. They can rip a post-it in half. Whatever. We just want them to think.

***BREAK***

Update Post-it goals during break.

## Bottles, Redux, continued

### 99 Bottles, They do Shameless Green to DRY
10:00am

Make sure they 'git pull', which should get them the 'Shameless' from which we demoed

* 30 minutes to DRY out the strings
* we'll see where you are, might need more time
* if you get done, go through it again with the other person typing
* don't go off the rails, get one of us before you go off the rails

This might take two iterations.
If they go off the rails, help them. If they still go off the rails, hook them
up to the projector and have the class give them advice.





___
[
Everything from here down is pending updates



Check a DRY Bottles into master for us to demo Extract Class

Ask them about their experience:
  names
  problems
  insights
  did they stop in time?
  did they stay the course?

Transition to
  is it open closed?
  Do you know how to make it open/closed?
  What's the most egregious sin?

Talk about the characteristics of the DRY Solution

- methods depend on the argument that got passed
- the if statements are duplicated in all the private methods
- the solution is apparently more complicated
- each private method has the same shape
- only one public method uses the private methods *******
- that public method also takes the same parameter and when we name it verse this method gets extracted along
- return values in the branches of the conditionals are the smallest atomic piece, and it’s the piece described by the method name
- each private method has ONLY a conditional


* is this code more complicated or simplier? What would flog say?
* we've turned one conditional into many!!!
* is this better or worse than Shameless Green?


### 99 Bottles, DRY to Extract class

We're still trying to add 6-packs.

* Is DRY Bottles open closed to 6-packs?
  * Would you have to edit this class?
* Do you know how to make it open/closed?
* Fix the most aggregious sin

* What is the sin?

Talk about Code Smells

* Kent Beck coined 'code smell'
* Martin Fowlers book.
* Jay Fields book.
* Every code smell has a corrective refactoring recipe
* If you could only recognize code smells, you could apply the correct recipe
* What are the code smells in 99 Bottles DRY?

  * clusters of similar shapes
  * private methods
  * many methods take the same argument
    * what does the argument represent?  Trace it all the way back to enumeration.
  * many methods depend more on the argument they got passed then the class as a whole
  * If you were going to divide this class into two parts, where would you split it?

Primative Obsession code smell
'number' ought to be a first class object which hold onto a single value of number
  and implements all those methods. Then you wouldn't have to pass the argument around.

### DEMO 99 Bottles, DRY to Extract class

Create an empty class
Copy the methods to it
Add and attr_reader and initializer for number
In Bottles, go into every method we've moved and replace contents with
  BottleNumber.new(number).action(number)

Then remove remove the method arguments one at a time, using a default of
  self.number.

In Bottles, add

    bottle_number_for(number) to return BottleNumber.new(number)

In Bottles#verse

    bottle_number = bottle_number_for(number)

  and replace calls one at at time until forced to

    next_bottle_number = bottle_number_for(bottle_number.successor)

  then finish replacing.

* Why can't I just say bottle_number.successor, ie, just ask a BottleNumber for its successor?

Because successor returns a Fixnum, not a BottleNumber

* this is a Liskov violation
* don't try to fix it now, just note it
* I would prefer to just ask the object I know for something and have to answer be right
* Don't want to get the result and have to do something to it
* this is just like the problem of #amount needed to return a 'capitalizable'

In Bottles, delete obsolete code, ie, delete the forwarding methods.

Once Extract Class is done, notice:

* all methods contain a conditional
* all methods contain ONLY the conditional
* the methods are all switching on the same value
* that value represents the same concept everywhere
* each branch of each conditional returns the smallest atomic idea

Is it open/closed to 6-packs?

-----
LUNCH
-----

### They Do -> 99 Bottles, DRY to Extract class


### Create SOLID posters


### DEMO 99 Bottles, Conditional to Polymorphism

Create BottleNumber0 as subclass of BottleNumber
Copy one method, maybe #amount into it
Delete everything but what's needed for 0
Go into Bottles and get an instance of BottleNumber0 for the 0 case.

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




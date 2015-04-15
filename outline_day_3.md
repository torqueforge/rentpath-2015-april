DAY 3
=====

Prep the repo:

    git checkout master

    git checkout origin/house_2a_pre_random -- house/
    git commit -m 'house pre random'

    git checkout origin/farm -- farm/
    git commit -m 'add farm exercise'

    git push

Remind them to pick a different seat.

Have them do surveys and reflection as per day 2.

**BREAK**

10:00am

### 99 Bottles, They do Conditional to Polymorphism

This seems easy, but they may have trouble with the Factory, and fixing the Liskov violation in the successor method.  Give them lots of help.  You can also identify the folks that get it and have them mentor groups of 3 or 4.

Once they all get through the conditional to polymorphism refactoring...

### MOB 99 Bottles, Add 6-packs

This is so easy and so satisfying that it's best to do it as a group.

They should first change the tests (we're now back in the red-green-refactor cycle).

If it's not lunch-time yet, have some of them give presentations here.  Usually, however, presentations happen after lunch.


**LUNCH**

### Farm, Null Object Pattern

Introduce the Farm exercise.

* Tell them about 40 times that they cannot change Animal and that they should pretend they can't see the code in Animal.
* Show the 'articalize' refinement.  Tell them not to worry about it; it just works.
* Tell everyone if they look at the problem and already know the solution, that they can't let the cat out of the bag for others.  They are welcome to help teach, but they must do so by asking leading questions, not by explaining the NullObject Pattern.

The goal is to get them to express this problem as one they know], and then to fix it with the technique they learned in Bottles.  That means they have to write to entire 'if' statement down, and then get an object to stand in for both the true branch and the false branch.  Since Animal already exists, they just need to figure out that they should create NullAnimal.

Sometimes they write the if statement and say "I see, I could just monkey patch nil to add #sound and #species".  If they say this, let them...

    class NilClass
      def sound
        "<silence>"
      end
      def species
        "<silence>"
      end
    end

And then once they get it working, tell then that the methods are exactly right, but ask if it makes sense to put them on NilClass.  When they say, "Err, well, no", ask them what class they go on.  Once they decide to create a NullAnimal or MissingAnimal or something

    class MissingAnimal
      def sound
        "<silence>"
      end
      def species
        "<silence>"
      end
    end

help them figure out how to swap nils for instances of MissingAnimal, and then push the conditional up to the #initialize method, and then out into a wrapper.

Remember that creating a wrapper introduces and API breaking chance and requires that you change the tests.  Sometimes it's worth it. :-)

**SHORT BREAK**

**SWAG??**

### Remaining Presentations
For however long it takes.

### House, Random and Echo

Let's drive them into a hole using inheritance.

RandomHouse Instructions:
  * Randomize the list ONCE before you start producing the Tale.
      * Don't randomize over and over again, randomize once!
  * The rules are: you can't use a conditional, and House must be open to the new requirement.
  * Tell them that inheritance is perfect and to go write it.

EchoHouse Instructions:
  * Each bit should appear twice.
      * This is the house that Jack built the house that Jack built.
      * This is the malt that lay in the malt that lay in the house that Jack built the house that Jack built.
      * etc.
  * Same rules.  No conditionals, House must be open.
  * Tell them again to just go use inheritance.

RandomEchoHouse Instructions:
  * Still want House, random house and echo house.
  * Same rules.  No conditionals, House must be open.
  * New rule.  You may not duplicate any code.

Now inheritance is broken.

At this point it's easiest to ```git reset --HARD```, and edit House to take a random boolean and test it.

      attr_reader :data
      def initialize(random=false)
        @data =
          if random
            DATA.shuffle
          else
            DATA
          end
      end

This is the problem they know, and they should be able to figure out that they need an object for each branch of the conditional.

These objects play a common role.
They must name the role, define the API, create various objects to play the role, and inject them into House.

They should create an Order role, and then perhaps a Formatter role.
This is a good place to introduce them to named parameters, if it hasn't already come up.

Make them demo House, random house, echo house and random echo house.

Once they get this done, continue to add new variants.  All previous variants must continue to work, plus
  * Hold 'the house the Jack built' last, shuffle only lines 1-11.
  * Mix up actors 'the malt' and actions 'that lay in'.
  Each line has a trailing 'that'.  This final, trailing 'that' separates the actor from the action.
  * Mix up actors 'the priest', modifiers 'all shaven and shorn' and actions 'the married'.
  Not every line has a modifier, assume the modifier is '' if it doesn't exist.

I don't have new refactorings for these variants, but some examples are in the old house\_x\_old\_exploration branch.


### Do final survey

Tell them the bit.ly day 3 survey link
Give them a few minutes to fill out survey

Hug and go



------------
------------
pending


  How does inheritance goes wrong?
  “we end up sticking stuff in there”
  it’s like a knife that turns in your hand.
  Part of your superclass will change for reasons that are unrelated to you, and things begin to go off the rails.

  why it’s ok to use inheritance safely here.
  * at the edge of the object graph (leaf node)
  * at least one subclass overrides every single method in the base class. All the behavior is used in the inheritance tree. Everything in the superclass varies (at some point in time).
  I want the subclasses to be a complete specialization of all the behavior in the superclass. We have constrained the superclass to the behavior that we want to override.

  objects at the core of the domain should probably not use inheritance.



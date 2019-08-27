# Intro to Object Orientation

My favorite mod 1 lecture.

We have to:
  * learn how to write a class including:
    * some instance methods
    * a constructor
    * some attributes
  * discuss what self is and why it is useful

I hope to:
  * take the magic out of ruby
  * show you a little bit about how i _categorize_ different parts of ruby
  * help us trace data and control flow across files
  * dare you to believe that there are only 4 kinds of "things" in ruby:
    * "values" (aka objects)
    * blocks
    * method calls
    * special forms: if/elsif/else, case, while/until, def, class, assignment


## Deliverables

Here is a naive implementation of a bank account in Ruby using only a hash which stores key-value pairs.

```ruby
bank_account = {"user_id": 3, "balance": 100}
```

Write an implementation of a bank account that meets the following requirements:

* can print the balance of the account
* can deposit money into the account
* can withdraw money from the account
* keeps track of the account owner
* can check if two accounts belong to the same person





## Learning Objectives (the brit edition)

* Gain some intuition for the phrase "Everything is an object"
* Explain the difference between classes and instances
* Understand the difference between local variable and instance variable scope
* Know what method dispatch is and how it works
* Determining execution context - are we "inside" or "outside" an object?

## Notes

- Whiteboard exercise: classes and instances table
- What are classes?
- Let's start by talking about the built in classes in Ruby.
  * All the data you've been working with is an instance of some class.
  * They're just _values_. What can we do with ruby values?
    * store them, pass them, return them, call methods on them
    * EXERCISE: Where are the values and method calls in `JSON.parse(response.body)`
- Exciting revelation: almost _everything_ in ruby is a method call!
  * Questions to answer: what is a method call? what is a method chain?
  * Things to show: Weird syntax for addition, equality, indexing, `send`.
  * Things to probably dodge for the moment? `ancestors`
- Exciting revelation: We can get a list of methods an object supports!
    * `.methods` or,  my preference, `ls` in pry
- Exciting revelation: classes in Ruby are open/runtime extensible.
  * Add an example method to string. Show that all Ruby strings are updated.
- Bank account example: Why do we have classes? To organize code.
  - If our data changes, doesn't the way we have to interact with it too?
    * Might as well group those things together then.
- Graph memory for an empty instance, then getters and setters, then initialize.
  * _The only way to interact with an object is through its methods_. Full stop.
  * Whiteboard question: Are the args to `initialize` on line 2 local or instance vars?
  * Reminder: Local variables are thrown away/GC'd when you reach end of method.
  * Reminder: A method name cannot begin with an `@`.
  * Important takeaways:
    * Method arguments get stored in _local variables_ inside the method.
    * We "copy" local variables into instance variables because we want them
    * Instance variables are not visible from "outside" an object.
    * Objects can hold other objects in instance variables.
      * Of any type! .... Because everything is just an object!
- Make sure we have local var, method, and class in account. Can playground see?
- Write a method that takes another account as an argument. How to compare them?

## Brit's Rules of Ruby

* Values (i.e. the things we call objects)
  * Have a type
  * Can do 4 things with them: store in vars, pass as args, call methods on, return
* Operations (i.e. the things we call methods)
  * arguments are evaluated first and _bound_ to local variables inside the method
  * method body runs
  * the resulting value is returned to the place where the method was called
* Special Forms:
  * assignment
  * if/elsif/else
  * case
  * while/until
  * defining forms:
    * def
    * class
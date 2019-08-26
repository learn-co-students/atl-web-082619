# Hashketball Review

## Objectives

Today, we learn:

<!-- * A strategy for approaching development. -->
<!-- * A strategy for approaching testing. -->
<!-- * How to identify different Ruby data types. -->
<!-- * Show how to look up documentation for data types in Ruby -->
* Trace data flow across methods and method chains.
* How to decide on an appropriate enumerable method.
* Demonstrate the use of common Array methods
  * `#each`
  * `#map`
  * `#select`
  * `#find`

* Exercise: Recognize calling a method vs passing an argument.
* Exercise: Determine data types in a method chain.

### Enter Hashketball

* rspec tests are like bumper lanes in a bowling alley
  * even if you don't hit all the pins you can't get _too_ far off course


* to program without them, we:
  * read, plan, write, test


* to come up with tests, we think about:
  * given (some data), when (i do x), then (i expect to see y)

## Evaluation Rules

* In any programming language, we first have to be concerned with what _values_ we can represent.
* Values are any data that we can store or represent.
* In ruby, there are only _four things_ we can do with a value: store it in a variable (of any kind), pass it as an argument to a method, call a method on it, or return it from a method as a result (implicitly or explicitly).
* The methods we are allowed to call on a value depends _completely_ on the `.class` of the value.
* Method chaining works because calling a method on a value generates a _new value_ which we can then call methods on. Graph this out a bit and talk about keeping track of what type you have at each step so you know what methods to call.

**Super Bonus:**

1. Write a method that returns true if the player with the longest name had the most steals. Call the method `long_name_steals_a_ton?`.

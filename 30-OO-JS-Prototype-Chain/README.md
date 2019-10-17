### OO JS - Classes, Prototype chain, Inheritance

#### "Classes" in JavaScript

- "JavaScript classes, introduced in ECMAScript 2015, are primarily syntactical sugar over JavaScript's existing prototype-based inheritance. The class syntax does not introduce a new object-oriented inheritance model to JavaScript." - [MDN Article on the ``class`` keyword](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes)

- Although we can use the class keyword in modern JavaScript, the language does not support true object orientation. JS still relies on a prototypal inheritance model and "classes" are in fact functions (which are technically objects).

````js
  // ES6
  class Person{
    constructor(name, age){
      this.name = name
      this.age = age
    }

    showInfo(){
      return `${this.name} is ${this.age} years young!!`
    }
  }

  const john = new Person('John',24)
  const steven = new Person('Steven',21)
````

- ###### Some notes:
  - "The constructor method is a special method for creating and initializing an object created with a class. There can only be one special method with the name "constructor" in a class. A SyntaxError will be thrown if the class contains more than one occurrence of a constructor method."

  - When using the new operator on a class, JavaScript will look for and invoke this special constructor function. You can think of this as being similar to Ruby's initialize method. It is, however, not the same because JavaScript is not actually object oriented. The class syntax is just syntactic sugar over our previous example that manually added methods to the objects in our robot's prototype chain.

````js

// ES5
  function Person(name, age){
    this.name = name
    this.age = age
  }
  ?????? How do I add showInfo() ??????

````

#### Prototypal Inheritance

- JavaScript is often described as prototype-based language -- to provide inheritance, objects can have a prototype object which acts as a template object that it inherits methods and properties from. An object's prototype object may also have a prototype object, which it inherits methods and properties from and so on. This is often referred to as a prototype chain, and explains why different objects have properties and methods defined on other objects available to them.

- To be exact, the properties and methods are defined on the prototype property on the Object's constructor functions, not the object instances themselves.

- In JavaScript, a link is made between the object instance and its prototype (its __proto__ property, which is derived from the prototype property on the constructor), and the properties and methods are found by walking up the chain of prototypes." - [MDN Article on Object Prototypes](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/Object_prototypes)


````js

  class Dog{
    constructor(name, species, age){
      this.name = name
      this.species = species
      this.age = age
    }

    woofWoof(){
      console.log(`${this.name} says woof woof!`)
    }
  }

  Dog.prototype.showInfo = function(){
    console.log(`${this.name} is ${this.species} type and ${this.age} year(s) old.`)
  }


````

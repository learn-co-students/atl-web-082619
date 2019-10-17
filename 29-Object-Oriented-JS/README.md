# Object Oriented JavaScript

#### Learning Goals:
- [ ] Implementing a class with JS
- [ ] Describe how to assign properties to instances of classes
- [ ] Explain when and why to OO approach
- [ ] Inheriting properties
- [ ] Implement a class which renders a piece of UI  

#### Advantages of Object Oriented Programming
````
  - Classes and Objects
  - Abstraction
  - Inheritance and more..
````

#### Object creation in JS

````js
  /*
    Object creation: Using Plain Old JavaScript Object
  */

  const john = { name: 'John', age: 56 }
  const dan = { name: 'Dan', age: 20 }
  const joey = { name: 'Joey', age: 5 }
````

````js
  /*
    Object creation: Using a function
  */

  function createPersonObject(name, age){
    const person = { name: name, age: age }
    return person
  }

  const john = createPersonObject('John', 56)
  const dan = createPersonObject('Dan', 20)
  const joey = createPersonObject('Joey', 5)

  // Adding more features
  function showInfo(person){
    console.log(`${person.name} is ${person.age} years old!!`)
  }

  showInfo(john)
  showInfo(dan)
  showInfo(joey)
````

<!-- dan.somekey = showInfo
john.somekey = showInfo
=== true -->

````js
  /*
    Refactoring
  */

  function createPersonObject(name, age){
    const person = {
      name: name,
      age: age,
      showInfo: function(){
        console.log(`${this.name} is ${this.age} years old!!`)
      }
    }
    return person
  }

  const john = createPersonObject('John', 56)
  const dan = createPersonObject('Dan', 20)
  const joey = createPersonObject('Joey', 5)

  joey.showInfo()
````

#### OOJS Features

````js
// ES5
  function Person(name, age){
    this.name = name
    this.age = age
  }

  const john = new Person('John', 56)
  const dan = new Person('Dan', 20)
  const joey = new Person('Joey', 5)

  // ES6
  class Person {
    constructor(name, age) {
      this.name = name;
      this.age = age;
    }
    showInfo(){
      console.log(`${this.name} is ${this.age} years old!!`)
    }
  }

  const dan = new Person('Dan', 20)
  const joey = new Person('Joey', 5)

  dan.showInfo === joey.showInfo // => ???

````

- Using the constructor

````js
  class Person {
    constructor(name, age){
      this.name = name
      this.age = age
    }
  }

  // Think about scope compared to Dog.new()
  const dawg = new Person('Snoop',47);

````
- Method Types: ``` Regular, Static, Getters and Setters ```

- Static methods

````js
  class Book {
  	static all() {
  		console.log('All the books!');
  	}
  }

  // Calling a static method
  Book.all()

  ```Important:
      Because static methods are called directly on the classes themselves,
      static methods have no access to data stored in specific objects.  
  ```
````
- Inheritance / Prototypes

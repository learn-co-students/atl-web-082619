# Helpful ES6 Syntax to Know for React and Beyond ⚛️

![](https://media.giphy.com/media/13twUEuUnCrEju/giphy.gif)

---

## The Following are Used heavily in Mod 4 for React (and are important to know if you're writing modern JavaScript):

#### Destructuring
````js
  // Object Destructuring
  const spaceship = {
    pilot: 'Elon Musk',
    guidance: 'John Cena',
    chef: 'Gordon Ramsay'
  }

  const { pilot, guidance } = spaceship

  console.log(pilot)
  console.log(guidance)

  // Class definition
    class Person {
      constructor(props){
        this.name = props.name
        this.favColor = props.favColor
      }
    }
    // VS
    class Person {
      constructor({name, favColor}){
        this.name = name
        this.favColor = favColor
      }
    }
````

#### Key-Value Assignment Shortcuts

````js
  const pizza = 'pepperoni'
  const restaurant = 'dominos'

  const pizzaObj = {
    pizza: pizza,
    restaurant: restaurant
  }

  // VS

  const pizzaObj2 = { pizza, restaurant }
````

#### ES6 Spread Operator

````js

  const obj1 = {
    first_name: 'John',
    last_name: 'Doe'
  }

  // Creating an exact copy of the object
  const obj2 = {
    ...obj1,
    favColor: 'Matt Black'
  }

  // OR
  const obj3 = Object.assign({ favColor: 'matt black'},obj1)

  // VS
  const obj4 = obj1
  obj4.favColor = 'Red'
  console.log(obj4)
````

#### DIY Filter
````js
  Array.prototype.myFilter = function(callback){
    const filtered = []
    for(let i = 0; i < this.length; i++) {
      const currentElement = this[i]
      if(callback(currentElement)){
        filtered.push(currentElement)
      }
    }
    return filtered
  }

  ['Pizza','Taco','Sandwich','Wrap'].myFilter((snack) => snack === 'Pizza')
````

#### All forms of the arrow function
````js
  const implicitReturn = () => 'hi'

  const explicitReturn = () => {
    return 'hi'
  }
````

#### Function binding vs arrow function
````js
  const dog = {
    name: 'Scooby',
    favSnack: ['Cheese', 'Peanut Butter', 'Carrots'],
    sayName: function(){
      return this.name
    },
    barkName: () => {
      return this.name + 'BARK!!'
    },
    sayFavFoods: function(){
      this.favSnack.forEach(snack => {
        console.log(`${this.name} likes ${snack}`)
      })
    },
    sayFavFoodsNoArrow: function(){
      this.favSnack.forEach(function(snack){
        console.log(`${this.name} likes ${snack}`)
      })
    }
  }

  dog.sayName() // => ???
  dog.barkName() // => ???
  dog.sayFavFoods() // => ???
  dog.sayFavFoodsNoArrow() // => ???
````

#### Class instance properties and class syntax in general
````js
  class Dog{
    constructor(name, age){
      this.name = name
      this.age = age
    }
    woofWoof(){
      return `${this.name} says woof woof!`
    }
  }
````

#### Passing function around as callback and Iterators (map, reduce, forEach, filter, find etc..)
````js
  const powerfulPeople = ['Harry','Voldemort','Dumbledore','Grindelwald']

  powerfulPeople.map((name) => name.toLowerCase())
````

#### Dynamic Object Keys
````js
  const dynamicSetKeys = (obj, key, val) => {
    obj[key] = val
    return obj
  }
````

### External Resources

- [Modern JavaScript](http://www.reactnativeexpress.com/modern_javascript)
- [Wes Bos Simple Guide for Undertanding Destructuring in JS](https://wesbos.com/destructuring-objects/)
- [MDN Article on ES6 Object Shorthand Syntax](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Object_initializer#New_notations_in_ECMAScript_2015)
- [MDN Article on ES6 Spread Operator](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax)
- [MDN Article on Arrow Functions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)
- [MDN Article on `Function.prototype.bind()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_objects/Function/bind)
- [MDN Article on ES6 Classes](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes)
- [MDN Article on Callbacks](https://developer.mozilla.org/en-US/docs/Glossary/Callback_function)
- [MDN Article on forEach](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach)
- [MDN `Array.prototype.reduce()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)
- [MDN "Working with Objects"](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Working_with_Objects)

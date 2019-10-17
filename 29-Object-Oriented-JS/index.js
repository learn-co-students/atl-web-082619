class Person{
  constructor(name,age){
    this.name = name
    this.age = age
  }

  showInfo(){
    return `${this.name} is ${this.age} years young!!`
  }
}

const alex = new Person('Alex',24)
const mark = new Person('Mark',21)

// function createsPeopleObject(name, age){
//   const people = {
//     name,
//     age,
//     showInfo: function(){
//       console.log(`${this.name} is ${this.age} years young!!`)
//     }
//   }
//   return people
// }
//
// const raza = createsPeopleObject('raza',20)
// raza.showInfo




[1,2,3].forEach( function(num) {
  console.log(num)

})

function myForEach(coolArray, cb){
  for (var i = 0; i < coolArray.length; i++) {
    cb(coolArray[i])
  }

}

const instructors = ['princeton', 'hannah', 'shivang', 'bam']

myForEach(instructors, myCoolSuperAwesomeMegaCB)

function myCoolSuperAwesomeMegaCB(name) {
  console.log(name + "!")
}




const dog = {


  name: 'winfield',
  favSnacks: ['cabbage', 'carrots', 'bones'],
  eatSnacks: function() {
    this.favSnacks.forEach(snack => {
      console.log(`${this.name} is eating ${snack}`)
    })
  },
  eatSnacksAllFunction: function() {
    this.favSnacks.forEach(function(snack) {
      console.log(`${this.name} is eating ${snack}`)
    }.bind(this)

  )
  }
  // this === dog
}
//
// function oneLiner() { return "yeet"}
// const arrowOneLiner = () => 'yeet'
//
// function oneArg(wowAnArg){
//   return 'POWERFUL'
// }
// const arrowOneArg = wowAnArg => {
//   'powerful'
// }
//
//
// const seal = {
//   name: 'sealy',
//   kiss: function() {
//     console.log(`${this.name} from a rose`)
//   }
// }
//
// seal.kiss()
//
// var someMethod = seal.kiss
//
//
// function someCallBackWhatever(snack) {
//   console.log(`${this.name} is eating ${snack}`)
// }
//
//
//
//
// document.addEventListener("click", function() {
//   console.log(this)
// })
// //
// // const person = {name: 'itsAMe Mario'}
// //
// // const notArrow = function() {
// //
// //
// // }
// //
// // const isArrow = () => {
// //
// // }
//
//
//
// // const dog = {
// //   name: 'winfield',
// //   favSnacks: ['cabbage', 'carrots', 'bones'],
// //   arrowEatSnacks: function() {
// //     this.favSnacks.forEach( snack => {
// //       console.log(`${this.name} is eating ${snack}`)
// //     })
// //   },
// //   regEatSnacks: function() {
// //     this.favSnacks.forEach(function(snack) {
// //       console.log(`${this.name} is eating ${snack}`)
// //     }.bind(person))
// //   }
// // }
//
//
//
// // console.log('this is the function keyword', dog.regEatSnacks())
// // console.log('this is the arrow', dog.arrowEatSnacks())
// //
// // console.log(filtered)
// // this.name = 'window object'
//
// // /************ Function Called with New Keyword ***********/
// // //inside a constructor fn, this will be the newly created object
// //
// // const personConstructor = function(name) {
// //   // `this` within a constructor will be the newly created object
// //   // { name: name }
// //   this.name = name
// // }
// //
// // const evans = new personConstructor('evans')
// //
// // function onTheGlobal() {
// //   console.log(this)
// // }
// //
// // const instructor = {
// //   name: "POWERFUL MC",
// //   lecture: function(){
// //     return `${this.name} gives POWERFUL lectures ;)`
// //   }
// // }
// //
// //
// // /********************************************************/
// //
// // /************ Bind Call Apply ****************************/
// //
// //
// //
// // function myForEach(arr, callback) {
// //   for (let i = 0; i < arr.length; i++) {
// //     callback(arr[i])
// //   }
// // }
// //
// //
// // // bind returns a COPY of our fn with `this` fixed to whatever obj was passed as an arg
// //
// // /********************************************************/
// //
// // /************ Function called on an Object ***************/
// //
// //
// // /********************************************************/
// //
// // /************ Simple Function Call ***********************/
// //
// //
// // /********************************************************/
// //
// // /************ Arrow Functions ****************************/
// //
// //
// // /********************************************************/

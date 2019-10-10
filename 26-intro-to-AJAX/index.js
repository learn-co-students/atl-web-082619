function sleep(n) {
  let i = 0
  while(i < (12 ** 8) * n) {
    i++
  }
}

//
// 'http://ron-swanson-quotes.herokuapp.com/v2/quotes'
//
// 'https://dog.ceo/api/breeds/image/random'
// 'https://dog.ceo/api/breeds/image/random/4'

console.log('Starting the sleep function')
// sleep(10)
console.log('Wow that sleep function took forever to run. 1 Star 🌟')

document.getElementById('click-button').addEventListener('click', console.log)



//
// function fun1() {
//   fun2()
// }
// function fun2() {
//   fun3()
// }
// function fun3() {
//   return "what a dirt bag"
// }
// function fun4() {
//   fun1()
// }
//
// fun1()
//





// make request in Yavascript?
// ruby RestClient

console.log("%c BEFORE THE FETCH f'sho", "color :purple")

fetch('http://ron-swanson-quotes.herokuapp.com/v2/quotes')
  .then(function(r) {
    return r.json()
  })
  .then(function(parsedJSON) {
    console.log(parsedJSON)
  })




console.log("%c AFTER THE FETCH 💯", "color :purple")












//
//
// fetch('http://ron-swanson-quotes.herokuapp.com/v2/quotes', { method: "GET"} )
//   .then(function(response){
//     return response.json()
//   })
//   .then(function(ronQuote){
//
//     const quotesContainer = document.querySelector('#quotes')
//     quotesContainer.innerHTML += `
//       <p> ${ronQuote}</p>
//     `
//
//   })
//
// // console.log(' this is DEFINITELY AFTER THE FETCH')
//
//
//
//
//
//
//
//
//
// const pokemonURL = "http://localhost:3000"
// fetch(pokemonURL, {
//   method: "POST",
//   headers: {
//             "Content-Type": "application/json",
//             // "Content-Type": "application/x-www-form-urlencoded",
//         },
//   body: JSON.stringify({
//           "height": 10,
//           "weight": 130,
//           "id": 2,
//           "name": "ivysaur",
//           "abilities": ["overgrow", "chlorophyll"],
//           "moves": [],
//           "stats": [
//             {
//               "value": 80,
//               "name": "special-defense"
//             },
//             {
//               "value": 80,
//               "name": "special-attack"
//             },
//             {
//               "value": 63,
//               "name": "defense"
//             },
//             {
//               "value": 62,
//               "name": "attack"
//             },
//             {
//               "value": 60,
//               "name": "speed"
//             },
//             {
//               "value": 60,
//               "name": "hp"
//             }
//           ],
//           "types": ["grass", "poison"],
//           "sprites": {
//             "front": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png",
//             "back": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/2.png"
//           }
//         })
//       })
//   .then(r = > r.json())
//   .then(// logic)

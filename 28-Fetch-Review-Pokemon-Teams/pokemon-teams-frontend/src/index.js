const BASE_URL = "http://localhost:3000"
const TRAINERS_URL = `${BASE_URL}/trainers`
const POKEMONS_URL = `${BASE_URL}/pokemons`

document.addEventListener('DOMContentLoaded',function(){
  getAllTrainers()
})

// Fetch the trainers
function getAllTrainers(){
  fetch(TRAINERS_URL)
  .then(function(res){
      return res.json()
  })
  .then(function(trainers){
    // Iterate over trainers
    trainers.forEach(function(trainer){
      // Call method that creates trainer cards..
      // Smash it on the DOM 👊..
      const trainerCard = createTrainerCard(trainer)
      const main = document.querySelector('#main')
      main.appendChild(trainerCard)
    })
  })
}

// Create Trainer cards
function createTrainerCard(trainer){

  const card = document.createElement('div')
  card.className = 'card'
  card.dataset.id = trainer.id

  const trainerName = document.createElement('p')
  trainerName.innerText = trainer.name

  const addPokemonBtn = document.createElement('button')
  addPokemonBtn.innerText = 'Add Pokemon'
  addPokemonBtn.dataset.trainerId = trainer.id
  // Passing AddPokemonFetch as a callback
  addPokemonBtn.addEventListener('click',addPokemon)

  const ul = document.createElement('ul')
  // Iterate over pokemons
  trainer.pokemons.forEach(function(pokemon){
    // Call on a function that creates listItem for each pokemon
    const li = createPokemonListItem(pokemon)
    ul.appendChild(li)
  })

  card.appendChild(trainerName)
  card.appendChild(addPokemonBtn)
  card.appendChild(ul)

  return card
}

// Create a list item for pokemon
function createPokemonListItem(pokemon){
  const li = document.createElement('li')
  li.innerText = `${pokemon.nickname} (${pokemon.species})`

  const releaseBtn = document.createElement('button')
  releaseBtn.className = 'release'
  releaseBtn.dataset.pokemonId = pokemon.id
  releaseBtn.innerText = 'Release'
  // Passing releasePokemon as a callback
  releaseBtn.addEventListener('click',releasePokemon)

  li.appendChild(releaseBtn)

  return li
}

// Fetch request to add a pokemon
//     - Passing trainer_id as body
function addPokemon(e){
  const trainerId = e.target.dataset.trainerId

  fetch(POKEMONS_URL,{
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    },
    body: JSON.stringify({ trainer_id: trainerId })
  })
  .then(function(res){
      return res.json()
  })
  .then(function(pokemon){
    const ul = e.target.parentElement.querySelector('ul')
    const li = createPokemonListItem(pokemon)
    ul.appendChild(li)
  })
}

// Fetch request to release a pokemon
//     - Passing pokemon_id as part of the URL
function releasePokemon(e){
  fetch(POKEMONS_URL+`/${e.target.dataset.pokemonId}`,{
    method: 'DELETE',
    headers: {
      'Content-Type': 'application/json'
    }
  }).then(function(res){
    return res.json()
  }).then(function(pokemon){
    e.target.parentElement.remove()
  })
}

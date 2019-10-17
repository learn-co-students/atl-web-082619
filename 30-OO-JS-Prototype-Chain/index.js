document.addEventListener('DOMContentLoaded',function(){
  
  const main = document.querySelector('#main')

  trainers.forEach(function(trainer){

    const id = trainer.id
    const name = trainer.name
    const pokemons = trainer.pokemons

    const trainerObject = new Trainer(id, name, pokemons)
    const card = trainerObject.renderCard()

    main.appendChild(card)
  })
})

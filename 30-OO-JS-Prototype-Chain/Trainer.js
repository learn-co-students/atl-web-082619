class Trainer{
  
  constructor(id, name, pokemons){
    this.id = id
    this.name = name
    this.pokemons = pokemons
    this.element = document.createElement('div')
  }

  renderCard(){
    const h3 = document.createElement('h3')
    h3.innerText = this.name

    const ul = document.createElement('ul')
    this.pokemons.map(function(pokemon){
      const id = pokemon.id
      const name = pokemon.name

      const pokemonObject = new Pokemon(id, name);
      const listItem = pokemonObject.renderList()

      ul.appendChild(listItem)
    })

    this.element.appendChild(h3)
    this.element.appendChild(ul)

    return this.element
  }
}

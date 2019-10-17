class Pokemon{
  
  constructor(id, name){
    this.id = id
    this.name = name
    this.element = document.createElement('li')
  }

  renderList(){
    this.element.innerText = this.name
    return this.element
  }
}

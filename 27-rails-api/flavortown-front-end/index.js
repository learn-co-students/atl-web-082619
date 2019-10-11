// grab button

// listen for the "click"

// make the request FETCH IT FROM THE "SERVER"


// grab the FORM
const burgerMaker = document.querySelector("#burger-form")

console.log(burgerMaker)

burgerMaker.addEventListener("submit", function(e){
    e.preventDefault()

    const protein = document.querySelector("#p")
    const temp = document.querySelector("#t")
    const cheese = document.querySelector("#c")


    fetch("http://localhost:3000/burgers", {
      method: "POST",
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify({
        burger: {
          protein : protein.value,
          cheese : cheese.value,
          temp : temp.value
        }


      })
    })
     .then(function(res){
       return res.json()

     })
     .then(function(users){
       console.log(users)
      })


})

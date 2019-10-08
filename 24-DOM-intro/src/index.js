console.log('%c Hello, World!', 'color: goldenrod')

// debugger;

// the image
// https://i.imgur.com/dzbQCj4.png

// WHERE do we want to add this image?
  // <div id="container">

  // how do i add an image

    // create the img tag
    const image = document.createElement('img')
    image.src = "https://scontent.fatl1-2.fna.fbcdn.net/v/t1.0-9/10676315_10203656694270611_6060927043296061113_n.jpg?_nc_cat=106&_nc_oc=AQn050l-DkWkboW9hXTIcdhEKck8U2OBHcNzkYCZLYKTvvN1cn2OePy4_ksV4vMCpXk&_nc_ht=scontent.fatl1-2.fna&oh=63cc6d1838d3258900aa44904e04118e&oe=5E26B063"

    // debugger
    // update the src attribute to the image

    // 🤚 it on the DOM
      // grab the element we want to add to
      const lunch = document.querySelector("#container")

      // attach the image to that container
      lunch.appendChild(image)



      const img2 = document.createElement("img")
      img2.src = "https://i.kym-cdn.com/entries/icons/mobile/000/023/397/C-658VsXoAo3ovC.jpg"
      lunch.prepend(img2)







// rugrats netflix adaptation
"https://scontent.fatl1-2.fna.fbcdn.net/v/t1.0-9/10676315_10203656694270611_6060927043296061113_n.jpg?_nc_cat=106&_nc_oc=AQn050l-DkWkboW9hXTIcdhEKck8U2OBHcNzkYCZLYKTvvN1cn2OePy4_ksV4vMCpXk&_nc_ht=scontent.fatl1-2.fna&oh=63cc6d1838d3258900aa44904e04118e&oe=5E26B063"


// go to FAv site.. <3 manipulate something

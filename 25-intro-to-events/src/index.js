
console.log('%c Hello lol', 'color:goldenrod')

document.addEventListener("DOMContentLoaded", function(){

})
// when user clicks alert ME button an alert should happen


// access to the button
const alertButton = document.querySelector("#alert")

// console.log(alertButton)

// add event listener to button
alertButton.addEventListener("click", function() {
  alert('whoa you alerted me :)')
})


// GRAB THAT BUTTON
  const loggy = document.querySelector("#log")

// TEST
 // console.log(loggy)
 loggy.addEventListener("click", function() {
   console.log("%c log to the console yeet", "color :green")
 })

  const err = document.querySelector("#errr")


// grab the users input
  // we need the input TAG
  const newComment = document.querySelector("#new-comment")
  // input.value

// listen to when the user submits the form
  // lets grab the form
  const commentForm = document.querySelector("#comment-form")
  // console.log(commentForm)
  // listen for the submit ON THE FORM
  commentForm.addEventListener("submit", function(e) {
    e.preventDefault()
    let comment = newComment.value
    console.log(comment)
    // 🤚 on the DOM
    const p = document.createElement("p")
    p.innerText = comment

    const commentContainer = document.querySelector("#comments-container")
    commentContainer.appendChild(p)
    // commentForm.reset()

  })

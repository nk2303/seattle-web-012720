// console.dir(document)

document.addEventListener("DOMContentLoaded", function() {
  // const salmonListItem = document.getElementById("salmon");  //node
  // console.log(salmonListItem);

  // console.log(document.querySelector("li"));

  let newFood = document.createElement("li");
  newFood.textContent = "Green Tea";
  document.querySelector("ul").appendChild(newFood);

  const listOfListItems = document.querySelectorAll("li");
  listOfListItems.forEach(function(listItem) {
    const newId = listItem.textContent.split(" ")[1].toLowerCase();
    listItem.id = newId;
    listItem.style.color = "red";
  });

  document.querySelector("div.welcome h1").textContent = "Hello 012720!";
});

// console.log("Hello from index.js");

// const myPets = ["dog", "cat", "fish"];

// def
// function() {
//stuff in here happens
// }

// function reportPet(petName) {
//     console.log(petName)
// }

// myPets.forEach(function(pet) {
//     console.log(pet)
// })

// for (let i = 0; i < myPets.length; i++)  {
//     reportPet(myPets[i])
// }

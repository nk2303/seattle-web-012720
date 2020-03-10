console.log("%cHello, your file is loaded", "color:magenta;");

function addFood(food) {
  let newFood = document.createElement("li");
  newFood.textContent = food;
  document.querySelector("ul").appendChild(newFood);
}

const foodArray = [
  "Smoked Salmon",
  "Grilled Peppers",
  "Steamed Asparagus",
  "Wild Rice",
  "Birthday Cake",
  "Apples"
];

document.addEventListener("DOMContentLoaded", function() {

  foodArray.forEach(function(food) {
    addFood(food);
  })

  // addFood("Green Tea");
  // addFood("Cookies");
  // addFood("Apples");

  // const button = document.getElementById("my-button");
  // button.addEventListener("click", function() {
  //   addFood(document.querySelector("input").value);
  //   document.querySelector("input").value = "";
  // });

  const form = document.getElementById("my-form");

  form.addEventListener("submit", function(event) {
    event.preventDefault();
    const foodToAdd = event.target["new-food"].value;
    if (foodToAdd !== "") {
      addFood(foodToAdd);
    }
    // addFood(document.querySelector("input").value);
    // document.querySelector("input").value = "";
  });

  // button.addEventListener("mouseleave", function() {
  //   console.log("callback 2 happened");
  //   button.textContent = "Button";
  // });

  document.querySelector("div.welcome h1").textContent = "Hello 012720!";
});

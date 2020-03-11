function addBook(book) {
  const book_list = document.querySelector("#book-list");
  const div = makeBookCard(book);
  book_list.appendChild(div);
}

function makeBookCard(book) {
  const div = document.createElement("div");
  div.className = "card";

  const img = document.createElement("img");
  img.src = book.img;

  const h3 = document.createElement("h3");
  h3.textContent = book.title;

  const p = document.createElement("p");
  p.textContent = book.author;

  //add all elements to div
  div.appendChild(img);
  div.appendChild(h3);
  div.appendChild(p);

  return div;
}

function showBooks(bookArray) {
  // bookArray.map(book => {
  //   addBook(book);
  // });

  bookArray.forEach(function(book) {
    addBook(book);
  });
}

function fetchBooks() {
  const BOOKS_URL = "http://localhost:3000/books";
  fetch(BOOKS_URL) // GET
    .then(function(response) {
      //200 ok, 400 bad request, 500 server error
      return response.json();
    })
    .then(function(data) {
      showBooks(data);
    });
}

// POST, PATCH, DELETE

document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("show-books-button").addEventListener("click", function() {
      fetchBooks();
    });
});

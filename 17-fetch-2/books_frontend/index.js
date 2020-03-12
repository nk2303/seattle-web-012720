const BOOKS_URL = "http://localhost:3000/books";
let editedCard = null;

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

  const deleteButton = document.createElement("button");
  deleteButton.textContent = "Delete this book";
  deleteButton.className = "delete";
  deleteButton.addEventListener("click", function() {
    deleteCard(div);
    deleteBook(book.id);
  });

  const editButton = document.createElement("button");
  editButton.textContent = "Edit this book";
  editButton.className = "edit";
  editButton.addEventListener("click", function() {
    //do some work to populate a form
    document.getElementById("new-book-form").style.display = "none";
    const editForm = document.getElementById("edit-form");
    editForm.style.display = "block";
    editForm.author.value = book.author;
    editForm['book-title'].value = book.title;
    editForm['book-id'].value = book.id;
    editForm.cover.value = book.img;
    editedCard = div;
  });

  //add all elements to div
  div.appendChild(img);
  div.appendChild(h3);
  div.appendChild(p);
  div.appendChild(deleteButton);
  div.appendChild(editButton);

  return div;
}

function deleteCard(card) {
  card.parentElement.removeChild(card);
}

function showBooks(bookArray) {
  // bookArray.map(book => {
  //   addBook(book);
  // });

  bookArray.forEach(function(book) {
    addBook(book);
  });
}

function deleteBook(bookId) {
  fetch(`${BOOKS_URL}/${bookId}`, {
    method: "DELETE"
  })
    .then(function(res) {
      return res.json();
    })
    .then(function(data) {
      console.log(data);
    });
}

function fetchBooks() {
  fetch(BOOKS_URL) // GET
    .then(function(response) {
      //200 ok, 400 bad request, 500 server error
      return response.json();
    })
    .then(function(data) {
      showBooks(data);
    });
}

function postBook(book) {
  fetch(BOOKS_URL, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify(book)
  })
    .then(function(res) {
      console.log(res);
      return res.json();
    })
    .then(function(data) {
      //THIS IS PESSIMISTIC RENDERING
      if (data.id) {
        addBook(data);
      } else {
        console.log("SOMETHING WENT WRONG");
      }
    });
}

function updateBook(book)  {
  fetch(`${BOOKS_URL}/${book.id}`, {
    method: "PUT",
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify(book)
  }).then(function(res) {
    return res.json()
  }).then(function(data) {
    const newCard = makeBookCard(data);
    document.getElementById("book-list").replaceChild(newCard, editedCard)
  })
}

// POST, PATCH, DELETE

document.addEventListener("DOMContentLoaded", function() {
  fetchBooks();

  document.getElementById("edit-form").addEventListener("submit", function(event) {
    event.preventDefault();
    const title = event.target["book-title"].value;
    const author = event.target.author.value;
    const img = event.target.cover.value;
    const id = event.target['book-id'].value;
    const editedBook = {
      title,
      author,
      img, 
      id
    };
    updateBook(editedBook)
  })

  document.querySelector("form").addEventListener("submit", function(event) {
    event.preventDefault();
    const title = event.target["book-title"].value;
    const author = event.target.author.value;
    const img = event.target.cover.value;
    const newBook = {
      title,
      author,
      img
    };
    postBook(newBook);
    // addBook(newBook); THIS IS OPTIMISTIC RENDERING
  });
});

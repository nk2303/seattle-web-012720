console.log("%cYour website is working", "color:magenta;");
const APPOINTMENTS_URL = "http://localhost:3000/groomings";

document.addEventListener("DOMContentLoaded", function() {
  getAppointments();
  document.getElementById("new-appointment-form").addEventListener("submit", function(event) {
    event.preventDefault();
    scheduleAppointment(event);
  });
});

function scheduleAppointment(event) {
    const name = event.target.astronaut.value;
    const nation = event.target.nation.value;
    const cleanliness = event.target.cleanliness.value;
    const date = event.target.date.value;
    const newAppointment = {
        name,
        nation,
        cleanliness,
        date
    }
    postAppointment(newAppointment);
}

function postAppointment(appointment) {
    fetch(APPOINTMENTS_URL, {
        method: "POST",
        headers: {
            "Content-Type": 'application/json',
            Accept: "application/json"
        },
        body: JSON.stringify(appointment)
    }).then(function(res) {
        return res.json()
    }).then(function(appointment) {
        addAppointment(appointment)
    })
}

function getAppointments() {
  fetch(APPOINTMENTS_URL)
    .then(function(res) {
      return res.json();
    })
    .then(function(data) {
      showAppointments(data);
    });
}

function renderDetails(astronaut) {
    const detailsNode = document.getElementById("details");
    // details.innerHTML = "";
    // detailsNode.appendChild(makeDetails(astronaut));
    details.innerHTML = makeDetails(astronaut)
}

function makeDetails(astronaut) {
    // const newDetails = document.createElement("p");
    // newDetails.textContent = `${astronaut.name}, from ${astronaut.nation}, has an appointment for a level ${astronaut.cleanliness} cleaning on ${astronaut.date}`;
    // return newDetails;
    // return "<script>alert('hello')</script>"
  return `<p>${astronaut.name}, from ${astronaut.nation}, has an appointment for a level ${astronaut.cleanliness} cleaning on ${astronaut.date}</p>`;
}

function showAppointments(apptsArray) {
  // apptsArray.forEach(appt => {
  //     addAppointment(appt)
  // })
  for (let element of apptsArray) {
    addAppointment(element);
  }
}

function addAppointment(astronaut) {
  const schedule = document.querySelector(".schedule");
  const newCard = makeAppointmentCard(astronaut);
  schedule.appendChild(newCard);
}

function makeAppointmentCard(astronaut) {
  const div = document.createElement("div");
  div.className = "col col-md-2";

  const cardDiv = document.createElement("div");
  cardDiv.className = "card";

  cardDiv.addEventListener("click", function(event) {
    //   console.log(event)
      renderDetails(astronaut);
  })

  const name = document.createElement("h4");
  name.textContent = astronaut.name;

  const nation = document.createElement("p");
  nation.textContent = astronaut.nation;

  cardDiv.appendChild(name);
  cardDiv.appendChild(nation);

  div.appendChild(cardDiv);

  return div;
}

const sortButtons = document.getElementById('boat-select');
const dateButtons = document.getElementById('start-date');

let boatId = "*";
let startDate = "";

let cruiseData;

fetch("api/cruise/list.php")
    .then(res => res.json())
    .then(data => {
        cruiseData = data;
        showSortedCruises(cruiseData);
    })
    .catch(err => console.log(err));

sortButtons.addEventListener('change', function () {
    boatId = this.value;
    const selectedValue = sortCruises();
    showSortedCruises(selectedValue);
});

dateButtons.addEventListener('change', function () {
    startDate = this.value;
    const selectedValue = sortCruises();
    showSortedCruises(selectedValue);
});


function showSortedCruises(showedCruises) {
    const cruiseContainer = document.getElementById('grid-container');
    cruiseContainer.innerHTML = '';

    showedCruises.forEach(cruise => {
        const cruiseElement = document.createElement('div');
        cruiseElement.className = 'grid-item';
        cruiseElement.innerHTML = `
                    <a class="image-container"
                       href="cruise-detail.php?id=${cruise.id}">
                        <img alt="${cruise.name}"
                             src="${cruise.img}">
                        <h2 id="cruise-name">${cruise.name}</h2>
                    </a>
        `;
        cruiseContainer.appendChild(cruiseElement);
    });
}

function sortCruises() {
    let sortedCruises = [...cruiseData];

    return sortedCruises.filter(value => {
        console.log(value);
        if (boatId === "*") {
            return true;
        }
        return parseInt(value.boat.id) === parseInt(boatId);
    }).filter(value => {
        if (startDate === "") {
            return true;
        }

        const date = new Date(value.start_date);
        const selectedDate = new Date(startDate);

        return selectedDate.getTime() <= date.getTime();
    });
}
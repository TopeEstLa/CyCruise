class Cruise {
    constructor(name, image, link,
                boatName, date) {
        this.name = name;
        this.image = image;
        this.link = link;
        this.boatName = boatName;
        this.date = date;
    }
}

let boatId = "*";
let startDate = "";

document.addEventListener('DOMContentLoaded', function () {
    let cruises = extractCruisesData();

    initSortEvents(cruises);
});

function extractCruisesData() {
    const cruiseElements = document.querySelectorAll('.grid-item');
    const cruises = [];

    cruiseElements.forEach((element, index) => {
        const imageElement = element.querySelector('img');
        const linkElement = element.querySelector('a');

        const titleElement = element.dataset['cruiseName'] ?? null;
        const boatId = element.dataset['boatId'] ?? null;
        const cruiseDate = element.dataset["cruiseStartDate"] ?? null;

        const cruise = new Cruise(
            titleElement,
            imageElement ? imageElement.src : '',
            linkElement ? linkElement.href : '',
            parseInt(boatId),
            cruiseDate
        );

        cruises.push(cruise);
    });

    return cruises;
}

function initSortEvents(cruises) {
    const sortButtons = document.getElementById('boat-select');

    sortButtons.addEventListener('change', function () {
        boatId = this.value;
        const selectedValue = sortCruises(cruises);
        showSortedCruises(selectedValue);
    });

    const dateButtons = document.getElementById('start-date');
    dateButtons.addEventListener('change', function () {
        startDate = this.value;
        const selectedValue = sortCruises(cruises);
        showSortedCruises(selectedValue);
    });

}

function showSortedCruises(cruises) {
    const cruiseContainer = document.getElementById('grid-container');
    cruiseContainer.innerHTML = '';

    cruises.forEach(cruise => {
        const cruiseElement = document.createElement('div');
        cruiseElement.className = 'grid-item';
        cruiseElement.innerHTML = `
                    <a class="image-container"
                       href="${cruise.link}">
                        <img alt="${cruise.name}"
                             src="${cruise.image}">
                        <h2 id="cruise-name">${cruise.name}</h2>
                    </a>
        `;
        cruiseContainer.appendChild(cruiseElement);
    });
}

function sortCruises(cruises) {
    let sortedCruises = [...cruises];

    return sortedCruises.filter(value => {
        if (boatId === "*") {
            return true;
        }
        return parseInt(value.boatName) === parseInt(boatId);
    }).filter(value => {
        if (startDate === "") {
            return true;
        }

        const date = new Date(value.date);
        const selectedDate = new Date(startDate);

        return selectedDate.getTime() <= date.getTime();
    });
}
const optionsContainer = document.getElementById('form-options-section');

const passengerCountInput = document.getElementById('passengers');
const passengerFieldsContainer = document.getElementById('passenger-fields');
const templateFieldset = passengerFieldsContainer.querySelector('fieldset').cloneNode(true);
const defaultValues = Array.from(templateFieldset.querySelectorAll('input')).map(i => i.value);
const summarySection = document.getElementById('summary-section');

let basePrice;
let options;

fetch('api/cruise/detail.php?id=2')
    .then(res => res.json())
    .then(data => {
        console.log(data);

        basePrice = parseFloat(data.price);
        options = data.options;

        generateOptionsFields();
        updateSummary();
    })
    .catch(err => console.log(err));

optionsContainer.addEventListener('change', updateSummary)

passengerCountInput.addEventListener('change', (e) => {
    regeneratePassengerFields();
    updateSummary();
});

function generateOptionsFields() {
    optionsContainer.innerHTML = '';
    const title = document.createElement('h2');
    title.textContent = 'Sélectionnez vos options';
    optionsContainer.appendChild(title);

    Object.entries(options).forEach(([key, value]) => {
        const optionGroupElt = document.createElement('div');
        optionGroupElt.classList.add('option-group');
        const optionTitle = document.createElement('h3');
        optionTitle.textContent = key;
        optionGroupElt.appendChild(optionTitle);

        const optionList = document.createElement('div');
        optionList.classList.add('option-list');

        value.forEach(option => {
            const optionItem = document.createElement('label');
            optionItem.classList.add('option-item');

            const input = document.createElement('input');
            input.type = 'radio';
            input.name = "option_" + key;
            input.value = option.id;

            if (option.default) {
                input.checked = true;
            }

            const optionName = document.createElement('div');
            optionName.classList.add('option-name');
            optionName.textContent = option.name;

            const optionPrice = document.createElement('div');
            optionPrice.classList.add('option-price');
            optionPrice.textContent = `+ ${option.price} €`;

            optionItem.appendChild(input);
            optionItem.appendChild(optionName);
            optionItem.appendChild(optionPrice);

            optionList.appendChild(optionItem);
        });

        optionGroupElt.appendChild(optionList);
        optionsContainer.appendChild(optionGroupElt);
    });
}

function regeneratePassengerFields() {
    const count = parseInt(passengerCountInput.value) || 1;

    passengerFieldsContainer.innerHTML = '';

    for (let i = 0; i < count; i++) {
        const clone = templateFieldset.cloneNode(true);

        clone.querySelector('legend').textContent = `Passager ${i + 1}`;

        const inputs = clone.querySelectorAll('input');
        inputs.forEach((input, idx) => {
            const parts = input.name.split('_');
            parts[parts.length - 1] = i;
            const newName = parts.join('_');
            input.name = newName;
            input.id = newName;
            input.value = (i === 0 ? defaultValues[idx] : '');
        });
        passengerFieldsContainer.appendChild(clone);
    }
}

function findOptionById(id) {
    for (const [key, value] of Object.entries(options)) {
        const option = value.find(o => o.id == id);
        if (option) {
            return {key, option};
        }
    }
    return null;
}

function updateSummary() {
    summarySection.querySelectorAll('.summary-item, .summary-passenger, .summary-total').forEach(e => e.remove());

    const baseDiv = document.createElement('div');
    baseDiv.classList.add('summary-item');
    baseDiv.innerHTML = `<span>Prix de base de la croisière</span><span>${basePrice.toFixed(2)} €</span>`;
    summarySection.appendChild(baseDiv);

    let totalPrice = basePrice;
    let optionsPerPassengerPrice = 0;

    optionsContainer.querySelectorAll('input[type="radio"]:checked').forEach(radio => {
        const value = radio.value;
        console.log(value);
        const {key: type, option: optionById} = findOptionById(value);

        console.log(type);
        console.log(optionById);

        const name = optionById.name;
        const price = parseFloat(optionById.price);
        const perPassenger = optionById.perPassenger;

        if (perPassenger) {
            optionsPerPassengerPrice += price;
        } else {
            totalPrice += price;
        }

        const div = document.createElement('div');
        div.classList.add('summary-item');
        div.innerHTML = `<span>${type}: ${name}</span><span>${price.toFixed(2)} €</span>`;
        summarySection.appendChild(div);
    });

    const passengerPrice = optionsPerPassengerPrice * (parseInt(passengerCountInput.value) || 1);
    const passDiv = document.createElement('div');
    passDiv.classList.add('summary-passenger');
    passDiv.innerHTML = `<span>Par passager (${passengerCountInput.value}) </span><span>${passengerPrice.toFixed(2)} €</span>`;
    summarySection.appendChild(passDiv);

    totalPrice += passengerPrice;

    const totalDiv = document.createElement('div');
    totalDiv.classList.add('summary-total');
    totalDiv.innerHTML = `<span>Total</span><span>${(totalPrice).toFixed(2)} €</span>`;
    summarySection.appendChild(totalDiv);
}
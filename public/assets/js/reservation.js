//satan
document.addEventListener('DOMContentLoaded', function () {
    const optionsSection = document.getElementById('form-options-section');
    const passengerCountInput = document.getElementById('passengers');
    const passengerFieldsContainer = document.getElementById('passenger-fields');
    const summarySection = document.querySelector('.summary-section');

    const templateFieldset = passengerFieldsContainer.querySelector('fieldset').cloneNode(true);
    const defaultValues = Array.from(templateFieldset.querySelectorAll('input')).map(i => i.value);

    optionsSection.addEventListener('change', updateSummary)
    passengerCountInput.addEventListener('change', (e) => {
        regeneratePassengerFields();
        updateSummary();
    });

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

    function updateSummary() {
        summarySection.querySelectorAll('.summary-item, .summary-passenger, .summary-total').forEach(e => e.remove());

        const basePrice = parseFloat(optionsSection.dataset["basePrice"]);

        const baseDiv = document.createElement('div');
        baseDiv.classList.add('summary-item');
        baseDiv.innerHTML = `<span>Prix de base de la croisière</span><span>${basePrice.toFixed(2)} €</span>`;
        summarySection.appendChild(baseDiv);

        let totalPrice = basePrice;
        let optionsPerPassengerPrice = 0;

        optionsSection.querySelectorAll('input[type="radio"]:checked').forEach(radio => {
            const label = radio.closest('.option-item');
            if (!label) return; // sus

            const name = label.dataset['optionName'];
            const price = parseFloat(label.dataset['optionPrice']);
            const perPassenger = label.dataset['optionPerPassenger'] === 'true';
            const type = label.dataset['optionType'];

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
});

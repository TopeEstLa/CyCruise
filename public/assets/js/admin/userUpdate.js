const submitButton = document.getElementById('save-button-submit');
const form = document.getElementById('update-user-form');

const inputValue = {};

submitButton.addEventListener('click', function (event) {
    event.preventDefault();
    const inputs = document.querySelectorAll('input, select, textarea');
    inputs.forEach(input => {
        if (input.type === 'radio') {
            input.setAttribute('disabled', 'true');
            if (input.checked) {
                inputValue[input.name] = input.value;
            }
        } else {
            input.setAttribute('disabled', 'true');
            inputValue[input.name] = input.value;
        }

    });
    submitButton.textContent = "Enregistrement en cours...";


    setTimeout(() => {
        sendAccountUpdate(inputValue);
    }, 5000);
});

function rollbackChanges() {
    const inputs = document.querySelectorAll('input, select, textarea');
    inputs.forEach(input => {
        input.value = inputValue[input.name];
    });
}

function reEnableInputs() {
    const inputs = document.querySelectorAll('input, select, textarea');
    inputs.forEach(input => {
        if (input.type === 'radio') {
            input.removeAttribute('disabled');
        } else {
            input.removeAttribute('disabled');
        }
    });
}

function sendAccountUpdate(inputValue) {
    fetch("/api/admin/user/update.php",
        {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(inputValue)
        })
        .then(res => {
            if (!res.ok) {
                rollbackChanges();
                reEnableInputs();
                submitButton.textContent = "Sauvegarder les modifications";
                alert("Une erreur est survenue lors de la mise à jour de vos informations.");
                return;
            }

            return res.json();
        })
        .then(data => {
            if (!data) {
                return;
            }

            if (data.error) {
                rollbackChanges();
                reEnableInputs();
                submitButton.textContent = "Sauvegarder les modifications";
                alert("Une erreur est survenue lors de la mise à jour de vos informations.");
                return;
            }

            const inputs = document.querySelectorAll('input, select, textarea');
            for (let i = 0; i < inputs.length; i++) {
                let input = inputs[i];
                if (input.hidden) {
                    continue;
                }

                if (input.type === 'radio') {
                    if (input.value === data["role"]) {
                        input.checked = true;
                        input.parentElement.classList.add('current');
                    } else {
                        input.checked = false;
                        input.parentElement.classList.remove('current');
                    }

                    input.removeAttribute('disabled');
                } else {
                    if (input.name === "password") {
                        input.removeAttribute('disabled');
                        continue;
                    }

                    if (data[input.name] === undefined) {
                        continue;
                    }

                    input.value = data[input.name];
                    input.removeAttribute('disabled');
                }
            }

            submitButton.textContent = "Sauvegarder les modifications";
        })
        .catch(err => {
            rollbackChanges();
            reEnableInputs();
            submitButton.textContent = "Sauvegarder les modifications";
            alert("Une erreur est survenue lors de la mise à jour de vos informations.");
        });
}
const btn = document.getElementById('update-account-info');
const form = document.getElementById('account-form');

const emailInput = document.getElementById('email');
const firstNameInput = document.getElementById('firstname');
const lastNameInput = document.getElementById('lastname');
const birthInput = document.getElementById('birth');

let edit = false;
let originalValues = {};

const cancelBtn = document.createElement('button');
cancelBtn.type = 'button';
cancelBtn.innerText = "Annuler les modifications";
cancelBtn.classList.add('btn-secondary');
cancelBtn.id = 'cancel-edit';
cancelBtn.style.display = 'none';

btn.parentNode.insertBefore(cancelBtn, btn.nextSibling);

btn.addEventListener('click', (e) => {
    e.preventDefault();
    if (!edit) {
        originalValues = {};
        emailInput.removeAttribute('disabled');
        firstNameInput.removeAttribute('disabled');
        lastNameInput.removeAttribute('disabled');
        birthInput.removeAttribute('disabled');

        originalValues[emailInput.id] = emailInput.value;
        originalValues[firstNameInput.id] = firstNameInput.value;
        originalValues[lastNameInput.id] = lastNameInput.value;
        originalValues[birthInput.id] = birthInput.value;

        btn.innerText = "Sauvegarder mes informations";
        cancelBtn.style.display = 'inline-block';
        edit = true;
    } else {
        if (!checkValidity()) {
            return;
        }

        sendAccountUpdate();
    }
});

cancelBtn.addEventListener('click', (e) => {
    e.preventDefault();
    rollbackChanges();
    switchToEdit();
});

function sendAccountUpdate() {
    fetch("/api/user/update.php",
        {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                email: emailInput.value,
                firstname: firstNameInput.value,
                lastname: lastNameInput.value,
                birth: birthInput.value
            })
        })
        .then(res => {
            if (!res.ok) {
                rollbackChanges();
                switchToEdit();
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
                switchToEdit();
                alert("Une erreur est survenue lors de la mise à jour de vos informations.");
                return;
            }

            console.log(data);
            emailInput.value = data.email;
            firstNameInput.value = data.firstname;
            lastNameInput.value = data.lastname;
            birthInput.value = data.birth;
            switchToEdit();
        })
        .catch(err => {
            console.log(err);
            rollbackChanges();
            switchToEdit();
            alert("Une erreur est survenue lors de la mise à jour de vos informations.");
        });
}

function rollbackChanges() {
    emailInput.value = originalValues[emailInput.id];
    firstNameInput.value = originalValues[firstNameInput.id];
    lastNameInput.value = originalValues[lastNameInput.id];
    birthInput.value = originalValues[birthInput.id];
}

function switchToEdit() {
    emailInput.setAttribute('disabled', 'disabled');
    firstNameInput.setAttribute('disabled', 'disabled');
    lastNameInput.setAttribute('disabled', 'disabled');
    birthInput.setAttribute('disabled', 'disabled');

    btn.innerText = "Modifier mes informations";
    cancelBtn.style.display = 'none';
    edit = false;
}

function checkValidity() {
    if (emailInput.value.length < 5) {
        alert("L'email doit faire au moins 5 caractères.");
        return false;
    }

    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(emailInput.value)) {
        alert("L'email n'est pas valide.");
        return false;
    }

    if (firstNameInput.value.length < 2) {
        alert("Le prénom doit faire au moins 2 caractères.");
        return false;
    }

    if (lastNameInput.value.length < 2) {
        alert("Le nom doit faire au moins 2 caractères.");
        return false;
    }

    if (birthInput.value.length < 10) {
        alert("La date de naissance doit être au format YYYY-MM-DD.");
        return false;
    }

    let birthDate = new Date(birthInput.value);
    let today = new Date();

    let age = today.getFullYear() - birthDate.getFullYear();

    let monthDiff = today.getMonth() - birthDate.getMonth();
    let dayDiff = today.getDate() - birthDate.getDate();

    if (monthDiff < 0 || (monthDiff === 0 && dayDiff < 0)) {
        age--;
    }

    if (age < 18) {
        alert("Vous devez avoir au moins 18 ans");
        return false;
    }

    return true;
}
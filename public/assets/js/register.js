const firstnameInput = document.getElementById("firstname");
const lastnameInput = document.getElementById("lastname");

const emailInput = document.getElementById("email");

const passwordInput = document.getElementById("password");
const passwordConfirmInput = document.getElementById("password-confirm");

const birthInput = document.getElementById("birth");

const form = document.getElementById("register-form");

const submitButton = document.getElementById("submit-button");

const errorMessage = document.getElementById("error-message");


submitButton.addEventListener("click", (event) => {
    if (passwordInput.value !== passwordConfirmInput.value) {
        errorMessage.textContent = "Les mots de passe ne correspondent pas";
        event.preventDefault();
        return;
    }

    let birthDate = new Date(birthInput.value);
    let today = new Date();

    let age = today.getFullYear() - birthDate.getFullYear();
    let monthDiff = today.getMonth() - birthDate.getMonth();
    if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
        age--;
        event.preventDefault();
        return;
    }

    if (age < 18) {
        errorMessage.textContent = "Vous devez avoir au moins 18 ans pour vous inscrire.";
        event.preventDefault();
        return;
    }


    form.submit();
});


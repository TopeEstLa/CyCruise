const passwordInput = document.getElementById("password");
const passwordConfirmInput = document.getElementById("password-confirm");

const birthInput = document.getElementById("birth");
const emailInput = document.getElementById("email");

const form = document.getElementById("register-form");

const submitButton = document.getElementById("submit-button");

const errorMessage = document.getElementById("error-message");

const showPasswordCheckbox = document.getElementById("show-password");

showPasswordCheckbox.addEventListener("change", () => {
    if (showPasswordCheckbox.checked) {
        passwordInput.type = "text";
        passwordConfirmInput.type = "text";
    } else {
        passwordInput.type = "password";
        passwordConfirmInput.type = "password";
    }
});


submitButton.addEventListener("click", (event) => {
    if (emailInput.value.length < 5) {
        errorMessage.textContent = "L'email doit faire entre 5 & 50 caractères";
        event.preventDefault();
        return;
    }

    if (emailInput.value.length > 50) {
        errorMessage.textContent = "L'email doit faire entre 5 & 50 caractères";
        event.preventDefault();
        return;
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
        errorMessage.textContent = "Vous devez avoir au moins 18 ans";
        event.preventDefault();
        return;
    }


    if (passwordInput.value.length < 5) {
        errorMessage.textContent = "Le mot de passe doit faire entre 5 & 50 caractères et contenir au moins une lettre majuscule, une lettre minuscule, un chiffre et un caractère spécial";
        event.preventDefault();
        return;
    }

    if (passwordInput.value.length > 50) {
        errorMessage.textContent = "Le mot de passe doit faire entre 5 & 50 caractères et contenir au moins une lettre majuscule, une lettre minuscule, un chiffre et un caractère spécial";
        event.preventDefault();
        return;
    }

    if (!/(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{5,50}/.test(passwordInput.value)) { //satan + stackoverflow + gpt
        errorMessage.textContent = "Le mot de passe doit faire entre 5 & 50 caractères et contenir au moins une lettre majuscule, une lettre minuscule, un chiffre et un caractère spécial";
        event.preventDefault();
        return;
    }

    errorMessage.textContent = "";

    if (passwordInput.value !== passwordConfirmInput.value) {
        errorMessage.textContent = "Les mots de passe ne correspondent pas";
        event.preventDefault();
        return;
    }

    //event.preventDefault();
    //form.submit();
});


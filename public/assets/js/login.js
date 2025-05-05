const loginForm = document.getElementById("login-form");

const emailInput = document.getElementById("email");
const passwordInput = document.getElementById("password");

const loginButton = document.getElementById("login-button");

const showPasswordCheckbox = document.getElementById("show-password");

const errorMessage = document.getElementById("error-message");

let isValid = true;

emailInput.addEventListener("input", () => {
    errorMessage.textContent = "";

    if (emailInput.value.length < 5) {
        errorMessage.textContent = "L'email doit contenir au moins 5 caractères";
        isValid = false;
        return
    }

    if (emailInput.value.length > 50) {
        errorMessage.textContent = "L'email doit contenir au maximum 50 caractères";
        isValid = false;
        return
    }

    isValid = true;
    if (isValid) {
        errorMessage.textContent = "";
    }
})

passwordInput.addEventListener("input", () => {
    errorMessage.textContent = "";

    if (passwordInput.value.length < 5) {
        errorMessage.textContent = "Le mot de passe doit contenir au moins 5 caractères";
        isValid = false;
    }

    if (passwordInput.value.length > 50) {
        errorMessage.textContent = "Le mot de passe doit contenir au maximum 50 caractères";
        isValid = false;
    }

    if (isValid) {
        errorMessage.textContent = "";
    }
});


loginButton.addEventListener("click", (event) => {
    if (!validPassword(passwordInput.value)) {
        errorMessage.textContent = "Le mot de passe doit contenir entre 5 et 50 caractères";
        event.preventDefault();
        return;
    }

    if (!validEmail(emailInput.value)) {
        errorMessage.textContent = "L'email doit contenir entre 5 et 50 caractères";
        event.preventDefault();
        return;
    }

    loginForm.submit();
});

showPasswordCheckbox.addEventListener("change", () => {
    if (showPasswordCheckbox.checked) {
        passwordInput.type = "text";
    } else {
        passwordInput.type = "password";
    }
});

function validPassword(password) {
    if (password.length < 5) {
        return false;
    }

    return password.length <= 50;
}

function validEmail(email) {
    if (email.length < 5) {
        return false;
    }

    return email.length <= 50;
}
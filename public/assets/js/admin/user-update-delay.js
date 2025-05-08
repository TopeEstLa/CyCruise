const submitButton = document.getElementById('save-button-submit');
const form = document.getElementById('update-user-form');

submitButton.addEventListener('click', function (event) {
    event.preventDefault();
    const inputs = document.querySelectorAll('input, select, textarea');
    inputs.forEach(input => {
        if (input.type === 'radio') {
            if (!input.checked) {
                input.setAttribute('disabled', 'true');
            }
        } else {
            input.setAttribute('readonly', 'true');
        }
    });
    submitButton.textContent = "Enregistrement en cours...";


    setTimeout(() => {
        form.submit();
    }, 5000);
});
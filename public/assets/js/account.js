let edit = false;

document.addEventListener('DOMContentLoaded', function () {
    const btn = document.getElementById('update-account-info');
    const form = document.getElementById('account-form');

    btn.addEventListener('click', (e) => {
        e.preventDefault();
        if (!edit) {
            form.querySelectorAll('input').forEach(input => {
                input.removeAttribute('disabled');
            });
            btn.innerText = "Sauvegarder mes informations";
            edit = true;
        } else {
            form.submit();
            edit = false;
        }

    });
});
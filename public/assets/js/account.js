let edit = false;
let originalValues = {};

document.addEventListener('DOMContentLoaded', function () {
    const btn = document.getElementById('update-account-info');
    const form = document.getElementById('account-form');

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
            form.querySelectorAll('input').forEach(input => {
                originalValues[input.id] = input.value;
                input.removeAttribute('disabled');
            });

            btn.innerText = "Sauvegarder mes informations";
            cancelBtn.style.display = 'inline-block';
            edit = true;
        } else {
            edit = false;
            cancelBtn.style.display = 'none';
            btn.innerText = "Modifier mes informations";

            form.querySelectorAll('input').forEach(input => {
                input.setAttribute('disabled', 'disabled');
            });

            form.submit();
        }
    });

    cancelBtn.addEventListener('click', (e) => {
        e.preventDefault();

        form.querySelectorAll('input').forEach(input => {
            input.value = originalValues[input.id];
            input.setAttribute('disabled', 'disabled');
        });

        btn.innerText = "Modifier mes informations";
        cancelBtn.style.display = 'none';
        edit = false;
    });
});
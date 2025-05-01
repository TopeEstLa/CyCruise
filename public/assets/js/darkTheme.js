function getCookie(name) {
    return document.cookie.split('; ').reduce((r, v) => {
        const parts = v.split('=');
        return parts[0] === name ? decodeURIComponent(parts[1]) : r;
    }, null);
}

function setCookie(name, value, days) {
    const expires = new Date(Date.now() + days * 864e5).toUTCString();
    document.cookie = name + '=' + encodeURIComponent(value) + '; expires=' + expires + '; path=/';
}

function deleteCookie(name) {
    setCookie(name, '', -1);
}

function loadCssFile(cssFile, styleId) {
    const link = document.createElement('link');
    link.rel = 'stylesheet';
    link.href = cssFile;
    link.id = styleId;
    document.head.appendChild(link);
}

function removeCssFile(styleId) {
    const link = document.getElementById(styleId);
    if (link) {
        document.head.removeChild(link);
    }
}

document.addEventListener('DOMContentLoaded', function () {
    const btn = document.getElementById('dark-mode-toggle');

    btn.addEventListener('click', (e) => {
        e.preventDefault();

        const isDark = getCookie('theme') === 'dark';
        if (!isDark) {
            setCookie('theme', 'dark', 7);
            loadCssFile('../assets/css/dark-theme.css', 'dark-theme');
            btn.classList.toggle("fa-moon")
            btn.classList.toggle("fa-sun")
        } else {
            deleteCookie('theme');
            removeCssFile("dark-theme");
            btn.classList.toggle("fa-moon")
            btn.classList.toggle("fa-sun")
        }
    });
});


document.addEventListener('DOMContentLoaded', function () {
    if (getCookie("theme") === "dark") {
        loadCssFile('../assets/css/dark-theme.css', 'dark-theme');
        document.getElementById('dark-mode-toggle').classList.toggle("fa-moon")
        document.getElementById('dark-mode-toggle').classList.toggle("fa-sun")
    }
});

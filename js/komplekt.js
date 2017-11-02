window.onload = function() {

    let radios = document.querySelectorAll('.js-checkgroup'),
        checks = document.querySelectorAll('.js-checkitem');

    [...radios].forEach(radio => {
        radio.addEventListener('change', event => {
            let target = event.target,
                theme = target.dataset.check

            if (!theme) {
                return
            }
            [...checks].forEach(chk => {
                if (chk.classList.contains(theme)) {
                    chk.checked = true
                } else {
                    chk.checked = false
                }
            })
        })
    })
}
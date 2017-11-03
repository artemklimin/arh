window.onload = function() {

    let radios = document.querySelectorAll('.js-checkgroup'),
        checks = document.querySelectorAll('.js-checkitem'),
        radios2 = document.querySelectorAll('.js-checkgroup2'),
        checks2 = document.querySelectorAll('.js-checkitem2'),
        radios3 = document.querySelectorAll('.js-checkgroup3'),
        checks3 = document.querySelectorAll('.js-checkitem3');

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
    });
    [...radios2].forEach(radio => {
        radio.addEventListener('change', event => {
            let target = event.target,
                theme = target.dataset.check

            if (!theme) {
                return
            }
            [...checks2].forEach(chk => {
                if (chk.classList.contains(theme)) {
                    chk.checked = true
                } else {
                    chk.checked = false
                }
            })
        })
    });
    [...radios3].forEach(radio => {
        radio.addEventListener('change', event => {
            let target = event.target,
                theme = target.dataset.check

            if (!theme) {
                return
            }
            [...checks3].forEach(chk => {
                if (chk.classList.contains(theme)) {
                    chk.checked = true
                } else {
                    chk.checked = false
                }
            })
        })
    })
}
(function() {
    'use strict';

    let body            = document.body,
        lightbox        = document.querySelector('.lightbox'),
        lightboxContent = lightbox.querySelector('.lightbox-content'),
        lightboxImages  = [],
        photo           = document.querySelectorAll('.block-wrap a');

    function showLightbox(src) {
        body.classList.add('js-lightbox-active');
        lightboxContent.innerHTML = `<img src="${src}"/>`;

    }

    function exitLightbox() {
        body.classList.remove('js-lightbox-active');
        lightboxContent.innerHTML = '';
    }

    lightbox.addEventListener('click', function (e) {
        if ((e.target === this || e.target === this.querySelector('.close')) && (body.classList.contains('js-lightbox-active'))) {
            exitLightbox();
        }
    });
    
    document.addEventListener('keyup', function (e) {
        if ((e.keyCode === 27) || (e.key === 'Escape') || (e.code === 'Escape') && (body.classList.contains('js-lightbox-active'))) {
            exitLightbox();
        }
    });

    photo.forEach(function (el) {
        lightboxImages.push(el.getAttribute('data-src-large'));

        el.addEventListener('click', function (e) {
            e.preventDefault();
            showLightbox(this.getAttribute('data-src-large'));
        });
    });
})();
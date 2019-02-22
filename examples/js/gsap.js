(() => {

    function startAnimations() {

        let svgObject = document.querySelector('#myName').contentDocument,

        hello = svgObject.querySelector('#hello'),
        name = svgObject.querySelector('#name'),

        tl = new TimelineMax ({});

        tl.from(hello, 1, {
            y: 200,
            opacity: 100,
        })

        tl.from(name, 1, {
            y: -200,
            opacity: 100,
        })

}


window.addEventListener("load", startAnimations, false);


})();
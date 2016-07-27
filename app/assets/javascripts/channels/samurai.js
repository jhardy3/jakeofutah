function myMove() {
    var elem = document.getElementById("samurai");
    var pos = 0;
    var id = setInterval(frame, 8);
    function frame() {
        if (pos == window.innerWidth) {
            pos = -20
            // elem.style.top = (pos * 2) + 'px';
        } else {
            pos++;

            elem.style.left = pos + 'px';
        }
    }
}

function changeFontSize(type) {
    var ids = [".text"];
    ids.forEach(id => {
        var element = document.querySelector(id);
        var fontSize = window.getComputedStyle(element, null).getPropertyValue("font-size");
        
        fontSize = parseFloat(fontSize);

        if(fontSize == 22) {
            var el = document.getElementById("plus");
            el.classList.toggle("disb");
        } else {
            var el = document.getElementById("plus");
            el.classList.remove("disb");
        }

        if(fontSize == 10) {
            var el = document.getElementById("minus");
            el.classList.toggle("disb");
        } else {
            var el = document.getElementById("minus");
            el.classList.remove("disb");
        }

        if(type === "increase"){
            if(fontSize == 22) {
                return false;
            } else {
                element.style.fontSize = (fontSize + 2) + "px";
            }
            
        } else {
            if(fontSize == 10){
                return false;
            } else {
                element.style.fontSize = (fontSize - 2) + "px";
            }
        }
    })
}

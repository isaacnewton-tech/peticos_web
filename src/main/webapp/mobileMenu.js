const menuButton = document.getElementById("menuButton")
const menuDiv = document.getElementById("optionsMenu")

menuButton.addEventListener("click", function(){
    if (menuDiv.classList.contains("visible")){
        menuDiv.classList.remove("visible")
    }
    else{
        menuDiv.classList.add("visible")
    }
})
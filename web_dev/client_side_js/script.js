var remove_item = function(event){
    event.target.remove();
}

var add_item = function(){
    var christmas_list = document.getElementById("christmas-list");
    var new_el = document.createElement("li");
    var reindeer_names = ["Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen", "Rudolph"];
    var new_content = document.createTextNode(
        reindeer_names[Math.floor(Math.random() * reindeer_names.length)]
    );
    new_el.appendChild(new_content);
    new_el.style.fontStyle = "italic";
    new_el.addEventListener("click", remove_item);
    christmas_list.appendChild(new_el);
};

var christmas_items = document.querySelectorAll("#christmas-list li");

christmas_items.forEach(function(element){
  element.style.fontStyle = "italic";
    element.addEventListener("click", remove_item);   
});

document.getElementById("christmas-title").style.color = "red";

add_reindeer_button = document.getElementById("add-item");
add_reindeer_button.addEventListener("click", add_item);


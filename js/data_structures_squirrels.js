var colors = ["pink", "blues", "green", "purple"];
var names = ["Susan", "Bob", "John", "Amy"];

colors.push("red")
names.push("Horace")

var colored_horses = {};

//colored_horses.keys(names) = colors;

for (var i=0; i < names.length; i ++) {
  colored_horses[names[i]] = colors[i];
}

console.log(colored_horses)



function Car(color, make, year) {
  console.log("New car:", this);
  this.color = color;
  this.make = make;
  this.year = year;
  this.beep = function() {
    console.log("BEEP!");
  };
}

var car_1 = new Car("red", "VW", 2007);
console.log(car_1.color);
console.log(car_1.make);
console.log(car_1.year);
car_1.beep()
console.log("------")

var car_2 = new Car("black", "Honda", 2010);
console.log(car_2.color);
console.log(car_2.make);
console.log(car_2.year);
car_2.beep()
console.log("------")

var car_3 = new Car("green", "Ford", 2016);
console.log(car_3.color);
console.log(car_3.make);
console.log(car_3.year);
car_3.beep()
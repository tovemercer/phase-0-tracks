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
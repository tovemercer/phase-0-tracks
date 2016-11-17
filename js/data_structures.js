var colors = ['blue', 'green', 'purple', 'pink']
var names = ['Bob', 'Frank', 'Sally', 'Kikki']

names.push("John")
colors.push("teal")

console.log(names)
console.log(colors)

var horses = {}
for (var i = 0; i < colors.length; i ++) {
	horses[names[i]] = colors[i]
}

console.log(horses)

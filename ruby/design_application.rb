interior_design_app = {
	name: "Bob Carrey",
	address: "Chicago, IL",
	email: "bob@gmail.com",
	phone: "222-222-2222",

	shade_of_blue: "turquoise"
}

#p interior_design_app

interior_design_app ["phone"] = "999-999-9999"
interior_design_app ["hire_date"] = "11/5/16"
#p interior_design_app

p interior_design_app[:name] + interior_design_app[:shade_of_blue]

p interior_design_app
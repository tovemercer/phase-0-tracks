#5.4 Nested Data

#Release 2
classroom = {
	student_desk: {
		pencils: 2,
		notebook: 1,
		number_of_desks: {
			first_row: 4,
			second_row: 4,
			third_row: 4
		},
		books: [
			"Art",
			"Science",
			"Math"
		]
	},
	
	teacher_desk: {
		chalk: 3,
		lesson_plan: "Science",
		late_students: []
	}
}


classroom[:student_desk][:pencils]
classroom[:student_desk][:number_of_desks].length
classroom[:student_desk][:books][0]
classroom[:student_desk][:books].sort
classroom[:teacher_desk][:lesson_plan].reverse
classroom[:teacher_desk][:late_students].push("Billy", "Susan", "Toto")
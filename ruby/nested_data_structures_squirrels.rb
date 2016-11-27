# Release 1

music = {
	alternative: {
		bands: [
			"Nirvana",
			"Pearl Jame",
			"Alice in Chains"
			],

		songs: [
			"Smells like Teen Spirit",
			"Jeremy",
			"Man in the Box"
		]
	},

	indie: {
		bands: [
			"Vampire Weekend",
			"Tame Impala",
			"Ra Ra Riot"
			],

		songs: [
			"Ya Hey",
			"The Less I Know the Better",
			"Water"
		]
	},

	eighties: {
		bands: [
			"Hall and Oats",
			"Kenny Loggins",
			"Michael McDonald"
			],

		songs: [
			"I Can't Go for That",
			"Footloose",
			"What a Fool Believes"]
	}
}

puts music[:alternative][:songs]
puts
puts music[:eighties][:bands][2]
puts
puts music[:indie][:songs].push("A-Punk")

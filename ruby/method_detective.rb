# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".gsub(/[eo]/, 'o' => 'oo')
# => “zoom”

"enhance".center(20)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
#=> "the usual suspects"

"suspects".prepend ("the usual ")
# => "the usual suspects"

a = "the usual "
a << "suspects" 
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

string = "The mystery of the missing first letter"
string.slice!(0)
string
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# It's the number given to the lowercase "z" in the ASCII.
# The code was created to reorder and epand characters and symbols already used in telegraphy.
# Lowercase letters were added in 1967

"How many times does the letter 'a' appear in this string?".count "a"
# => 4

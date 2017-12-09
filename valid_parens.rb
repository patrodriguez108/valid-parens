# check if string has complete set of parens
# store parens in array
# join array
# get length of array

def longest_valid_parentheses(s)
	set = "()"
	parens = []
	if s.include?(set)
		i = 0
		while s.length > i
			if s[i] == set[0]
				if s[i + 1] == set[1]
					parens << "#{s[i]}#{s[i + 1]}"
				end
			end
			i += 1
		end
	end
	parens.join.split('').count
end

# exam_one = "()"

# longest_valid_parentheses(exam_one)

exam_two = "(()"

p longest_valid_parentheses(exam_two)

exam_three = ")()())"


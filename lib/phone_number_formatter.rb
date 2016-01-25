# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def format_phone_number(phone_number_str)
  p =  phone_number_str
  if p.length == 10
    ac = p[0, 3]
    first_three = p[3, 3]
    last_four = p[6, 4]
    "(" + ac + ")" + " " +first_three + "-" + last_four
  elsif (p.include?(" ") == true) && (p.include?("-") == false)
  space = p.delete(" ")
    ac = space[0, 3]
    first_three = space[3, 3]
    last_four = space[6, 4]
    "(" + ac + ")" + " " +first_three + "-" + last_four
  elsif p.length > 10 && p.include?(" ") == false
    dnd = p.delete(".")
    dnd = dnd.delete("-")
    ac = dnd[0, 3]
    first_three = dnd[3, 3]
    last_four = dnd[6, 4]
    "(" + ac + ")" + " " +first_three + "-" + last_four
  else
    ac = p[0, 3]
    rest = p[3, 9]
    "(" + ac + ")" + rest
  end
end

puts format_phone_number("123 456-7890")
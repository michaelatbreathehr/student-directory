# puts students in an array
students = [
 "Dr. Hannibal Lector",
 "Darth Vador",
 "Nurse Ratched",
 "Michael Corleone",
 "Alex DeLarge",
 "The Wicked Witch of the West",
 "Terminator",
 "Freddy Krueger",
 "The Joker",
 "Joffrey Baratheon",
 "Norman Bates"
]
# displays the students
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(names)
  names.each do |name|
    puts name
  end
end


# print the total number of students
def print_footer(names)
  puts "overall, we have #{names.count} great students"
end

# call methods
print_header
print(students)
print_footer(students)

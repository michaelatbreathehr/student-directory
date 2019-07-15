# puts students in an array
students = [
 {name: "Dr. Hannibal Lector", cohort: :november},
 {name: "Darth Vador", cohort: :november},
 {name: "Nurse Ratched", cohort: :november},
 {name: "Michael Corleone", cohort: :november},
 {name: "Alex DeLarge", cohort: :november},
 {name: "The Wicked Witch of the West", cohort: :november},
 {name: "Terminator", cohort: :november},
 {name: "Freddy Krueger", cohort: :november},
 {name: "The Joker", cohort: :november},
 {name: "Joffrey Baratheon", cohort: :november},
 {name: "Norman Bates", cohort: :november}
]
# displays the students
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort) "
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

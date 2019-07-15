def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit enter twice"
  # create an empty array
  students = []
  # get the name first
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of input_students
  students
end
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
students = input_students
print_header
print(students)
print_footer(students)

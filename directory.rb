def interactive_menu
  students = []

  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "not sure what you mean, try again"
    end
  end
end

def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit enter twice"
  # create an empty array
  students = []
  number_of_students = 0
  # get the name first
  name = gets.chomp
  puts "Add Cohort, Hobbies, Home town"
  cohort = gets.chomp
  hobby = gets.chomp
  home_town = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort, hobby: hobby}
    number_of_students = number_of_students += 1
    if number_of_students == 1
      puts "now we have #{students.count} student"
    else
      number_of_students
      puts "now we have #{students.count} students"
    end
    puts "Add another student"
    #get another name from the user
    name = gets.chomp
    cohort = gets.chomp
    hobby = gets.chomp
    home_town = gets.chomp

  end
  students
end

# displays the students
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  count = 1
    loop
      count = count + 1
      students.each.with_index(1) do |student, index|
        puts ("#{index}: #{student[:name]} (#{student[:cohort]} cohort)  #{student[:hobby]}")
    break if index == 3
  end
end

# print the total number of students
def print_footer(names)
  if names.empty?
    puts "We don't have any students yet"
  else
    puts "overall, we have #{names.count} great students"
end
end
# call methods
interactive_menu

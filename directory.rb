@students = []

def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit enter twice"
  # get the name first
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "now we have #{@students.count} students"
    # end
    name = gets.chomp
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Export to csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer(students)
end

def save_students
 file = File.open("students.csv", "w")
 @students.each do |student|
   student_data = [student[:name], student[:cohort]]
   csv_line = student_data.join(",")
   file.puts csv_line
 end
 file.close
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "9"
    exit # this will cause the program to terminate
  else
    puts "I don't know what you meant, try again"
  end
end

# displays the students
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts ("#{student[:name]} (#{student[:cohort]} cohort)")
  end
end

# print the total number of students
def print_footer
  puts "Overall, we have #{@students.count} great students"
end

interactive_menu

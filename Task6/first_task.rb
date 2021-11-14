#Variant 10
MAX_YEAR = 4

class Student
  attr_reader :name, :surname, :lastname, :sex, :age, :year

  def initialize(name, surname, lastname, sex, age, year)
    @name = name
    @surname = surname
    @lastname = lastname
    @sex = sex
    @age = age
    @year = year
  end

  def to_s
    @name + ', ' + @surname + ', ' + @lastname + ', ' + @sex + ', ' + @age.to_s + ', ' + @year.to_s
  end
end

class Faculty
  attr_reader :students

  def initialize(students)
    @students = students
  end

  def most_male_year
    years = Array.new(MAX_YEAR)
    years[0] = 0
    1.upto(MAX_YEAR) {
      |year|
      studs = self.filter(:year, year)
      males = studs.filter(:sex, "male")
      years[year] = males.students.length.to_f / studs.students.length
    }

    [years.index(years.max), years.max]
  end

  def alphabetical(field)
    Faculty.new(@students.sort { |s1, s2| s1.send(field) <=> s2.send(field) })
  end

  def filter(field, value)
    Faculty.new(@students.select { |s| s.send(field) == value })
  end

  def most_common(field)
    freques = @students.each_with_object(Hash.new(0)) { |key, hash| hash[key.send(field)] += 1 }
    max_value = freques.key(freques.values.max)
    self.filter(field, max_value)
  end
end

student1 = Student.new("Nikita", "Svetlitskii", "Vitalievych", "male", 22, 3)
student2 = Student.new("Roman", "Petrov", "Kirilovich", "male", 18, 1)
student3 = Student.new("Vladimir", "Istorenko", "Genryhovych", "male", 44, 1)
student4 = Student.new("Anastasya", "Yevgenovych", "Shevchuk", "female", 18, 2)
student5 = Student.new("Daryna", "Kravchyk", "Anatolyivna", "female", 18, 2)
student6 = Student.new("Ivanna", "Savarchuk", "Fedorivna", "female", 35, 2)
student7 = Student.new("Borys", "Ivanchenko", "Klastich", "male", 21, 4)
student8 = Student.new("Maksim", "Antonenko", "Serhiovych", "male", 19, 3)
student9 = Student.new("Larysa", "Ivanko", "Mykolaivna", "female", 17, 1)
student10 = Student.new("Maria", "Veleskova", "Vladimirovna", "female", 30, 4)
students = [student1,student2,student3,student4,student5,student6,student7,student8,student9,student10]

faculty = Faculty.new(students)

puts "Year with the most male percentage:\n"
max_year = faculty.most_male_year
puts #{max_year}

puts "\nSurnames in right order: \n"
faculty.alphabetical(:surname).students.each {
  |s|
  puts s.surname
}

puts "\nMost common male name: \n"
male_name = faculty.filter(:sex, "male").most_common(:name).students[0].name
puts male_name

puts "\nMost common female name: \n"
female_name = faculty.filter(:sex, "female").most_common(:name).students[0].name
puts female_name

puts "\nNames and Surnames of most common female age: \n"
faculty.filter(:sex, "female").most_common(:age).students.each {
  |s|
  puts "#{s.name} #{s.surname}, #{s.age} y.o."
}
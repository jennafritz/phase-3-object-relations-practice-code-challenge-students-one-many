require 'pry'

puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data
s1 = Student.create(name: "One", age: "21", cohort_id: 1)
s2 = Student.create(name: "Two", age: "21", cohort_id: 1)
s3 = Student.create(name: "Three", age: "23", cohort_id: 2)
s4 = Student.create(name: "Four", age: "24", cohort_id: 2)
s5 = Student.create(name: "Five", age: "25", cohort_id: 3)
s6 = Student.create(name: "Six", age: "26", cohort_id: 3)
s7 = Student.create(name: "Seven", age: "27", cohort_id: 4)
s8 = Student.create(name: "Eight", age: "28", cohort_id: 4)
s9 = Student.create(name: "Nine", age: "29", cohort_id: 5)
s10 = Student.create(name: "Ten", age: "30", cohort_id: 5)
s11 = Student.create(name: "Eleven", age: "31", cohort_id: 5)

c1.students.push(s1, s2)
c2.students.push(s3, s4)
c3.students.push(s5, s6)
c4.students.push(s7, s8)
c5.students.push(s9, s10, s11)



binding.pry

puts "Done!"
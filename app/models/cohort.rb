require 'pry'

class Cohort < ActiveRecord::Base
    has_many :students

    def add_student(name, age)
        self.students << Student.create(name: name, age: age)
    end

    def average_age
        self.students.average(:age).to_f
    end

    def total_students
        self.students.count
    end

    def self.biggest
        # counts = Cohort.all.map do |cohort_instance|
        #     cohort_instance.total_students
        # end
        # biggest = sort.
        sorted = self.all.sort do |cohort_a, cohort_b|
            cohort_a.total_students <=> cohort_b.total_students
        end
        sorted.last
    end

    def self.sort_by_mod
        self.all.sort do |cohort_a, cohort_b|
            cohort_a.current_mod <=> cohort_b.current_mod
        end
    end

end
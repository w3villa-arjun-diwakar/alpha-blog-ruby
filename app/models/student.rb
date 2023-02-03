class Student < ApplicationRecord
    validates :stu_name ,presence: true , length: {minimum:3, maximum:40}
    validates :rollno, presence: true , length: {minimum:1, maximum:10}
    validates :course, presence: true , length: {minimum:3, maximum:40}
    validates :phone, presence: true , length: {minimum:5, maximum:40}
end

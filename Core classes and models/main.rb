require_relative 'student'
require_relative 'student_short'
require_relative 'data_list_student_short'
require_relative 'data_list'
require_relative 'student_list_JSON'
require_relative 'student_list_YAML'
require 'mysql2'
require 'fox16'
require_relative 'window'

student1 = Student_short.new(id:1, last_name:'Васильев', first_name:'Олег', middle_name:'Юрьевич', phone_number:'89184980098', telegram:'oleg', mail:'oleg@mail.ru', git:'OlegVasil')
student2 = Student_short.new(id:2, last_name:'Гаджаев', first_name:'Альберт', middle_name:'Русланович', phone_number:'+79676559609', telegram:'monspieeet', mail:'skop8709@gmail.com', git:'monspieeet')
student3 = Student_short.new(id:3, last_name:'Воронин', first_name:'Георгий', middle_name:'Евгеньевич', phone_number:'+79186532003', telegram:'shin8u', mail:'shin8u@yandex.ru', git:'shin8u')


student_short1 = Student.new(id:1, last_name:'Васильев', first_name:'Олег', middle_name:'Отчество', phone_number:'89184980098', telegram:'oleg', mail:'oleg@mail.ru', git:'OlegVasil')


obj_arr = [student1.to_h, student3.to_h]

data1 = Data_list_student_short.new(data:obj_arr)


@db_host  = "localhost"
@db_user  = "root"
@db_pass  = "1111"
@db_name = "students"

client = Mysql2::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass, :database => @db_name)

results = client.query("SELECT * FROM student", symbolize_keys: true)

results.each { |r|
  puts Student.new(**r)
  puts
}

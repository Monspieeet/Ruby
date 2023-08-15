require_relative 'student'

student1 = Student.new(id:'1', last_name:'Воронин', first_name:'Георгий', middle_name:'Евгеньевич', phone_number:'89777777777', telegram:'shi8u', mail:'jojo@gmail.com', git:'shin8u')
student2 = Student.new(id:'2', last_name:'Гаджаев', first_name:'Альберт', middle_name:'Русланович', phone_number:'89777777777', telegram:'monspieeet', mail:'skop8709@gmail.com', git:'monspieeet')

puts student1.to_s
puts student2.to_s

def index(arr)
    d=arr.sort.reverse
    d.each {|x| puts arr.index(x)}
end

def max(arr)
    max1=arr.index(arr.max)
    max2 = arr.select {|x| x<arr.max}.max
    if max1==arr.index(max2)+1 or arr.index(max2)==max1+1
        puts "Два максимальных элемента массива - соседи"
    else arr.each_index {|i| if (i<max1 and i>arr.index(max2)) or (i>max1 and i<arr.index(max2))
        puts arr[i] end}
    end
end

def maxus(arr)
    max1=arr.index(arr.max)
    max2=arr.rindex(arr.max)
    if max1==max2+1
        puts "Два максимальных элемента массива - соседи"
    else arr.each_index{ |i| if i>max1 and i<max2
        puts arr[i] end}
    end
end

def min_chet(arr)
    puts arr.select {|m| m%2==0}.min
end


def all(x)
    primes, powers = x.prime_division.transpose
    powers.each { |i| (1..i).to_a.each { |a| puts primes[powers.index(i)] } }
end

puts "Введите массив"
arr = gets.chomp.split(' ').map(&:to_i)
puts "Введённый массив: #{arr.inspect}"

puts "Чтение из файла или консоли?
0 - Из файла
1 - Из консоли"

c=gets.to_i

case c
    when 0
        puts "Введите имя файла"
        path=gets
        file = File.new("#{path}","r:UTF-8")
        n=file.read.to_i
    when 1
        puts "Какую задачу решать?
        1 - Индексы элементов по убыванию
        2 - Элементы между первым и вторым максимальным
        3 - Элементы между двумя максимальными
        4 - Минимальный чётный элемент
        5 - Простые делители числа"
        n = gets.chomp.to_i
end
case n
    when 1
        puts "Результат: #{index(arr)}"
    when 2
        puts "Результат: #{max(arr)}"
    when 3
        puts "Результат: #{maxus(arr)}"
    when 4
        puts "Результат: #{min_chet(arr)}"
    when 5
        puts "Результат: #{all(arr)}"
end

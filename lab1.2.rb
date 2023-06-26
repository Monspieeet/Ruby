puts 'Введите число'
n = STDIN.gets.to_i

def ne_prost(n)
    i = 1
    count = 0
    1.upto(n - 1) do |i|
        if (nod(n,i) != 1) && (i % 2 == 0)
            count +=1
        end    
    end        
    return count        
end

def nod(n,m)
    while m != n
        if m > n
            m = m - n
        else
            n = n - m
        end    
    end
    return n
end

def max(n)
    max = 0
    while n!=0
        digit = n % 10
        if (digit > max) && (digit % 3 !=0)
            max = digit
        end    
        n /= 10
    end
    return max
end

def naim(n)
    if n%2 == 0
        return 2
    end
    i = 3
    while n % i != 0 && i*i <= n
        i+= 1
    end
    if i * i <= n
        return i
    end
    return n
end

def maximum(n)
    i = n - 1
    while i != 1
        if (nod(i,n) != 1) && (i % naim(n) != 0)
            return i
        else
            i -= 1
        end
    end    
end

def sum(n)
    sum = 0
    while n != 0
        digit = n % 10
        if digit < 5 
            sum += digit
        end
        n /= 10
    end
    return sum
end

puts ne_prost(n)
puts max(n)
puts naim(n)
puts maximum(n) * sum(n)

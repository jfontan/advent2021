
def first(numbers)
    zeros = []
    half = numbers.length / 2

    numbers[0].length.times { zeros << 0 }

    numbers.each do |n|
        n.split('').each_with_index do |d, i|
            zeros[i] += 1 if d == '0'
        end
    end

    gamma, epsilon = "", ""
    zeros.each do |z|
        if z >= half
            gamma << '0'
            epsilon << '1'
        else
            gamma << '1'
            epsilon << '0'
        end
    end   

    return gamma.to_i(2) * epsilon.to_i(2)
end

def second(numbers)
    len = numbers[0].length

    data = numbers
    len.times do |pos|
        data = filter(data, pos, true)
        break if data.length == 1
    end
    oxygen = data[0]

    data = numbers
    len.times do |pos|
        data = filter(data, pos, false)
        break if data.length == 1
    end
    co2 = data[0]

    return oxygen.to_i(2) * co2.to_i(2)
end

def filter(numbers, pos, oxygen)
    zero, one = [], []
    numbers.each do |n|
        if n[pos] == ?0
            zero << n
        else
            one << n
        end
    end

    if oxygen
        return one if zero.length == one.length
        if zero.length > one.length
            return zero
        else
            return one
        end
    else
        return zero if zero.length == one.length
        if zero.length > one.length
            return one
        else
            return zero
        end
    end
end
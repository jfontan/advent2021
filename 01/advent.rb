
def first(data)
    previous = data[0]
    sum = 0
    data[1..-1].each do |n|
        sum += 1 if n > previous
        previous = n
    end

    sum
end

def second(data)
    previous = data[0..2].sum
    sum = 0
    (data.length-1).times do |n|
        s = data[(n+1)..(n+3)].sum
        sum += 1 if s > previous
        previous = s
    end

    return sum
end
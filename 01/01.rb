
def first(data)
    previous = data[0]
    sum = 0
    data[1..-1].each do |n|
        sum += 1 if n > previous
        previous = n
    end

    sum
end
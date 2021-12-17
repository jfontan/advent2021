
def first(instructions)
    horizontal, depth = 0, 0

    instructions.each do |i|
        parts = i.split(' ')
        direction = parts[0]
        num = parts[1].to_i

        case direction
        when 'forward'
            horizontal += num
        when 'down'
            depth += num
        when 'up'
            depth -= num
        end
    end

    horizontal * depth
end

def second(instructions)
    horizontal, depth, aim = 0, 0, 0

    instructions.each do |i|
        parts = i.split(' ')
        direction = parts[0]
        num = parts[1].to_i

        case direction
        when 'forward'
            horizontal += num
            depth += aim * num
        when 'down'
            aim += num
        when 'up'
            aim -= num
        end
    end

    horizontal * depth
end
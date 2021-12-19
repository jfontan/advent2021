
def parse(input)
    numbers = input[0].split(',').map {|n| n.to_i }

    board_numbers = input[2..-1].reject {|l| l == '' }
    boards = []

    board_numbers.each_slice(5) do |c|
        board = []
        c.each do |l|
            board += l.split(" ").map{|n| n.to_i }
        end
        boards << board
    end

    return numbers, boards
end

def first(input)
    numbers, board_numbers = parse(input)
    boards = board_numbers.map {|b| Board.new(b) }

    found = nil
    last_numbers = nil
    numbers.length.times do |i|
        boards.each do |b|
            if b.check(numbers[0..i])
                found = b
                last_numbers = numbers[0..i]
                break
            end
        end
        break if found != nil
    end

    not_matched = found.numbers - last_numbers
    not_matched.sum * last_numbers[-1]
end

def second(input)
    numbers, board_numbers = parse(input)
    boards = board_numbers.map {|b| Board.new(b) }

    matched_boards = Set.new
    last_board = nil
    last_numbers = nil
    numbers.length.times do |i|
        last_numbers = numbers[0..i]
        boards.each do |b|
            if b.check(numbers[0..i])
                matched_boards.add(b)
                last_board = b
            end
            break if matched_boards.length == boards.length
        end
        break if matched_boards.length == boards.length
    end

    (last_board.numbers - last_numbers).sum * last_numbers[-1]
end

class Board
    def initialize(board)
        @board = board
        @lines = board.each_slice(5).to_a
        @columns = []
        5.times do |y|
            c = []
            5.times do |x|
                c << @lines[x][y]
            end
            @columns << c
        end
    end

    def check(numbers)
        @lines.each do |l|
            return true if (l & numbers).length == 5
        end

        @columns.each do |l|
            return true if (l & numbers).length == 5
        end

        false
    end

    def numbers
        @board
    end
end


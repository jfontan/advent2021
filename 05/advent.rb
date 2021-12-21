def parse(input)
  lines = []
  input.map do |l|
    points = l.split(" -> ")
    [
      points[0].split(",").map { |n| n.to_i },
      points[1].split(",").map { |n| n.to_i },
    ]
  end
end

def calculate(input, diagonals)
  lines = parse(input)

  board = []
  10.times do
    board << [0] * 10
  end

  lines.each do |l|
    next if !diagonals && !(l[0][0] == l[1][0] || l[0][1] == l[1][1])
    points = line(l)
    points.each do |p|
      board[p[0].floor][p[1].floor] += 1
    end
  end

  counter = 0
  board.each do |l|
    l.each do |n|
      counter += 1 if n >= 2
    end
  end

  pp board

  counter
end

def first(input)
  calculate(input, false)
end

def second(input)
  calculate(input, true)
end

def line(points)
  distance = Math.sqrt(
    (points[1][0] - points[0][0]) ** 2 +
    (points[1][1] - points[0][1]) ** 2
  )

  dx = (points[1][0] - points[0][0]) / distance.to_f
  dy = (points[1][1] - points[0][1]) / distance.to_f

  (distance.ceil + 1).times.map do |d|
    [
      points[0][0] + dx * d,
      points[0][1] + dy * d,
    ]
  end
end

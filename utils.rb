
def lines_from_string(str)
    str.split("\n")
end

def numbers_from_string(str)
    lines_from_string(str).map {|n| n.to_i }
end

def lines_from_file(name)
    File.readlines(name)
end

def numbers_from_file(name)
    lines_from_file(name).map {|n| n.to_i }
end


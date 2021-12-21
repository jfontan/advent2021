require "rspec"
require "../utils"
require "./advent"

test_input = <<EOT
0,9 -> 5,9
8,0 -> 0,8
9,4 -> 3,4
2,2 -> 2,1
7,0 -> 7,4
6,4 -> 2,0
0,9 -> 2,9
3,4 -> 1,4
0,0 -> 8,8
5,5 -> 8,2
EOT

RSpec.describe "advent" do
  describe "first" do
    it "returns correct test value" do
      data = lines_from_string(test_input)
      res = first(data)
      expect(res).to eq(5)
    end

    it "calculates the first result" do
      data = lines_from_file("input.txt")
      res = first(data)
      expect(res).to eq(6572)
    end
  end

  describe "second" do
    it "returns correct test value" do
      data = lines_from_string(test_input)
      res = second(data)
      expect(res).to eq(12)
    end

    it "calculates the second result" do
      data = lines_from_file("input.txt")
      res = second(data)
      expect(res).to eq(9576)
    end
  end
end

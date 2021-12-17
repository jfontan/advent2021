
require "rspec"
require "../utils"
require "./advent"

test_input = <<EOT
forward 5
down 5
forward 8
up 3
down 8
forward 2
EOT

RSpec.describe 'advent' do
    describe 'first' do
        it 'returns correct test value' do
            data = lines_from_string(test_input)
            res = first(data)
            expect(res).to eq(150)
        end

        it 'calculates the first result' do
            data = lines_from_file('input.txt')
            res = first(data)
            expect(res).to eq(2039256)
        end
    end

    describe 'second' do
        it 'returns correct test value' do
            data = lines_from_string(test_input)
            res = second(data)
            expect(res).to eq(900)
        end

        it 'calculates the second result' do
            data = lines_from_file('input.txt')
            res = second(data)
            expect(res).to eq(1856459736)
        end
    end
end
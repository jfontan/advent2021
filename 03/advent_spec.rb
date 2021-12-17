
require "rspec"
require "../utils"
require "./advent"

test_input = <<EOT
00100
11110
10110
10111
10101
01111
00111
11100
10000
11001
00010
01010
EOT

RSpec.describe 'advent' do
    describe 'first' do
        it 'returns correct test value' do
            data = lines_from_string(test_input)
            res = first(data)
            expect(res).to eq(198)
        end

        it 'calculates the first result' do
            data = lines_from_file('input.txt')
            res = first(data)
            expect(res).to eq(2648450)
        end
    end

    describe 'second' do
        it 'returns correct test value' do
            data = lines_from_string(test_input)
            res = second(data)
            expect(res).to eq(230)
        end

        it 'calculates the second result' do
            data = lines_from_file('input.txt')
            res = second(data)
            expect(res).to eq(1856459736)
        end
    end
end
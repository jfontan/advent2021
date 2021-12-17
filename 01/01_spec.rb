
require "rspec"
require "../utils"
require "./01"

test_input = <<EOT
199
200
208
210
200
207
240
269
260
263
EOT

RSpec.describe 'advent' do
    describe 'first' do
        it 'returns correct test value' do
            data = numbers_from_string(test_input)
            res = first(data)
            expect(res).to eq(7)
        end

        it 'calculates the first result' do
            data = numbers_from_file('input.txt')
            res = first(data)
            expect(res).to eq(1527)
        end
    end
end
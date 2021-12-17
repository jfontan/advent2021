
require "rspec"
require "../utils"
require "./advent"

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

    describe 'second' do
        it 'returns correct test value' do
            data = numbers_from_string(test_input)
            res = second(data)
            expect(res).to eq(5)
        end

        it 'calculates the second result' do
            data = numbers_from_file('input.txt')
            res = second(data)
            expect(res).to eq(1575)
        end
    end
end
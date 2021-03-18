require 'spec_helper'

describe 'Validate CPF' do
    context 'with valid CPF' do
        it "when given '000.000.000-00', return true" do
            expect(validate('000.000.000-00')).to be_truthy
        end
        
        it "when given '461.636.517-23', return true" do
            expect(validate('461.636.517-23')).to be_truthy
        end

        it "when given '123.456.789-10', return true" do
            expect(validate('123.456.789-10')).to be_truthy
        end
    end

    context 'with invalid parameters' do
        it 'when given a random string, return false' do
            expect(validate('teste técnico')).to be_falsey
        end

        it "when given 'Hello Word', return false" do
            expect(validate('Hello Word')).to be_falsey
        end

        it "when given invalid format, return false" do
            expect(validate('123.456.789.00')).to be_falsey
        end

        it "when given another invalid format, return false" do
            expect(validate('123.456.789--00')).to be_falsey
        end

        it 'when given without pontuation, return false' do
            expect(validate('12345678910')).to be_falsey
        end

        it 'when given a integer, return false' do
            expect(validate(12345678910)).to be_falsey
        end
    end
end
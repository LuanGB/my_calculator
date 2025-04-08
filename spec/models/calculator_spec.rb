require_relative '../../spec/spec_helper'
require_relative '../../models/calculator'

describe Calculator do
  let(:calculator) { Calculator.new }

  it 'adds numbers correctly' do
    expect(calculator.calculate(2, 3, '+')).to eq(5)
  end

  it 'subtracts numbers correctly' do
    expect(calculator.calculate(5, 3, '-')).to eq(2)
  end

  it 'multiplies numbers correctly' do
    expect(calculator.calculate(4, 3, '*')).to eq(12)
  end

  it 'divides numbers correctly' do
    expect(calculator.calculate(10, 2, '/')).to eq(5)
  end

  it 'handles division by zero' do
    expect(calculator.calculate(10, 0, '/')).to eq('Division by zero')
  end

  it 'returns invalid for unknown operations' do
    expect(calculator.calculate(2, 2, '^')).to eq('Invalid operation')
  end
end
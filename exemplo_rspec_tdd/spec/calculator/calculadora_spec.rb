require 'rspec'
require 'calculator'

#RSpec.describe Calculator, 'Classe Calculadora' do
RSpec.describe Calculator do

  #subject(:calc) { described_class.new }

  context '#sum' do
    it 'with positive numbers' do
      result = subject.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'with negative and positive numbers' do
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end

    it 'with negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end

    # teste pendente
    xit 'with numbers 1'
    it 'with numbers 2'

  end

  context '#multiply' do
    specify 'with two numbers' do
      result = subject.multiply(2, 2)
      expect(result).to eq(4)
    end
  end

  context '#div' do
    it 'with two numbers' do
      result = subject.div(4, 2)
      expect(result).to eq(2)
    end

    it 'divide by 0' do
      expect{ subject.div(3, 0) }.to raise_exception
      expect{ subject.div(3, 0) }.to raise_error(ZeroDivisionError)
      expect{ subject.div(3, 0) }.to raise_error("divided by 0")
      expect{ subject.div(3, 0) }.to raise_error(ZeroDivisionError, "divided by 0")
      expect{ subject.div(3, 0) }.to raise_error(/divided by/)
    end
  end
end

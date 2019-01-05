require 'rspec'

describe 'Matchers de Igualdade' do

  it '#equal - se é o mesmo objeto' do
    x = "ruby"
    y = "ruby"

    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end

  it '#be - se é o mesmo objeto' do
    x = "ruby"
    y = "ruby"

    expect(x).not_to be(y)
    expect(x).to be(x)
  end

  it '#eql - o valor do objeto' do
    x = "ruby"
    y = "ruby"

    expect(x).to eql(y)
  end

  it '#eq - o valor do objeto' do
    x = "ruby"
    y = "ruby"

    expect(x).to eql(y)
  end
end
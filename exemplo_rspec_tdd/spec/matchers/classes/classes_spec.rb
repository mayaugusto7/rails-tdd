require 'rspec'
require 'string_nao_vazia'

describe 'Matcher Classes' do

  it 'be_instance_of' do # Exatamente a classe
    expect(10).to be_instance_of (Integer)
  end

  it 'be_kind_of' do # Pode ser por herança
    str = StringNaoVazia.new

    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)
    expect(10).to be_kind_of (Integer)
  end

  it 'respond_to' do # Responder a um tipo determinado de metodo
    expect('ruby').to respond_to(:size)
    expect('ruby').to respond_to(:count)
  end

  # Mesma coisa que o be_kind_of
  it 'be_a' do
    str = StringNaoVazia.new

    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)
  end

  it 'be_an' do
    str = StringNaoVazia.new

    expect(str).to be_an(String)
    expect(str).to be_an(StringNaoVazia)
  end
end
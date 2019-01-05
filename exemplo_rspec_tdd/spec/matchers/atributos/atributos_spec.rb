require 'rspec'
require 'pessoa'

describe 'Matcher Atributos' do

  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = "Maycon Ribeiro"
    pessoa.idade = 20

    expect(pessoa).to have_attributes(nome: "Maycon Ribeiro", idade: 20)
    expect(pessoa).to have_attributes(nome: start_with("M"), idade: (be >= 20))
  end
end
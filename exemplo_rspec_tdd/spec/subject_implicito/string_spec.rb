require 'string_nao_vazia'

RSpec.describe String do
  describe StringNaoVazia do
    it 'Nao esta vazia' do
      expect(subject).to eq('Não sou vazio!')
    end
  end
end
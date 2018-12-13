#### Context Name

---

Variaveis de instancia usamos <b><i styles="color:red;">#</i>method</b>

Variaveis de classe usamos <b>.method</b>


#### Run Test com format

---

Sempre iniciar o <b>it</b>  with (com) ou when (quando) 

rspec spec/calculator/calculadora_spec.rb --format doc 

adicionar o comando no arquivo .rspec

Executar teste pelo nome

Executar teste pela linha

rspec spec/calculator/calculadora_spec.rb -e "with positive numbers"




````
Calculator
  #sum
    with positive numbers
    with negative and positive numbers
    with negative numbers
    
````

#### Subject

---

Não é necessario instanciar uma classe para testa-la 

````
Forma diferente de instanciar uma classe.

calc = Calculator.new # bad

calc = subject.sum(-5, 7) # good

---------------------------------

Renomear subject para calc.

subject(:calc) { described_class.new }

---------------------------------

Mudando o describe para texto.

RSpec.describe 'Classe Calculadora' do

subject(:calc) { Calculator.new }

````

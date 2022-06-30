require 'rspec'
require_relative '../src/calculadora'

#SOMA
describe('Calculadora Soma') do
    calculadora = Calculadora.new
    it("Deve somar dois inteiros positivos") do
        expect(calculadora.soma(4,5)).to eq 9
    end

    it("Deve somar um número qualquer com 0") do
    expect(calculadora.soma(9,0)).to eq 9
    end
    
    it("Deve somar um número decimal") do
    expect(calculadora.soma(8.8,1.2)).to eq 10
    end 
end

#SUBTRAÇÃO
describe('Calculadora subtração') do
    calculadora = Calculadora.new
    it("Deve subtrair dois inteiros positivos") do
        expect(calculadora.subtrai(8,2)).to eq 6 
    end
    it("Deve subtrair dois números negativos") do
        expect(calculadora.subtrai(-8,-2)).to eq -6
    end
    it("Deve subtrair um número com 0") do
        expect(calculadora.subtrai(10,0)).to eq 10
    end

    it("Deve subtrair um número decimal") do
        expect(calculadora.subtrai(1.1,1.1)).to eq 0
    end 
end

#MULTIPLICAÇÃO
describe('Calculadora multiplicação') do
    calculadora = Calculadora.new
    it("Deve multiplicar dois números inteiros positivos") do
        expect(calculadora.multiplicar(8,2)).to eq 16
    end

    it("Deve multiplicar dois números negativos") do
        expect(calculadora.multiplicar(-8,-2)).to eq 16
    end

    it("Deve multiplica um número inteiro por 0")do
        expect(calculadora.multiplicar(10,0)).to eq 0
    end 

    it("Deve multiplica um número decimal")do
        expect(calculadora.multiplicar(6.2,2)).to eq 12.4
    end 
end

#DIVISÃO
describe('Calculadora divisão') do
    
    calculadora = Calculadora.new
    it("Deve dividir dois números positivos") do
        expect(calculadora.divisao(10,2)).to eq 5
    end
                               
    it("Deve dividir dois números negativos") do
        expect(calculadora.divisao(-10,-2)).to eq 5
    end

    it("Deve tentar dividir um número real por 0") do
        expect(calculadora.divisao(10,0)).to eq "Impossivel dividir números por 0"
    end

    it("Deve tentar dividir um número decimal") do
        expect(calculadora.divisao(8.2,2)).to eq 4.1
    end
end

#POTENCIAÇÃO
describe('Calculadora Potenciação') do 

    calculadora = Calculadora.new
    it("Deve potencializar dois números positivos") do 
        expect(calculadora.potenciacao(4,4)).to eq 256
    end

    it("Deve potencializar números negativos com expoente par") do
        expect(calculadora.potenciacao(-3,4)).to eq 81
    end

    it("Deve potencializar números negativos com expoente impar") do
        expect(calculadora.potenciacao(-5,5)).to eq -3125
    end

    it("Deve realizar potências não exastas") do
        expect(calculadora.potenciacao(1.5,2)).to eq 2.25
    end

    it("Deve potencializar números negativos") do
        expect(calculadora.potenciacao(-4,-2)).to eq 0.0625
    end
end

#RAIZ QUADRADA
describe('Calculadora de Raiz Quadrada') do 

    calculadora = Calculadora.new
    it("Deve fazer a Raiz quadrada um número inteiro positivo") do
        expect(calculadora.raiz_Quadrada(9)).to eq 3
    end

    it("Deve fazer a Raiz de um número inteiro negativo") do 
        expect(calculadora.raiz_Quadrada(-4)).to eq  "Impossivel fazer a raiz quadrada de números negativos"
    end

    it("Deve fazer a Raiz de um número decimal") do 
        expect(calculadora.raiz_Quadrada(5.6)).to eq 2.37
    end

    it("Deve fazer a Raiz de 0") do
        expect(calculadora.raiz_Quadrada(0)).to eq 0
    end
end

#RAIZ CUBICA
describe('Calculadora de Raiz Cubica') do 

    calculadora = Calculadora.new
    it("Deve fazer a Raiz Cubica um número inteiro positivo") do
        expect(calculadora.raiz_Cubica(9)).to eq 2.08
    end
    it("Deve fazer a Raiz de um número inteiro negativo") do 
        expect(calculadora.raiz_Cubica(-3)).to eq  "Impossivel fazer a raiz cubica de números negativos"
    end

    it("Deve fazer a Raiz de um número decimal") do 
        expect(calculadora.raiz_Cubica(4.5)).to eq 1.65
    end

    it("Deve fazer a Raiz de 0") do
        expect(calculadora.raiz_Cubica(0)).to eq 0
    end

end    

#ÁREA
describe("Calculadora de Área") do 

    calculadora = Calculadora.new
    it("Deve fazer a Área de dois valores positivos") do 
        expect(calculadora.area(10,2)).to eq 20
    end

    it("Deve fazer a Área de dois valores negativos") do 
        expect(calculadora.area(-10,-2)).to eq "Impossivel calcular a área com o valor menor que 0 no comprimento ou largura"
    end

    it("Deve fazer a Área de dois valores decimais") do
        expect(calculadora.area(5.5,4.5)).to eq 24.75
    end 
    
    it("Deve fazer a Área com um dos valores equivalentes a 0 ") do
        expect(calculadora.area(10,0)).to eq 0
    end
end  


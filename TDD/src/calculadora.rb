class Calculadora

    #Definindo função de soma
    def soma(a,b)
        a+b 
    end

    #Definindo função de subtração
    def subtrai(a,b)
        a-b 
    end
    
    #Definindo função de multiplicação
    def multiplicar(a,b)
        a*b
    end

    #Definindo função de divisão
    def divisao(a, b)
        if b == 0
            return "Impossivel dividir números por 0"
        end

        if a % b != 0
            return (a/b.to_f).round(2)
        end
        a/b 
    end

    #Definindo função de potenciação
    def potenciacao (a,b)
        a ** b
    end 

    #Definindo função de raiz Quadrada
    def raiz_Quadrada (x)
        if x < 0
            return "Impossivel fazer a raiz quadrada de números negativos"
        end

        Math.sqrt(x).round(2)

    end

    #Definindo função de raiz Cubica
    def raiz_Cubica(x)
        if x < 0
            return "Impossivel fazer a raiz cubica de números negativos"
        end

        Math.cbrt(x).round(2)
    end

    #Definindo função de área
    def area(largura,comprimento)
        if largura < 0 or comprimento < 0
            return "Impossivel calcular a área com o valor menor que 0 no comprimento ou largura"
        end
        
        (largura * comprimento).round(2)
    end

end    


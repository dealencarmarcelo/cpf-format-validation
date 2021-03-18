require_relative './lib/validate_cpf'

def main
    p 'Por favor, digite um CPF para validar o formato!'
    
    string = gets.chomp

    p validate(string)
end

main
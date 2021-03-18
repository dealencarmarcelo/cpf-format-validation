CPF_REGEX = /^[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}/

def validate(cpf)
    return false unless cpf.kind_of?(String)
    
    if CPF_REGEX.match(cpf) 
        return true
    end

    false
end
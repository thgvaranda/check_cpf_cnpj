module CheckCpfCnpj

  require 'cpf/cpf'
  require 'cnpj/cnpj'



  def self.valid_cpf?(number)
    return false if number.size != 11
    Cpf.new(number).valid?
  end

  def self.formatted_cpf(number)
    return false if number.size != 11
    Cpf.new(number).formatted
  end

  def self.only_cpf_numbers(number)
    Cpf.new(number).only_numbers
  end




  def self.valid_cnpj?(number)
    return false if number.size != 14
    Cnpj.new(number).valid?
  end

  def self.formatted_cnpj(number)
    return false if number.size != 14
    Cnpj.new(number).formatted
  end

  def self.only_cnpj_numbers(number)
    Cnpj.new(number).only_numbers
  end



end


CheckCpfCnpj.valid_cpf?('93463833808')
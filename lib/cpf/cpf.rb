module CheckCpfCnpj
  class Cpf

    INVALID_CPF = [
      '11111111111', '22222222222', '33333333333',
      '44444444444', '55555555555', '66666666666',
      '77777777777', '88888888888', '99999999999',
      '00000000000'
    ]

    def initialize(number)
      return false if number.nil?
      @number = number.to_s
    end

    def only_numbers
      return @number.gsub(".", "").gsub("-", "")
    end

    def formatted
      return @number.insert(3, '.').insert(7, '.').insert(11, '-')
    end

    def valid?
      return false if INVALID_CPF.include?(@number)
      return false if @number[9].to_i != check_digits(@number[0..8].split(""))
      return false if @number[10].to_i != check_digits(@number[0..9].split(""))
      return true
    end

    def check_digits(digits)
      prod = digits.size + 1
      sum = 0
      digits.each do |digit|
        sum += digit.to_i * prod
        prod -= 1
      end
      mod = sum%11
      if mod < 2 then 0 else 11-mod end
    end
  end
end
class Cnpj

  def initialize(number=nil)
    return false if number.nil?
    @number = number.to_s
  end

  def only_numbers
    return @number.gsub(".", "").gsub("-", "").gsub("/", "")
  end

  def formatted
    return @number.insert(2, '.').insert(6, '.').insert(10, '/').insert(15, '-')
  end

  def valid?
    return false if @number == '00000000000000'
    return false if @number[12].to_i != check_digits(@number[0..11].split("").reverse)
    return false if @number[13].to_i != check_digits(@number[0..12].split("").reverse)
    return true
  end

  def check_digits(digits)
    #receives digits reverted to simplify iteration
    #array_check also is reverted to iteration
    array_check = [2,3,4,5,6,7,8,9,2,3,4,5,6]
    sum = 0
    digits.each_with_index{ |digit, index| sum += digit.to_i * array_check[index].to_i }
    mod = sum % 11
    if mod < 2 then 0 else 11-mod end
  end
end

require 'minitest/autorun'
require 'check_cpf_cnpj'

# 27.332.993/0001-55
class CnpjTest < MiniTest::Unit::TestCase
  def test_valid_formatted_cnpj
    assert_equal "27.332.993/0001-55", CheckCpfCnpj.formatted_cnpj('27332993000155')
  end

  def test_invalid_formatted_cnpj
    refute CheckCpfCnpj.formatted_cpf('2733299300015') # 13 digits
  end

  def test_only_cnpj_numbers
    assert_equal "27332993000155", CheckCpfCnpj.only_cnpj_numbers('27.332.993/0001-55')
  end

  def test_valid_cnpj
    assert CheckCpfCnpj.valid_cnpj?('27332993000155')
  end

  def test_invalid_cnpj
    refute CheckCpfCnpj.valid_cnpj?('27335993000155')
  end

  def test_invalid_fist_digit
    refute CheckCpfCnpj.valid_cnpj?('27332993000145')
  end

  def test_invalid_second_digit
    refute CheckCpfCnpj.valid_cnpj?('27332993000154')
  end

  def test_invalid_digits
    refute CheckCpfCnpj.valid_cnpj?('27332993000122')
  end

end
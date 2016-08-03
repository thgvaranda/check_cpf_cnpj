require 'minitest/autorun'
require 'check_cpf_cnpj'

class CheckCpfCnpjTest < MiniTest::Unit::TestCase
  def test_valid_formatted_cpf
    assert_equal "934.638.338-08", CheckCpfCnpj.formatted_cpf('93463833808')
  end

  def test_invalid_formatted_cpf
    refute CheckCpfCnpj.formatted_cpf('9346383380') # 10 digits
  end

  def test_only_cpf_numbers
    assert_equal "93463833808", CheckCpfCnpj.only_cpf_numbers('934.638.338-08')
  end

  def test_valid_cpf
    assert CheckCpfCnpj.valid_cpf?('93463833808')
  end

  def test_invalid_cpf
    refute CheckCpfCnpj.valid_cpf?('93363833808')
  end

  def test_invalid_fist_digit
    refute CheckCpfCnpj.valid_cpf?('93463833818')
  end

  def test_invalid_second_digit
    refute CheckCpfCnpj.valid_cpf?('93463833809')
  end

  def test_invalid_digits
    refute CheckCpfCnpj.valid_cpf?('93463833811')
  end

end
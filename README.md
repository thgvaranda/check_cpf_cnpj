# check_cpf_cnpj
### Version 0.2.1
Avaliable CPF validation

##Synopsis
Simple gem to validate CPF or CNPJ

## Instalation
<pre>
gem install check_cpf_cnpj
</pre>

## Example
<pre>
CheckCpfCnpj.valid_cpf?('11122233344') # => false
CheckCpfCnpj.formatted_cpf('11122233344') # => "111.222.333-44"
CheckCpfCnpj.only_cpf_numbers('111.222.333-44') # => "11122233344"

CheckCpfCnpj.valid_cnpj?('11222333444455') # => false
CheckCpfCnpj.formatted_cnpj('1122233344445') # => "11.222.333/4444-55"
CheckCpfCnpj.only_cnpj_numbers('11.222.333/4444-55') => "11222333444455"
</pre>



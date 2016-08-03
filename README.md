# check_cpf_cnpj
### Version 0.1.2
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
CheckCpfCnpj.formatted_cpf('11122233344') # => '111.222.333-44'
CheckCpfCnpj.only_cpf_numbers('111.222.333-44') # => '11122233344'
</pre>



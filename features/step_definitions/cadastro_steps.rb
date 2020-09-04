# frozen_string_literal: true

Dado('que eu sou preciso cadastrar um novo usuário') do
  find_element(xpath: '//android.widget.ImageButton[@index=0]').click
  find_element(id: 'floating_novo').click
end

Quando('eu preencho os {string} básicos necessários e salvo') do |dados|
  @user_data = @file[dados]

  find_element(id: 'rdBasico').click
  find_element(id: 'editNome').send_keys @user_data['nome']
  find_element(id: 'editRg').send_keys @user_data['rg']
  find_element(id: 'editCpf').send_keys @user_data['cpf']
  find_element(id: 'editData').send_keys @user_data['data_nascimento']
  find_element(id: 'editEndereco').send_keys @user_data['endereco']
  find_element(id: 'editNumero').send_keys @user_data['numero']
  find_element(id: 'editBairro').send_keys @user_data['bairro']
  find_element(id: 'editCep').send_keys @user_data['cep']
  find_element(id: 'editCidade').send_keys @user_data['cidade']

  # find_element(id: 'spinnerEstados').click
  # find_element(id: 'spinnerEstados').scroll_to_exact('ES')

  find_element(id: 'editTelefone1').send_keys @user_data['tel_1']
  find_element(id: 'editTelefone2').send_keys @user_data['tel_2']
  find_element(id: 'editEmail').send_keys @user_data['email']
  find_element(id: 'editObs').send_keys @user_data['obs']
  
end

Então('eu devo ver o nome do usuário na lista') do
end

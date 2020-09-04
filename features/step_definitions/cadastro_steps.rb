# frozen_string_literal: true

# --------------- CREATE NEW USER -------------------
Dado('que eu sou preciso cadastrar um novo usuário') do
  @cadastro.adiciona_cliente
end

Quando('eu preencho os {string} básicos necessários e salvo') do |dados|
  @user_data = @file[dados]
  @cadastro.preenche(@user_data)
  @cadastro.salva
end

Então('eu devo ver o nome do usuário na lista') do
  expect(@alert.notification_text).to eql('Cadastro efetuado com sucesso')
  @alert.click_ok
  @cadastro.go_back
  expect(@list.client_to_check).to eql(@user_data['nome'])
end

# --------------- DELETE USER -------------------

Dado('que eu tenho um usuário cadastrado com os {string} preenchidos') do |dados|
  @user_data = @file[dados]

  steps %(
    Dado que eu sou preciso cadastrar um novo usuário
    Quando eu preencho os "#{dados}" básicos necessários e salvo
    Então eu devo ver o nome do usuário na lista
  )
  @list.tap_on_user(@user_data['nome'])
end

Quando('eu excluo esse usuário') do
  @cadastro.delete_user
  expect(@alert.notification_text).to eql('Tem certeza que deseja excluir este cadastro?')
  @alert.confirm_deletion
end

Então('ele deve sumir da lista') do
  expect(@list.validate_deletion).to eql('Cadastro excluído com sucesso')
end

# --------------- UPDATE USER -------------------

Quando('eu atualizo os dados desse usuário') do
  @cadastro.atualiza(@user_data)
  @cadastro.salva
end

Então('ele deve ser atualizado') do
  expect(@alert.notification_text).to eql('Cadastro atualizado com sucesso')
  @alert.click_ok
  @cadastro.go_back
end

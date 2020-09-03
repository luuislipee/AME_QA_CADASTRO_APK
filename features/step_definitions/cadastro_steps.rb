# frozen_string_literal: true

Dado('que eu sou preciso cadastrar um novo usuário') do
  find_element(xpath: '//android.widget.ImageButton[@index=0]').click
  find_element(id: 'floating_novo').click
end

Quando('eu preencho os dados básicos necessários e salvo') do
  find_element(id: 'rdBasico').click
  find_element(id: 'editNome').send_keys "teste"
end

Então('eu devo ver o nome do usuário na lista') do
end

# frozen_string_literal: true

class Cadastro
  def adiciona_cliente
    find_element(xpath: '//android.widget.ImageButton[@index=0]').click
    find_element(id: 'floating_novo').click
  end

  def preenche(dados)
    find_element(id: 'rdBasico').click
    find_element(id: 'editNome').send_keys dados['nome']
    find_element(id: 'editRg').send_keys dados['rg']
    find_element(id: 'editCpf').send_keys dados['cpf']
    find_element(id: 'editData').send_keys dados['data_nascimento']
    find_element(id: 'editEndereco').send_keys dados['endereco']
    find_element(id: 'editNumero').send_keys dados['numero']
    find_element(id: 'editBairro').send_keys dados['bairro']
    find_element(id: 'editCep').send_keys dados['cep']
    find_element(id: 'editCidade').send_keys dados['cidade']

    find_element(id: 'spinnerEstados').click
    driver.scroll_to_exact('SP')
    find_element(xpath: '//android.widget.TextView[@index=6]').click

    find_element(id: 'editTelefone1').send_keys dados['tel_1']
    find_element(id: 'editTelefone2').send_keys dados['tel_2']
    find_element(id: 'editEmail').send_keys dados['email']
    find_element(id: 'editObs').send_keys dados['obs']
  end

  def salva
    find_element(id: 'btnSalvar').click
  end

  def go_back
    @driver.back
  end
end

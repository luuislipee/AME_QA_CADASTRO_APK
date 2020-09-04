#language: pt

Funcionalidade: Cadastro de Cliente

  @new_user
  Esquema do Cenario: Criar novo usuario
    Dado que eu sou preciso cadastrar um novo usuário
    Quando eu preencho os <dados> básicos necessários e salvo
    Então eu devo ver o nome do usuário na lista

    Exemplos:
    |    dados     |
    |  "cadastro"  |


  @delete_user
  Esquema do Cenario: Excluir Usuario
    Dado que eu tenho um usuário cadastrado com os <dados> preenchidos
    Quando eu excluo esse usuário
    Então ele deve sumir da lista

    Exemplos:
    |    dados     |
    |  "cadastro"  |

  @update_user
  Esquema do Cenario: Atualizar Usuario
    Dado que eu tenho um usuário cadastrado com os <dados> preenchidos
    Quando eu atualizo os dados desse usuário
    Então ele deve ser atualizado

    Exemplos:
    |    dados     |
    |  "cadastro"  |
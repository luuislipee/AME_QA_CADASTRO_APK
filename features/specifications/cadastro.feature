#language: pt

Funcionalidade: Cadastro de Cliente
  Esquema do Cenario: Criar novo usuario
    Dado que eu sou preciso cadastrar um novo usuário
    Quando eu preencho os <dados> básicos necessários e salvo
    Então eu devo ver o nome do usuário na lista

    Exemplos:
    |    dados     |
    |  "cadastro"  |

  Cenario: Excluir Usuario

  Cenario: Exportar Dados
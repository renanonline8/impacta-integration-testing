#language: pt
  Funcionalidade: Processo CRUD
    Cenario de Fundo:
      Dado que o usuário gostaria de salvar um processo
      E usuário informa vara com o valor "Santo Andre"
      E usuário informa numero_processo com o valor "256789"
      E usuário informa natureza com o valor "Civil"
      E usuário informa partes com o valor "Renan x Isaias"
      E usuário informa que não é urgente
      E usuário informa que tem arbitramento
      E usuário informa assistente_social com o valor "Maria"
      E usuário informa data_entrada com o valor "2019-12-07"
      E usuário informa data_saida com o valor "2020-12-07"
      E usuário informa data_agendamento com o valor "2020-09-01"
      E usuário informa status com o valor "concluida"
      E usuário informa observacao com o valor "Melhores praticas"


    Cenario: Salvar um processo com post
      Quando o usuário clicar em Salvar
      Então usuário deveria ver a mensagem de "salvo com sucesso"

    Cenario: Mostrar um processo
      Quando o usuário clicar em Salvar
      E usuário querer ver a informação do cadastro
      Então usuário deveria ver a mensagem de "sucesso"
      E usuário pode ver vara com o valor "Santo Andre"
      E usuário pode ver numero_processo com o valor "256789"
      E usuário pode ver natureza com o valor "Civil"
      E usuário pode ver partes com o valor "Renan x Isaias"
      E usuário pode ver urgente com o valor "N"
      E usuário pode ver arbitramento com o valor "S"
      E usuário pode ver assistente_social com o valor "Maria"
      E usuário pode ver data_entrada com o valor "2019-12-07"
      E usuário pode ver data_saida com o valor "2020-12-07"
      E usuário pode ver data_agendamento com o valor "2020-09-01"
      E usuário pode ver status com o valor "concluida"
      E usuário pode ver observacao com o valor "Melhores praticas"

    Cenario: Atualizar um processo com PUT
      Quando o usuário clicar em Salvar
      E usuário informa vara com o valor "Sao Bernardo"
      E usuário informa numero_processo com o valor "324567"
      E usuário informa natureza com o valor "Trabalhista"
      E usuário informa partes com o valor "Vale x Renan"
      E usuário informa que não é urgente
      E usuário informa que tem arbitramento
      E usuário informa assistente_social com o valor "Jose"
      E usuário informa data_entrada com o valor "2019-11-07"
      E usuário informa data_saida com o valor "2020-11-07"
      E usuário informa data_agendamento com o valor "2020-07-01"
      E usuário informa status com o valor "em andamento"
      E usuário informa observacao com o valor "Impossivel vencer"
      E usuário clica no botão salvar novamente
      Então usuário deveria ver a mensagem de "sucesso"
      E usuário pode ver vara com o valor "Sao Bernardo"
      E usuário pode ver numero_processo com o valor "324567"
      E usuário pode ver natureza com o valor "Trabalhista"
      E usuário pode ver partes com o valor "Vale x Renan"
      E usuário pode ver urgente com o valor "N"
      E usuário pode ver arbitramento com o valor "S"
      E usuário pode ver assistente_social com o valor "Jose"
      E usuário pode ver data_entrada com o valor "2019-11-07"
      E usuário pode ver data_saida com o valor "2020-11-07"
      E usuário pode ver data_agendamento com o valor "2020-07-01"
      E usuário pode ver status com o valor "em andamento"
      E usuário pode ver observacao com o valor "Impossivel vencer"

    Cenario: Remover um processo
      Quando o usuário clicar em Salvar
      E usuário clica no botão apagar
      Então usuário deveria ver a mensagem de "Sem conteúdo"

    @ignore
    Cenario: Para Ignorar
      Quando o usuário clicar em Salvar
      E usuário clica no botão apagar
      Então usuário deveria ver a mensagem de "Apagou"

    Esquema do Cenario: Processo salvo
      Quando o usuário clicar em Salvar
      Então usuário deveria ver a mensagem de "<resposta>"
      Exemplos:
      |resposta |
      |salvo com sucesso |

#language: pt
  Funcionalidade: Processo CRUD
    Cenario: Salvar um processo com post
      Dado que o usuário gostaria de salvar um processo
      E usuário informa vara com o valor "Santo André"
      E usuário informa numero_processo com o valor "256789"
      E usuário informa natureza com o valor "Cívil"
      E usuário informa partes com o valor "Renan x Isaias"
      E usuário informa que não é urgente
      E usuário informa que tem arbitramento
      E usuário informa assistente_social com o valor "Maria"
      E usuário informa data_entrada com o valor "2019-12-07"
      E usuário informa data_saida com o valor "2020-12-07"
      E usuário informa data_agendamento com o valor "2020-09-01"
      E usuário informa status com o valor "concluída"
      E usuário informa observacao com o valor "Melhores práticas"
      Quando o usuário clicar em Salvar
      Então usuário deveria ver a mensagem de "salvo com sucesso"

    Cenario: Mostrar um processo
      Dado que o usuário gostaria de salvar um processo
      E usuário informa vara com o valor "Santo André"
      E usuário informa numero_processo com o valor "256789"
      E usuário informa natureza com o valor "Cívil"
      E usuário informa partes com o valor "Renan x Isaias"
      E usuário informa que não é urgente
      E usuário informa que tem arbitramento
      E usuário informa assistente_social com o valor "Maria"
      E usuário informa data_entrada com o valor "2019-12-07"
      E usuário informa data_saida com o valor "2020-12-07"
      E usuário informa data_agendamento com o valor "2020-09-01"
      E usuário informa status com o valor "concluída"
      E usuário informa observacao com o valor "Melhores práticas"
      Quando o usuário clicar em Salvar
      E usuário querer ver a informação do cadastro
      Então usuário deveria ver a mensagem de "sucesso"
      E usuário pode ver vara com o valor "Santo André"
      E usuário pode ver numero_processo com o valor "256789"
      E usuário pode ver natureza com o valor "Cívil"
      E usuário pode ver partes com o valor "Renan x Isaias"
      E usuário pode ver urgente com o valor "N"
      E usuário pode ver arbitramento com o valor "S"
      E usuário pode ver assistente_social com o valor "Maria"
      E usuário pode ver data_entrada com o valor "2019-12-07"
      E usuário pode ver data_saida com o valor "2020-12-07"
      E usuário pode ver data_agendamento com o valor "2020-09-01"
      E usuário pode ver status com o valor "concluída"
      E usuário pode ver observacao com o valor "Melhores práticas"

    Cenario: Atualizar um processo com PUT
      Dado que o usuário gostaria de salvar um processo
      E usuário informa vara com o valor "Santo André"
      E usuário informa numero_processo com o valor "256789"
      E usuário informa natureza com o valor "Cívil"
      E usuário informa partes com o valor "Renan x Isaias"
      E usuário informa que não é urgente
      E usuário informa que tem arbitramento
      E usuário informa assistente_social com o valor "Maria"
      E usuário informa data_entrada com o valor "2019-12-07"
      E usuário informa data_saida com o valor "2020-12-07"
      E usuário informa data_agendamento com o valor "2020-09-01"
      E usuário informa status com o valor "concluída"
      E usuário informa observacao com o valor "Melhores práticas"
      Quando o usuário clicar em Salvar
      E usuário informa vara com o valor "São Bernardo"
      E usuário informa numero_processo com o valor "324567"
      E usuário informa natureza com o valor "Trabalhista"
      E usuário informa partes com o valor "Vale x Renan"
      E usuário informa que não é urgente
      E usuário informa que tem arbitramento
      E usuário informa assistente_social com o valor "José"
      E usuário informa data_entrada com o valor "2019-11-07"
      E usuário informa data_saida com o valor "2020-11-07"
      E usuário informa data_agendamento com o valor "2020-07-01"
      E usuário informa status com o valor "em andamento"
      E usuário informa observacao com o valor "Impossível vencer"
      E usuário clica no botão salvar novamente
      Então usuário deveria ver a mensagem de "sucesso"
      E usuário pode ver vara com o valor "São Bernardo"
      E usuário pode ver numero_processo com o valor "324567"
      E usuário pode ver natureza com o valor "Trabalhista"
      E usuário pode ver partes com o valor "Vale x Renan"
      E usuário pode ver urgente com o valor "N"
      E usuário pode ver arbitramento com o valor "S"
      E usuário pode ver assistente_social com o valor "José"
      E usuário pode ver data_entrada com o valor "2019-11-07"
      E usuário pode ver data_saida com o valor "2020-11-07"
      E usuário pode ver data_agendamento com o valor "2020-07-01"
      E usuário pode ver status com o valor "em andamento"
      E usuário pode ver observacao com o valor "Impossível vencer"
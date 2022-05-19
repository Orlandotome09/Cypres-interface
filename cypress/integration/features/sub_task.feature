Feature: Sub Task

    # ./node_modules/.bin/cypress-tags run -e TAGS='@teste'
    # npx cypress open
    # npm run cypress:run

    Background: acessar ToDo App
        Given acesso ao ToDo App


    @subTasks
    Scenario: Visualizo o botao Manage Subtasks
        When Clicar sobre o link My tasks
        And solicito a inserção da task "TesteQAbotao" pelo botao
        Then Visualizo o botao "(0) Manage Subtasks"

    Scenario: Visualizo mais de uma subtarefa
        When Clicar sobre o link My tasks
        And solicito a inserção da task "TesteQAbotao" pelo botao
        And solicito a inserção da subTask "test"
        Then Visualizo o botao "(1) Manage Subtasks"
    @bug
    Scenario: Visualizo o ID e o campo da descrição
        When Clicar sobre o link My tasks
        And solicito a inserção da task "TesteQAbotao" pelo botao
        And solicito a abertura do modal
        Then Visualizo o ID
        And o campo de leitura
    @bug
    Scenario: Inserção de uma subtask
        When Clicar sobre o link My tasks
        And solicito a inserção da task "TesteQAbotao" pelo botao
        And solicito a inserção da subTask "test"
        Then visualizo a subTask "test" na lista
    @bug
    Scenario: Inserir uma nova Subtask e com 251 caracteres
        When Clicar sobre o link My tasks
        And solicito a inserção da task "TesteQAbotao" pelo botao
        And solicito a inserção da subTask "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"
        Then devo visualizar uma mensagem de erro
    @bug
    Scenario: Inserir uma nova Subtask sem descrição e data
        When Clicar sobre o link My tasks
        And solicito a inserção da task "TesteQAbotao1" pelo botao
        And solicito a inserção da subTask sem a descrição ""
       # Then devo visualizar uma mensagem de erro 
        Then visualizo o empty


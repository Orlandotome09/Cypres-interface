Feature: My Task

    # ./node_modules/.bin/cypress-tags run -e TAGS='@teste'
    # npx cypress open
    # npm run cypress:run

    Background: acessar ToDo App
        Given acesso ao ToDo App


    @myTasks
    Scenario: Visualizo o link My tasks na tela inicial
        Then visualizo  o link My tasks

    Scenario: Visualizo o link My tasks na tela my tasks
        When Clicar sobre o link My tasks
        Then visualizo  o link My tasks

    Scenario: Visualizo o link My tasks na tela report de Bug
        When Clicar sobre o botao candiate Instructions
        And Clicar sobre o botao de bugs
        Then visualizo  o link My tasks

    Scenario: Visualizo o link My tasks na tela User stories
        When Clicar sobre o botao candiate Instructions
        And sobre o botao de user stories
        Then visualizo  o link My tasks
    @bug
    Scenario: Visualizo mensagem na parte superior da tela
        When Clicar sobre o link My tasks
        Then visualizo a mensagem Hey Orlando Tomé, this is your todo list for today

    Scenario: Inserir uma nova Task com enter
        When Clicar sobre o link My tasks
        And solicito a inserção da task "TesteQA" pela tecla enter
        Then visualizo a task "TesteQA" na lista

    Scenario: Inserir uma nova task com Botao
        When Clicar sobre o link My tasks
        And solicito a inserção da task "TesteQAbotao" pelo botao
        Then visualizo a task "TesteQAbotao" na lista
    @bug
    Scenario: Inserir uma nova Task com enter e com dois caracteres
        When Clicar sobre o link My tasks
        And solicito a inserção da task "Te" pela tecla enter
        Then visualizo a task "Te" na lista
    @bug
    Scenario: Inserir uma nova task com Botao e com dois caracteres
        When Clicar sobre o link My tasks
        And solicito a inserção da task "T1" pelo botao
        Then visualizo a task "T1" na lista
    @bug
    Scenario: Inserir uma nova Task com enter e com 251 caracteres
        When Clicar sobre o link My tasks
        And solicito a inserção da task "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" pela tecla enter
        Then visualizo a task "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" na lista
    @bug
    Scenario: Inserir uma nova task com Botao e com 251 caracteres
        When Clicar sobre o link My tasks
        And solicito a inserção da task "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab" pelo botao
        Then visualizo a task "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab" na lista




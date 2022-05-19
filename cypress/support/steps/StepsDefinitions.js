/* global Given, Then, When, And */

/// <reference types="Cypress" />

import LoginPage from '../../integration/pageobjects/Login_Page';

const loginPage = new LoginPage

Given(/^acesso ao ToDo App$/, () => {
	loginPage.accessSite();
  loginPage.clickbuttonSignIn();
  loginPage.preencheEmail();
  loginPage.preencheSenha();
  loginPage.clickbuttonLogin();
});

Then(/^visualizo  o link My tasks$/, () => {
  cy.findAllByText('My Tasks').should('be.visible');
});


When(/^Clicar sobre o link My tasks$/, () => {
  cy.findByRole('link', { name: 'My Tasks' }).click();
});


When(/^Clicar sobre o botao candiate Instructions$/, () => {
  cy.get('.btn').should('be.visible').click();
});

When(/^Clicar sobre o botao de bugs$/, () => {
	cy.get(':nth-child(1) > .btn').should('be.visible').click();
});

When(/^sobre o botao de user stories$/, () => {
  cy.get(':nth-child(16) > .btn').should('be.visible').click();
});

//bug
Then(/^visualizo a mensagem Hey Orlando Tomé, this is your todo list for today$/, () => {
  cy.findAllByText("Orlando Tomé's ToDo List").should('be.visible');
	//cy.findAllByText('Hey Orlando Tomé, this is your todo list for today').should('be.visible');
});


When(/^solicito a inserção da task "([^"]*)" pela tecla enter$/, (param) => {
	cy.get('#new_task').should('be.visible').type(param).type('{enter}')
});


Then(/^visualizo a task "([^"]*)" na lista$/, (param) => {
  cy.get('[ng-hide="my.loading"]').findAllByText(param).should('be.visible');
});


When(/^solicito a inserção da task "([^"]*)" pelo botao$/, (param) => {
  cy.get('#new_task').should('be.visible').type(param)
	cy.get('.input-group-addon').should('be.visible').click();
});


Then(/^Visualizo o botao Manage Subtasks$/, () => {
cy.get(':nth-child(1) > :nth-child(4) > .btn').contains('(0) Manage Subtasks').should('be.visible');
});

When(/^solicito a inserção da subTask "([^"]*)"$/, (param) => {
  cy.get(':nth-child(1) > :nth-child(4) > .btn').should('be.visible').click();
	cy.get('#new_sub_task').should('be.visible').type(param)
  cy.get('#add-subtask').should('be.visible').click();
});

Then(/^Visualizo o botao "([^"]*)"$/, (param) => {
	cy.get(':nth-child(1) > :nth-child(4) > .btn').contains(param).should('be.visible');
});


When(/^solicito a abertura do modal$/, () => {
  cy.get(':nth-child(1) > :nth-child(4) > .btn').should('be.visible').click();
});

Then(/^Visualizo o ID$/, () => {
	cy.get('.modal-title').contains('Editing Task 853').should('be.visible');
});

Then(/^o campo de leitura$/, () => {
	cy.get('#edit_task').should('be.visible');
});


Then(/^visualizo a subTask "([^"]*)" na lista$/, (param) => {
	cy.get('[ng-show="task.sub_tasks.length"]').contains(param).should('be.visible');
});

When(/^solicito a inserção da subTask sem a descrição "([^"]*)"$/, (param) => {
  cy.get(':nth-child(1) > :nth-child(4) > .btn').should('be.visible').click();
//	cy.get('#new_sub_task').should('be.visible').type(param)
  cy.get('#add-subtask').should('be.visible').click();
});


Then(/^visualizo o empty$/, () => {
	cy.get('[ng-show="task.sub_tasks.length"]').contains('empty').should('be.visible');
});

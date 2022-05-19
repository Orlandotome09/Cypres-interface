/// <reference types="Cypress" />

import AccessingComplianceMonitoramentoElements from '../elements/Login_Elements'
const accessingElements = new AccessingComplianceMonitoramentoElements
const url = Cypress.config("baseUrl")

class My_task {
    
    accessSite() {
        cy.visit(url)
    }
   

    clickbuttonSignIn(){
        cy.get(accessingElements.buttonSignIn()).click();
    }


    preencheEmail(){
        cy.get(accessingElements.email()).should('be.visible').type('orlandotome09@yahoo.com.br')
    }


    preencheSenha(){
        cy.get(accessingElements.password()).should('be.visible').type('acteste@2022')
    }

    clickbuttonLogin(){
    cy.get(accessingElements.buttonNextPassword()).click();

    }


}

export default My_task;

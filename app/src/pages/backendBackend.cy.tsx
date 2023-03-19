import React from 'react'
import Backend from './backend'

describe('<Backend />', () => {
  it('renders', () => {
    // see: https://on.cypress.io/mounting-react
    cy.mount(<Backend />)
  })
})
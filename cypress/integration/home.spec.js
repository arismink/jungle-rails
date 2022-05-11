describe('Homepage testing', () => {
  it("should visit root", () => {

  }) 

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

})

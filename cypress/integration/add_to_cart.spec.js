describe('Add to Cart testing', () => {
  beforeEach(() => {
    cy.visit('/')
  });
  
  it("should visit root", () => {

  });

  it("can add a product to cart", () => {
    cy.get(".products article").should("be.visible");
    
    // add item to cart
    cy.contains("Add").click({force: true});
    
    // check if cart qty increased by 1 and contains item added
    cy.contains("My Cart").should("include.text", "1")

  });



})

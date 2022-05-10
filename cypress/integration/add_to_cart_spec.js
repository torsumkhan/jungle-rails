describe("visit product page ", () => {
  beforeEach(() => {
    cy.visit("http://localhost:3000/");
  });

  it("click on item , cart should contain 1 item ", () => {
    cy.get(".products > article:first-child .button_to > .btn").click({
      force: true,
    });
    cy.get(
      "#navbarSupportedContent > .navbar-nav:nth-child(2) > .nav-item:nth-child(2) .nav-link"
    ).contains(1);
  });

  it("click on item , cart should contain 1 item ", () => {
    cy.get(".products > article:first-child .button_to > .btn").click({
      force: true,
    });
    cy.get(
      "#navbarSupportedContent > .navbar-nav:nth-child(2) > .nav-item:nth-child(2) .nav-link"
    ).contains(1);
    cy.get(
      "#navbarSupportedContent > .navbar-nav:nth-child(2) > .nav-item:nth-child(2) .nav-link"
    ).click();
  });
});

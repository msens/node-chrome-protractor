describe('Test Dialog on the spot scherm', function() {
  it('should have a title', function() {
    browser.get('http://lx13ft.pl.ing-ad:8080/dist/dist/index.html#/dealshaping/customerSelect');

    expect(browser.getTitle()).toEqual('Dialog - On the spot');
  });
});
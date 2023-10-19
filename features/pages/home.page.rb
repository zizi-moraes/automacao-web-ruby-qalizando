class HomePage < SitePrism::Page
  set_url ''
  element :userName, '.ember-view.block > div:nth-child(2)'
  element :navBarHome, '#global-nav > div > nav > ul > li:nth-child(1) > a > span'
  element :myIcon, :id, 'ember15' 

  def checkLogInSuccessful
    expect(userName.text).to eql 'Zilmar Moraes'
    expect(navBarHome.text).to eql 'Início'
    expect(myIcon.text).to eql 'Eu'
  end
end
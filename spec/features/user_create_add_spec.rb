require 'rails_helper'

 feature 'User create Ad' do
   scenario 'successfully' do
     user = create(:user)
     login_as(user)

     visit root_path
     click_on 'Criar Anuncio'

     fill_in 'A oferecer', with: 'Quero aprender Ruby on Rails!'
     fill_in 'A Aprender', with: 'sei python'
     fill_in 'Meeting', with: 'presencial'
     fill_in 'Periodo', with: 'Manha'
     fill_in 'Localizacao', with: 'Sao paulo'
     fill_in 'Quando', with: 'um mes'

     click_on 'Enviar'

     # expect strang things
     expect(page).to have_css('h1', text: 'Quero aprender Ruby on Rails!')
     expect(page).to have_css('dl', text: 'sei python')
     expect(page).to have_css('dl', text: 'presencial')
     expect(page).to have_css('dl', text: 'Manha')
     expect(page).to have_css('dl', text: 'Sao paulo')
     expect(page).to have_css('dl', text: 'um mes')
   end
 end

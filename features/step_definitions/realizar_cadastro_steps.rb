Dado(/^que estou na pagina de cadastro$/) do
  visit 'http://demoqa.com/registration/'
end

Quando(/^realizo o cadastro com os meus dados$/) do
  fill_in('first_name', :with=>'Luisa')
  fill_in('last_name', :with=>'Sauerbronn')
  find("input[value='single']").click
  find("input[value='reading']").click
  select('Brazil', :from=>'dropdown_7')
  select('9', :from=>'mm_date_8')
  select('16', :from=>'dd_date_8')
  select('1989', :from=>'yy_date_8')
  fill_in('phone_9', :with=>'5511982185776')
  fill_in('username', :with=>'luisa.sauer')
  fill_in('e_mail', :with=>'luisa.sauerbronn@gmail.com')
  fill_in('description', :with=>'teste123')
  fill_in('password', :with=>'teste123')
  fill_in('confirm_password_password_2', :with=>'teste123')
  click_button('Submit')

end

Entao(/^vejo a mensagem de sucesso$/) do
  assert_text('Thank you for your registration')
end


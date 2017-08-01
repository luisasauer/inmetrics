Dado(/^que eu estou logado$/) do
  visit 'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername', :with=>'Admin')
  fill_in('txtPassword', :with=>'admin')
  click_button('LOGIN')
  assert_text('Welcome Admin')
end

Quando(/^realizo o cadastro com as informações do empregado$/) do
  find("a[id='menu_admin_viewAdminModule']").click
  click_button('btnAdd')
  find("select[id='systemUser_userType']").select "ESS"
  fill_in('systemUser_employeeName_empName', :with=>'Fiona Grace')
  fill_in('systemUser_userName', :with=>'fiona.grace')
  find("select[id='systemUser_status']").select "Enabled"
  fill_in('systemUser_password', :with=>'123456')
  fill_in('systemUser[confirmPassword]', :with=>'123456')
  click_button('btnSave')

end

Entao(/^vejo o empregado cadastrado com sucesso$/) do
    assert_text('Fiona Grace')
end

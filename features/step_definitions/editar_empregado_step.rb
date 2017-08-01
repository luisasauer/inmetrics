Quando(/^altero as informações de um empregado$/) do
  find("a[id='menu_admin_viewAdminModule']").click
  fill_in('searchSystemUser_userName', :with=>'fiona.grace')
  click_button('searchBtn')
  click_link('fiona.grace')
  click_button('btnSave')
  fill_in('systemUser_userName', :with=>'fiona.gracesilva')
  find("select[id='systemUser_status']").select "Disabled"
  click_button('btnSave')
end

Entao(/^as informações são atualizadas$/) do
    assert_text('fiona.gracesilva')
end

Given(/^I am on Discord login page$/) do
  @pages.login.load_home_page
end

And(/^I login as (.*)/) do |user|

  file = YAML.load_file('config/test_data.yml')
  
  case user
  
  when 'user1' then
  
    $user_manager.current_user = 'user1'
  
    @pages.login.fill_form(file['user1'])
  
  sleep 1
  
  when 'user2' then
  
    $user_manager.current_user = 'user2'
  
    @pages.login.fill_form(file['user2'])
  
  else
    raise 'Login is not correct!'
  end
end

And(/^I click on skip the tutorial/) do
  if page.should have_selector(:xpath, "//*[text()='Skip']")
    @pages.login.skipButton.click
  else
    puts 'Skip button is invisible'
  end
end

Then (/^I see that login was successful$/) do
  @pages.home.homeButton.visible?
  @pages.home.userSettings.visible?
  @pages.home.friendsTab.visible?
end

And(/^I log out from Discord App$/) do
  @pages.home.userSettings.click
  @pages.home.logOutButton.click
  @pages.home.logOutConfirm.click
  sleep 2
end

Then (/^I have successfully logged out$/) do
  @pages.login.email.visible?
end
require_relative '../../features/pages/base'
# Home page class
class HomePage < BasePage
  attr_accessor :email, :password, :loginButton, :skipButton, :homeButton, :friendsTab, :friendTag, :voiceCallButton
  attr_accessor :chatMessageInput, :leaveCallButton, :userSettings, :logOutButton

  def initialize

    @homeButton = Element.new(:css,"[aria-label='Home']")

    @friendsTab = Element.new(:xpath,"//div[text()='Friends']")

    @friendTag = Element.new(:xpath,"//span[text()='#']")  

    @voiceCallButton = Element.new(:css,"[aria-label='Start Voice Call']")

    @leaveCallButton = Element.new(:xpath,"//div[text()='Leave Call']")
  
    @chatMessageInput = Element.new(:xpath,"//TextArea")

    @userSettings = Element.new(:css,"[aria-label='User Settings']")

    @logOutButton = Element.new(:xpath,"//div[@role = 'button'][contains(text(), 'Log Out')]")

    @logOutConfirm = Element.new(:xpath,"//button//div[text()='Log Out']")
  end

  def fill_form(user)
    @email.visible?
    @email.click
    @email.send_keys user['email']
    @password.click
    @password.send_keys user['password']
    @loginButton.click
  end

  def load_home_page
    visit ''
  end
end
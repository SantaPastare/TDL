require_relative '../../features/pages/base'
# Home page class
class HomePage < BasePage
  attr_accessor :homeButton, :friendsTab, :friendTag, :voiceCallButton, :statusMenu, :statusInvisible, :statusOnline
  attr_accessor :chatMessageInput, :leaveCallButton, :userSettings, :logOutButton, :logOutConfirm 

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

    @statusMenu = Element.new(:css, "[aria-expanded='false']")
  end
end
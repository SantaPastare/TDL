require_relative '../../features/pages/base'
# Login page class
class LoginPage < BasePage
  attr_accessor :email, :password, :loginButton, :skipButton, :homeButton

  def initialize
    @email = Element.new(:css, "[aria-label='Email']")
    @password = Element.new(:css, "[aria-label='Password']")

    #@loginButton = Element.new(:xpath,"//button//div[text()='Login']")
    @loginButton = Element.new(:xpath, "//div[text()='Login']")
    @skipButton = Element.new(:xpath, "//*[text()='Skip']")

    @homeButton = Element.new(:css, "[aria-label='Home']")

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
    @email.visible?
    @password.visible?
    @loginButton.visible?
  end
end
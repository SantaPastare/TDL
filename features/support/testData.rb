class UserManager
  attr_accessor :current_user, :current_status
  def initialize
    @current_user = nil
    @current_status = nil
  end
end
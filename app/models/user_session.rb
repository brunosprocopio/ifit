class UserSession
  include ActiveModel::Model

  attr_accessor :user, :password
  validates_presence_of :user, :password

  def initialize(session, attributes={})
    @session = session
    @user = attributes[:user]
    @password = attributes[:password]
  end

  def authenticate!
    user = Usuario.authenticate(@user, @password)
    if user.present?
      store(user)
      true
    else
      errors.add(:base, :invalid_login)
      false
    end
  end

  def store(user)
    @session[:current_user_id] = user[1]
  end
end
class Users::RegistrationsController < Devise::RegistrationsController

  def new
    @user = User.new
    @address = @user.build_address
  end

  def create
    super
    user = User.new(configure_permitted_parameters)
    user.save
  end

end


class AppScreens < BaseScreen

  def login_screen
    @login ||= page(LoginScreen)
  end

  def create_account_screen
    @create_account ||= page(CreateAccountScreen)
  end

  def home_screen
    @home ||= page(HomeScreen)
  end

end

class HomeScreen < BaseScreen

  trait(:trait) { "AppCompatButton id:'#{btn_login}'" }

  element(:btn_login) { 'btn-login' }

  action(:touch_btn_login) { touch("AppCompatButton id:'#{btn_login}'", :timeout => 3) }

  def submit_form
    touch("AppCompatButton id:'#{btn_login}'", :timeout => 3)
  end

end

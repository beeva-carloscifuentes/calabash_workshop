class LoginScreen < BaseScreen

  trait(:trait) { "AppCompatButton id:'#{btn_login}'" }

  element(:btn_login) { 'btn_login' }
  element(:input_email) { 'input_email' }

  action(:touch_btn_login) { touch("AppCompatButton id:'#{btn_login}'", :timeout => 3) }
  action(:touch_input_email) { touch("EditText id:'#{input_email}'", :timeout => 3) }

  def submit_form
    touch("AppCompatButton id:'#{btn_login}'", :timeout => 3)
  end

end

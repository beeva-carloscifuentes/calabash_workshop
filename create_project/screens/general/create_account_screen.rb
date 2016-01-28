class CreateAccountScreen < BaseScreen

  trait(:trait) { "#{WEBVIEW} css:'*[id=#{btn_continue_otp}]'" }

  element(:btn_submit) { 'btn-submit' }

  action(:touch_btn_edit) { touch("#{WEBVIEW} css:'*[data-qa=#{btn_edit}]'", :timeout => 3) }

  def submit_form
    evaluate_javascript("#{WEBVIEW}", "return $('[data-qa=#{btn_submit}]').click()")
  end

end

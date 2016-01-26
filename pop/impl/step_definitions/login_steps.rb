
Then(/^I touch the (login button|username input)$/) do |type|

    if (type.eql? 'login button')
      @screen.login_screen.touch_btn_login
    elsif (type.eql? 'username input')
      @screen.login_screen.touch_input_email
    end

end
# alias step
And(/^touch the login button"$/) do macro %Q[I touch the login button] end

require 'calabash-android/calabash_steps'

Then(/^I check text "(.*?)"$/) do |text|

  max = 10
  i = 1

  # error_text = evaluate_javascript("webView", "return $('iframe').contents().find('.alert_error').text()")[0]

  while query("webView css:'*'").find { |x| x["textContent"] =~ /#{text}/ }.nil? and i <= max
    sleep(1)
    i += 1
  end

  if query("webView css:'*'").find { |x| x["textContent"] =~ /#{text}/ }.nil?
    raise "Text '#{text}' not found"
  end

end
# alias step
Then(/^check text "(.*?)"$/) do |text| macro %Q[I check text "#{text}"] end

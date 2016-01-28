
Then(/^I check (error text|text) "(.*?)"$/) do |type,text|

  max = 10
  i = 1

  while query("webView css:'*'").find { |x| x["textContent"] =~ /#{text}/ }.nil? and i <= max
    sleep(1)
    i += 1
  end

  if query("webView css:'*'").find { |x| x["textContent"] =~ /#{text}/ }.nil?
    raise "Text '#{text}' not found"
  end

end
# alias step
Then(/^check (error text|text) "(.*?)"$/) do |type,text| macro %Q[I check #{type} "#{text}"] end



Then(/^I check input validation error "(.*?)"$/) do |text|

  max = 10
  i = 1

  while !query("TextView", :text).first.eql? "#{text}" and i <= max
    sleep(1)
    i += 1
  end

  if !query("TextView", :text).first.eql? "#{text}"
    raise "Text '#{text}' not found"
  end

end
# alias step
Then(/^check input validation error "(.*?)"$/) do |text| macro %Q[I check input validation error "#{text}"] end

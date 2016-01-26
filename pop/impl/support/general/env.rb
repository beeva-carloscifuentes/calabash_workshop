require 'rspec'
require 'date'
require 'require_all'
require 'rake'
require 'byebug'
require 'colorize'
require 'active_support/all'

if ENV['PLATFORM'] == 'ios'
  require 'calabash-cucumber/cucumber'
  require 'calabash-cucumber/calabash_steps'
  require_relative '../../screens/ios/base_screen'
elsif ENV['PLATFORM'] == 'android'
  require 'calabash-android/cucumber'
  require 'calabash-android/calabash_steps'
  require_relative '../../screens/android/base_screen'
end

# WebView, xWalkView
WEBVIEW = 'WebView'

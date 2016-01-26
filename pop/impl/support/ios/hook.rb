
Before do
  @screen = page(AppScreens)

  @mdl = MockDataLoader.new(ENV['SANDBOX_URL'])
  @mdl.reset_mock_layer()
  p '***** RESET vSANDBOX DATA *****'

end

Before('@reinstall_app') do
    uninstall_apps
    install_app(ENV["TEST_APP_PATH"])
    install_app(ENV["APP_PATH"])
end


Before do |scenario|
  @screen = page(AppScreens)

  printf "#{scenario.source_tag_names} [#{scenario.name}] => ".light_green
  #Colores disponibles en gema colorize: https://github.com/fazibear/colorize/blob/master/lib/colorize/class_methods.rb

end

After do |scenario|

  if scenario.failed?
    printf "[KO] [#{scenario.exception.message}]\n[#{scenario.inspect}]\n".red
  elsif scenario.passed?
    printf "[OK]\n".green
  end

end

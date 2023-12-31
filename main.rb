require 'date'
require './app'

def main
  app = App.new
  menu = Menu.new
  # display menu for the user
  loop do
    menu.display_menu
    option = gets.chomp.to_i
    break if menu.process_option(option, app)
  end
end

main

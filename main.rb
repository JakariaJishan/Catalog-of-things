require_relative 'app'

def main
  puts 'Welcome to Catalog things app'
  puts ''

  app = App.new
  app.start
end

main

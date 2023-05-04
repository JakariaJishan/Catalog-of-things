require_relative '../app'
require 'set'

module AuthorModule
  def list_author
    if @authors.empty?
      puts 'The list is empty'
      puts ''
      start
    end
    authors = Set.new
    @authors.each do |author|
      authors << author
    end
    authors.each do |author|
      puts "- #{author.first_name} #{author.last_name}"
    end
    puts ''
    start
  end
end

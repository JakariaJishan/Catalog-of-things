require_relative '../app'
require 'set'

module LableModule
  def list_all_labels
    if @labels.empty?
      puts 'The list is empty'
      puts ''
      start
    end
    no_duplicate_label = Set.new
    @labels.each do |label|
      no_duplicate_label << label
    end
    no_duplicate_label.each do |label|
      puts "- Title: #{label.title}, Color: #{label.color}"
    end
    puts ''
    start
  end
end

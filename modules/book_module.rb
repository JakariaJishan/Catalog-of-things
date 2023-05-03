require_relative '../app'
require_relative '../classes/book'
require_relative '../classes/label'
module BookModule
    def add_book
        print 'Enter the label title: '
        title = gets.chomp

        print 'Enter the label color: '
        color = gets.chomp

        print 'Enter the publish date (dd/mm/yyyy) : '
        publish_date = gets.chomp

        print 'Enter the publisher: '
        publisher = gets.chomp

        print 'Enter the cover state (good/bad/something else) : '
        cover_state = gets.chomp

        label = Label.new(title,color)
        book = Book.new(publisher, cover_state, publish_date)

        book.label = label
        @books << book

        puts @books.inspect

        puts "Book added successfully..."
        start
    end
end
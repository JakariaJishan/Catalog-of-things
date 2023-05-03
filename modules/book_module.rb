require_relative '../app'
require_relative '../classes/book'
require_relative '../classes/label'
require 'pry'
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

        @books << book
        book.label = label

        @labels << label
        save_book_label_data
        puts "Book added successfully..."
        start
    end

    def save_book_label_data
        book_data = @books.map do |a|
          {
            id: a.id,
            publisher: a.publisher,
            publish_date: a.publish_date,
            cover_state: a.cover_state,
            label_title: a.label.title,
            label_color: a.label.color
          }
        end
        File.write('./data/books.json', JSON.pretty_generate(book_data))
        label_data = @labels.map { |g| { id: g.id, title: g.title, color: g.color } }
        File.write('./data/labels.json', JSON.pretty_generate(label_data))
    end

    def list_all_books
        if @books.empty?
          puts 'The list is empty'
          puts ''
          start
        end
        @books.each do |book|
          puts "Book publisher: #{book.publisher}, cover state: #{book.cover_state}"
        end
        puts ''
        start
    end
end
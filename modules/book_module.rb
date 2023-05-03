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
            genre: a.label.title
          }
        end
        File.write('./data/books.json', JSON.pretty_generate(book_data))
        
        label_data = @labels.map { |g| { id: g.id, title: g.title } }
        File.write('./data/labels.json', JSON.pretty_generate(label_data))
      end
end
require_relative '../app'

def list_all_books
    @books.each do |x|
        puts 'all list'
        puts x.empty?
    end

    start
end

def list_all_labels

    puts 'all labels'
    start
end

def add_book
    puts 'books'
    start
end
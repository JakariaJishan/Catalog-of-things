require_relative 'item'

class Book < Item
    attr_accessor :publisher, :cover_state

    def initialize(publisher,cover_state, date, archived = 0)
        super(date, archived)
        @publisher = publisher
        @cover_state = cover_state
    end

    def can_be_archived?

    end
end
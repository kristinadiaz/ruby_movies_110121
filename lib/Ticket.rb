class Ticket

    attr_accessor :name, :title, :price

    def initialize(name, title)
        @name = name
        @title = title
        @price = 5.00
    end
end
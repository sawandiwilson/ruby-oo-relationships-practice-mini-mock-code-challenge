class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end

    def self.all 
        @@all
    end

    def books
        Book.all.select{|book| book.author == self}  
    end
            #should return all of the books an author has written

    def write_book(title, word_count)
        Book.new(self, title, word_count)
    end
            #should take arguments of a title and word count and make a new Book instance associated with this author

    def total_words
        all_the_words = 0
        .max {|a, b| a.total_words <=> b.total_words}
        end  
        all_the_words
    end

    def self.most_words
        word_count_array = self.all.map do |author|

    end
end


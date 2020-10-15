require 'pry'

class Author

    attr_accessor :name 

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post_title)
        post_title.author = self
    end

    def add_post_by_title(post_title)
        test = Post.new(post_title)
        test.author = self
    end

    def self.post_count
        Post.all.count
    end
end

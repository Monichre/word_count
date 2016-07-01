class String
    define_method(:word_count) do |str|
        word_array = self.split(' ')
        return word_array.count{|word| word == str}
    end
end

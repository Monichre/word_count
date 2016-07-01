require('rspec')
require('word_count')

describe('String#word_count') do
  it('returns the number the number of times a word appears in a given string') do
    expect(('the arsonist had oddly shaped feet').word_count('the')).to(eq(1))
  end
end

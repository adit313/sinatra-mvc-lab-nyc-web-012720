class PigLatinizer

  def piglatinize(string)
    a = string.scan(/[A-Za-z]+/)
    result = []
    b = a.each {|word| result << piglatinize_word(word)}
    c = result.join(" ")
    return c
  end

  def piglatinize_word(word)
    parsed_word = word.scan(/\w/)
    vowels = ['a', 'e', 'i', 'o', 'u']
    first_syllable = []
    if vowels.include?(parsed_word[0].downcase)
      return "#{word}way"
    else
      while !vowels.include?(parsed_word[0].downcase)
        first_syllable << parsed_word.shift
      end
      return (parsed_word.join('') + first_syllable.join('') + 'ay')
    end
  end
end
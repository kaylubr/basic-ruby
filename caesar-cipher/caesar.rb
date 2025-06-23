def caesar_cipher(word, key)
  characters = word.split("")

  encrypted = characters.map do |character|
    unless character.downcase >= 'a' && character.downcase <= 'z'
      next character
    end

    base = character.ord < 97 ? 65 : 97
    value = ((character.ord + key) - base) % 26 + base
    value.chr
  end

  encrypted.join
end

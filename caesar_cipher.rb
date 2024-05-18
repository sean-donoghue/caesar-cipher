def caesar_cipher(string, factor)
  string.chars.map do |char|
    ord = char.ord

    min_ord, max_ord = ord.between?(65, 90) ? [65, 90] : [97, 122] # Account for uppercase and lowercase letters

    if ord.between?(min_ord, max_ord) then # Only shift letters
      ord += factor % 26 # Limit factor to 0..25 (number of letters - 1)
      ord = ord > max_ord ? ord - 26 : ord # Ensure wrap-around from Z->A, z->a
    end

    ord.chr
  end.join
end

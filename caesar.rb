



def caesar_cipher(string, key_cipher)
    upcase_range = (65..90)
    lower_range = (97..122)
    new_word = ''
    string.each_char do |letter|
        ascii_number = letter.ord 
        if upcase_range.include?(letter.ord) or lower_range.include?(letter.ord)

            key_cipher %= 26
            ascii_number -= key_cipher

            if upcase_range.include?(letter.ord) and ascii_number < 65
                ascii_number += 25
            elsif lower_range.include?(letter.ord) and ascii_number < 97
                ascii_number += 25
            end
        end
        new_word += ascii_number.chr
    end
    new_word
end


puts caesar_cipher("What a string!", 50)
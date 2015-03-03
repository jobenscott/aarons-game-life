


class Encryptor
  def cipher(rotation)
    characters = ("a".."z").to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end
  
  #def chifer2
    #("a".."z").to_a.rotate(8)
  #end

  def encrypt_letter(letter, rotation)
		
	end

  #def encrypt_letter_2(letter)
    #lowercase_letter = letter.downcase
    #cipher2[lowercase_letter]
  #end

  def encrypt_string(string, rotation)
    
    # if string.length > 4
    #   temporary_array = string.split("")

    #   second_half = temporary_array[4..string.length-1]
    # end

    letters = string.split("")
    




  	letters.collect! do |letter|
  		letter = encrypt_letter(letter, rotation)    
  	end
  	letters.join
  end




end
	

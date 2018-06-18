require './data/constants'

# Decryptor decrypts
# encrypted message
# using cipher
# it returns decrypted message
class Decryptor
  attr_reader :cipher, :message

  def initialize(cipher, message)
    @cipher = cipher
    @message = message
    @constant = Constants::ALPHABET
  end

  def decrypt
    decrypted_char_array.join
  end

  def self.call(cipher:, message:)
    new(cipher, message).decrypt
  end

  private

  def decrypted_char_array
    message.split('').inject([]) do |char_array, character|
      index = cipher.index(character)
      char_array << (index ? @constant[index] : character)
    end
  end
end

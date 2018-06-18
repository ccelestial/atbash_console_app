require './lib/decryptor'

cipher = 'oephjizkxdawubnytvfglqsrcm'
message = 'knlfgnb, sj koqj o yvnewju'

puts "CIPHER: '#{cipher}'"
puts "ENCRYPTED TEXT: '#{message}'"

output = Decryptor.(cipher: cipher, message: message)
puts "OUTPUT: '#{output}'"

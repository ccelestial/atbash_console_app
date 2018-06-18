require 'spec_helper'
require 'decryptor'

describe Decryptor do
  context 'accepts encrypted text and cipher then decrypt the message' do
    it 'should return decrypted text from \'zodvqukgwefbyitmrsplhacxnj\'' do
      cipher = 'zodvqukgwefbyitmrsplhacxnj'
      encrypted_text = 'dzs'

      expect(described_class.(cipher: cipher, message: encrypted_text)).to eq('car')
    end

    it 'should return decrypted text from \'skd qj qucbjvq?\'' do
      cipher = 'xipmuzfkbrlwotjancqgveshdy'
      encrypted_text = 'skd qj qucbjvq?'

      expect(described_class.(cipher: cipher, message: encrypted_text)).to eq('why so serious?')
    end

    it 'should return decrypted text from \'skd qj qucbjvq?\'' do
      cipher = 'oephjizkxdawubnytvfglqsrcm'
      encrypted_text = 'knlfgnb, sj koqj o yvnewju'

      expect(described_class.(cipher: cipher, message: encrypted_text)).to eq('houston, we have a problem')
    end
  end
end

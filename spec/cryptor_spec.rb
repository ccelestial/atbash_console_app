describe Cryptor do
  context 'accepts encrypted text and cipher then decrypt the message' do
    it 'should return decrypted text from \'zodvqukgwefbyitmrsplhacxnj\'' do
      cipher = 'zodvqukgwefbyitmrsplhacxnj'
      encrypted_text = 'dzs'

      expect(described_class.(cipher: cipher, message: encrypted_text)).to eq('car')
    end
  end
end

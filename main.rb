def caesar_cipher(plaintext, key=3)
  plaintext.bytes.reduce('') do |ciphertext, byte|
    encrypted_byte = byte + key % 26
    if byte.between?(65, 90) || byte.between?(97, 122)
      reference_byte = byte < 90? 65: 97
      ciphertext << (reference_byte + (byte - reference_byte + key) % 26).chr
    else
      ciphertext << byte.chr
    end
    ciphertext
  end
end

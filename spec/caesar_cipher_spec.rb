require './lib/caesar_cipher'

describe CaesarCipher do
    describe '#encrypt' do
      subject(:cipher) { CaesarCipher.new }
      context 'when the input plaintext contains only letters' do
        it 'returns valid ciphertext with a relatively small positive shift' do
          expect(cipher.encrypt('Caesar', 3)).to eq('Fdhvdu')
        end

        it 'returns valid ciphertext with a relatively small negative shift' do
          expect(cipher.encrypt('Caesar', -3)).to eq('Zxbpxo')
        end

        it 'returns valid ciphertext with a relatively large positive shift' do
          expect(cipher.encrypt('Caesar', 1099)).to eq('Jhlzhy')
        end

        it 'returns valid ciphertext with a relatively large negative shift' do
          expect(cipher.encrypt('Caesar', -1099)).to eq('Vtxltk')
        end
      end

      context 'when the input plaintext contains only letters and punctuations' do
        it 'returns valid ciphertext with a relatively small positive shift' do
          expect(cipher.encrypt('Knock knock. Who is there?', 5)).to eq('Psthp psthp. Bmt nx ymjwj?')
        end

        it 'returns valid ciphertext with a relatively small negative shift' do
          expect(cipher.encrypt('Knock knock. Who is there?', -5)).to eq('Fijxf fijxf. Rcj dn oczmz?')
        end

        it 'returns valid ciphertext with a relatively large positive shift' do
          expect(cipher.encrypt('Knock knock. Who is there?', 88193)).to eq('Lopdl lopdl. Xip jt uifsf?')
        end

        it 'returns valid ciphertext with a relatively large negative shift' do
          expect(cipher.encrypt('Knock knock. Who is there?', -88193)).to eq('Jmnbj jmnbj. Vgn hr sgdqd?')
        end

      end
    end
end

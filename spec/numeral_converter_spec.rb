require 'numeral_converter'

describe RomanNumeral do
  it { is_expected.to respond_to(:convert).with(1).argument }

  describe '#convert' do
    it 'Expected to return I for input 1' do
      expect(subject.convert(1)). to eq 'I'
    end
    it 'Expected to return II for input 2' do
      expect(subject.convert(2)). to eq 'II'
    end
    it 'Expected to return III for input 3' do
      expect(subject.convert(3)). to eq 'III'
    end
    it 'Expected to return IV for input 4' do
      expect(subject.convert(4)). to eq 'IV'
    end
    it 'Expected to return V for input 5' do
      expect(subject.convert(5)). to eq 'V'
    end
    it 'Expected to return VI for input 6' do
      expect(subject.convert(6)). to eq 'VI'
    end
    it 'Expected to return VII for input 7' do
      expect(subject.convert(7)). to eq 'VII'
    end
    it 'Expected to return VIII for input 8' do
      expect(subject.convert(8)). to eq 'VIII'
    end
    it 'Expected to return IX for input 9' do
      expect(subject.convert(9)). to eq 'IX'
    end
    it 'Expected to return X for input 10' do
      expect(subject.convert(10)). to eq 'X'
    end
    it 'Raises an error when given an argument other than Int' do
      expect { subject.convert("q") }.to raise_error 'The Input was not an Integer'
      expect {subject.convert(1.5) }.to raise_error 'The Input was not an Integer'
      expect { subject.convert([1, 2, 3]) }.to raise_error 'The Input was not an Integer'
    end
  end
end

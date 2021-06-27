require_relative '../lib/fibonacci'

describe 'fibonacci' do
  context 'fibs' do
    it 'should return an array of fibonacci numbers' do
      expect(fibs(15)).to eq(
        [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
      )
    end

    it 'should return [0] when argument num is 0' do
      expect(fibs(0)).to eq([0])
    end

    it 'should return [0, 1] when argument num is 1' do
      expect(fibs(1)).to eq([0, 1])
    end
  end

  context 'fibs_rec' do
    it 'should return an array of fibonacci numbers recursively' do
      expect(fibs_rec(15)).to eq(
        [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
      )
    end

    it 'should return [0] when argument num is 0' do
      expect(fibs_rec(0)).to eq([0])
    end

    it 'should return [0, 1] when argument num is 1' do
      expect(fibs_rec(1)).to eq([0, 1])
    end
  end
end

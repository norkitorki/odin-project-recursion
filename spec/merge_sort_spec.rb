require_relative '../lib/merge_sort'

describe 'merge_sort' do
  context 'merge_array' do
    it 'should return a sorted array from two sets' do
      expect(merge_array([2, 4, 8, 10], [1, 2, 7, 21])).to eq(
        [1, 2, 2, 4, 7, 8, 10, 21]
      )
    end
  end

  context 'merge_sort' do
    it 'should sort an array of positive integers' do
      expect(merge_sort([234, 37, 1032, 9, 5569, 37, 2325])).to eq(
        [9, 37, 37, 234, 1032, 2325, 5569]
      )
    end

    it 'should sort an array of negative integers' do
      expect(merge_sort([-24, -3, -10242, -55, -4895])).to eq(
        [-10242, -4895, -55, -24, -3]
      )
    end

    it 'should sort an array of floats' do
      expect(merge_sort([23.4, 100.0, 5734.75, 100.5, -56.0])).to eq(
        [-56.0, 23.4, 100.0, 100.5, 5734.75]
      )
    end

    it 'should sort an array of strings' do
      expect(merge_sort(%w[horse zebra ape marlin])).to eq(
        %w[ape horse marlin zebra]
      )
    end

    it 'should sort an array of symbols' do
      expect(merge_sort(%i[z car a ruby c i])).to eq(
        [:a, :c, :car, :i, :ruby, :z]
      )
    end
  end
end

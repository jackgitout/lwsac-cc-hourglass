require 'rails_helper'

RSpec.describe HourGlass, type: :model do
  subject(:hour_glass_array) { HourGlass.create }

  describe '#max_hour_glass_sum' do
    context 'when finding the largest hourglass sum through first array' do
      let(:array) do
        [
          [-9, -9, -9, 1, 1, 1],
          [0, -9, 0, 4, 3, 2],
          [-9, -9, -9, 1, 2, 3],
          [0, 0, 8, 6, 6, 0],
          [0, 0, 0, -2, 0, 0],
          [0, 0, 1, 2, 4, 0]
        ]
      end

      it 'should return 28' do
        expect(subject.max_hour_glass_sum(array)).to eq(28)
      end
    end
  end
end

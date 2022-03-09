RSpec.describe Car, type: :model do
  describe 'Database' do
    it { is_expected.to have_db_column(:brand).of_type(:string) }
    it { is_expected.to have_db_column(:model).of_type(:string) }
    it { is_expected.to have_db_column(:colour).of_type(:string) }
    it { is_expected.to have_db_column(:year).of_type(:integer) }
    it { is_expected.to have_db_column(:price).of_type(:integer) }
  end

  describe 'Factory' do
    it 'is expected to be valid' do
      expect(create(:car)).to be_valid
    end
  end
end

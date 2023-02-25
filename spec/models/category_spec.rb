require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { create(:user) }
  let(:category) { create(:category, user: user) }

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:expenditures) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
  
end

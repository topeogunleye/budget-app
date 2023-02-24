require 'rails_helper'

RSpec.describe Expenditure, type: :model do
  let(:user) { create(:user) }
  let(:category) { create(:category, user: user) }
  let(:expenditure) { create(:expenditure, author: user) }

  describe 'associations' do
    it { is_expected.to belong_to(:author).class_name('User') }
    it { is_expected.to have_and_belong_to_many(:categories) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:amount) }
    it { is_expected.to validate_numericality_of(:amount) }
  end
end

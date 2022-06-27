require 'rails_helper'

RSpec.describe Meal, type: :model do
  let(:subject) do
    create(:meal)
  end

  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:quantity) }
  it { is_expected.to respond_to(:price) }

  it 'should have a price' do
    expect(subject.price.present?).to be_truthy
  end
end

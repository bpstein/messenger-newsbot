require 'rails/helper'

describe SourceSubscription, type: :model do 
  let(:user)  { FactoryGirl.create :user }
  let(:source)  { FactoryGirl.create :source }
  let(:source_subscription)  { FactoryGirl.create :source_subscription }

  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:source_id) }
  it { should validate_presence_of(:user_id) }
  it { should belong_to(:user) }
  it { should belong_to(:source) }

  it 'creates a source subscription for a user' do 
    expect{ FactoryGirl.create(:source_subscription, user: user, source: source) }.to change{ SourceSubscription.count }.by(1)
  end
end


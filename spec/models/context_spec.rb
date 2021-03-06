require 'rails_helper'

describe Context, type: :model do 
  let(:user)    { FactoryBot.create :user }
  let(:context) { FactoryBot.create :context }

  it { should belong_to(:user) }
  it { should validate_presence_of(:user_id) }

  it 'creates a context for a user' do 
    expect{ FactoryBot.create(:context, user: user) }.to change{ Context.count }.by(1)
  end

  it 'deletes the oldest context if contexts exceed five (5)' do 
    6.times do 
      FactoryBot.create(:context, user: user) 
    end
    # expect(user.contexts.count == 6 
    # expect(context.delete_oldest).to eq 5
  end
end



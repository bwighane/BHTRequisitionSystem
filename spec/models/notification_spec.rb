require 'rails_helper'

RSpec.describe Notification, type: :model do
  it "is valid with valid attributes" do
    notification = create(:notification)
    expect(notification).to be_valid
  end

  it "is invalid without a body" do
    notification = create(:notification)
    notification.body = nil
    expect(notification).to_not be_valid
  end

  it "is invalid without a path" do
    notification = create(:notification)
    notification.path = nil
    expect(notification).to_not be_valid
  end  

  it { should belong_to(:user) }
end

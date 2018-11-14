require_relative '../rails_helper'

RSpec.describe User, :type => :model do
  it "is valid with valid attributes" do
    user = create(:user)
    expect(user).to be_valid
  end

  it "is invalid without firstname" do
    user = create(:user)
    user.firstname = nil
    expect(user).to_not be_valid
  end
end
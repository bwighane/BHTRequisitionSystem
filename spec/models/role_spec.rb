require_relative '../rails_helper'

RSpec.describe Role, :type => :model do
  it "is valid with valid attributes" do
    role = create(:role)
    expect(role).to be_valid
  end

  it "is invalid without name" do
    role = create(:role)
    role.name = nil
    expect(role).to_not be_valid
  end
end
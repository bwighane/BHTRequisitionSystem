require_relative '../rails_helper'

RSpec.describe Role, :type => :model do
  it "is valid with valid attributes" do
    role = create(:role)
    expect(role).to be_valid
  end
end
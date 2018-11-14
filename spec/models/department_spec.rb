require_relative '../rails_helper'

RSpec.describe Department, :type => :model do
  it "is valid with valid attributes" do
    department = create(:department)
    expect(department).to be_valid
  end

  it "is invalid without name" do
    department = create(:department)
    department.name = nil
    expect(department).to_not be_valid
  end
end
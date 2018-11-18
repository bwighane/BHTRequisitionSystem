require 'rails_helper'

RSpec.describe DistrictType, type: :model do
  it "is valid with valid attributes" do
    district_type = create(:district_type)
    expect(district_type).to be_valid
  end

  it "is invalid without name" do
    district_type = create(:district_type)
    district_type.name = nil
    expect(district_type).to_not be_valid
  end
end

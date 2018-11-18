require 'rails_helper'

RSpec.describe District, type: :model do
  it "is valid with valid attributes" do
    district = create(:district)
    expect(district).to be_valid
  end

  it "is invalid without name" do
    district = create(:district)
    district.name = nil
    expect(district).to_not be_valid
  end

  it "is invalid without district_type_id" do
    district = create(:district)
    district.district_type_id = nil
    expect(district).to_not be_valid
  end

  it { should belong_to(:district_type) }
end

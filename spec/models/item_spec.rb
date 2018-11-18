require 'rails_helper'

RSpec.describe Item, type: :model do
  it "is valid with valid attributes" do
    item = create(:item)
    expect(item).to be_valid
  end

  it "is invalid without name" do
    item = create(:item)
    item.name = nil
    expect(item).to_not be_valid
  end

  it "is invalid without cost" do
    item = create(:item)
    item.cost = nil
    expect(item).to_not be_valid
  end
end

require 'rails_helper'
RSpec.describe Site, :type => :model do
  it "is valid with valid attributes" do
    site = create(:site)
    expect(site).to be_valid
  end

  it "is invalid without name" do
    site = create(:site)
    site.name = nil
    expect(site).to_not be_valid
  end
  it { should have_and_belong_to_many(:projects) }
end

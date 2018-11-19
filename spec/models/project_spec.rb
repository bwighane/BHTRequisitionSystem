require 'rails_helper'

RSpec.describe Project, :type => :model do
  it "is valid with valid attributes" do
    project = create(:project)
    expect(project).to be_valid
  end

  it "is invalid without name" do
    project = create(:project)
    project.name = nil
    expect(project).to_not be_valid
  end

  it { should have_and_belong_to_many(:sites) }
end
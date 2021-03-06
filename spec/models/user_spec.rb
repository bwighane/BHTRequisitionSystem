require_relative '../rails_helper'

RSpec.describe User, :type => :model do
  describe "Params Validations" do
    it "is valid with valid attributes" do
      user = create(:user)
      expect(user).to be_valid
    end

    it "is invalid without firstname" do
      user = create(:user)
      user.firstname = nil
      expect(user).to_not be_valid
    end

    it "is invalid without lastname" do
      user = create(:user)
      user.lastname = nil
      expect(user).to_not be_valid
    end

    it "is invalid without email" do
      user = create(:user)
      user.email = nil
      expect(user).to_not be_valid
    end

    it "is invalid without role_id" do
      user = create(:user)
      user.role_id = nil
      expect(user).to_not be_valid
    end

    it "is invalid without department_id" do
      user = create(:user)
      user.department_id = nil
      expect(user).to_not be_valid
    end
  end

  describe "Associations" do
    it { should belong_to(:role) }
    it { should belong_to(:department) }
  end
end
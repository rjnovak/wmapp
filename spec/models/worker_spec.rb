require 'spec_helper'

describe Worker do
  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_confirmation_of(:password) }
    it { should validate_presence_of(:password_confirmation) }

    context "when email format is valid" do
        valid_worker_emails.each do |email|
            it { should allow_value(email).for(:email) }
        end
    end

    context "when email format is invalid" do
        invalid_worker_emails.each do |email|
            it { should_not allow_value(email).for(:email) }
        end
    end
  end
end
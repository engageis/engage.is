require 'spec_helper'

describe Member do
  describe "Validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :specialities }
    it { should validate_presence_of :bio }
    it { should validate_presence_of :avatar }
  end

  describe "avatar=" do
    subject{ Member.make! }
    it "url should not empty" do
      subject.avatar.url.should_not == ''
    end
  end
end

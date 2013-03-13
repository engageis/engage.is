require 'spec_helper'

describe Project do
  describe "Validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :thumbnail }
  end

  describe "thumbnail=" do
    subject{ Project.make! }
    it "url should not empty" do
      subject.thumbnail.url.should_not == ''
    end
  end

  describe "url" do
    subject{ Project.make! }
    it { should allow_value("").for(:url) }
    it { should allow_value(nil).for(:url) }
    it { should allow_value("http://engage.is").for(:url) }
    it { should_not allow_value("engage.is").for(:url) }
  end
end

require 'spec_helper'

describe AvatarUploader do
  include CarrierWave::Test::Matchers
  let(:member){ Member.make! }

  before do
    AvatarUploader.enable_processing = true
    @uploader = AvatarUploader.new(member, :avatar)
    @uploader.store!(File.open("#{Rails.root}/spec/support/images/engage.png"))
  end

  after do
    AvatarUploader.enable_processing = false
    @uploader.remove!
  end

  describe "#cache_dir" do
    subject{ @uploader.cache_dir }
    it{ should == "#{Rails.root}/tmp/uploads" }
  end

  describe "#store_dir" do
    subject{ @uploader.store_dir }
    it{ should == "uploads_test/member/avatar/#{member.id}" }
  end
end

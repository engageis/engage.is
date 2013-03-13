require 'spec_helper'

describe ThumbnailUploader do
  include CarrierWave::Test::Matchers
  let(:member){ Project.make! }

  before do
    ThumbnailUploader.enable_processing = true
    @uploader = ThumbnailUploader.new(member, :thumbnail)
    @uploader.store!(File.open("#{Rails.root}/spec/support/images/engage.png"))
  end

  after do
    ThumbnailUploader.enable_processing = false
    @uploader.remove!
  end

  describe "#cache_dir" do
    subject{ @uploader.cache_dir }
    it{ should == "#{Rails.root}/tmp/uploads" }
  end

  describe "#store_dir" do
    subject{ @uploader.store_dir }
    it{ should == "uploads_test/project/thumbnail/#{member.id}" }
  end
end


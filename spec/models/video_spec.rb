require 'rails_helper'

RSpec.describe Video, type: :model do
  before do
    @video = FactoryBot.build(:video)
  end

  describe 'video登録' do
    it "Titleが空だと登録できない" do
      @video.title = ""
      @video.valid?
      expect(@video.errors.full_messages).to include("タイトルを入力してください")
    end
    it "Descriptionが空だと登録できない" do
      @video.description = ""
      @video.valid?
      expect(@video.errors.full_messages).to include("デスクリプションを入力してください")
    end
  end
end

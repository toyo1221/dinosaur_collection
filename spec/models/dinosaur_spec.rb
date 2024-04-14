require 'rails_helper'

RSpec.describe Dinosaur, type: :model do
  before do
    @dinosaur = FactoryBot.build(:dinosaur)
    @admin = FactoryBot.create(:admin)
  end

  describe '恐竜登録' do
    context '恐竜登録がうまくいくとき' do
      it '全ての項目が存在すれば登録できる' do
        expect(@dinosaur).to be_valid
      end
    end

    context '恐竜登録がうまくいかないとき' do
      it 'imageが空では保存ができないこと' do
        @dinosaur.image = nil
        expect(@dinosaur).to_not be_valid
      end

      it 'nameが空では保存ができないこと' do
        @dinosaur.name = nil
        expect(@dinosaur).to_not be_valid
      end

      it 'eating_idが0では保存ができないこと' do
        @dinosaur.eating_id = 0
        expect(@dinosaur).to_not be_valid
      end

      it 'era_idが0では保存ができないこと' do
        @dinosaur.era_id = 0
        expect(@dinosaur).to_not be_valid
      end

      it 'sizeが空では保存ができないこと' do
        @dinosaur.size = nil
        expect(@dinosaur).to_not be_valid
      end

      it 'weightが空では保存ができないこと' do
        @dinosaur.weight = nil
        expect(@dinosaur).to_not be_valid
      end

      it 'explanationが空では保存ができないこと' do
        @dinosaur.explanation = nil
        expect(@dinosaur).to_not be_valid
      end
    end
  end
end
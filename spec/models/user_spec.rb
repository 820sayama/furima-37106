require 'rails_helper'
 RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
    
   describe "ユーザー新規登録" do
    it "重複したメールアドレスは登録できない" do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
     end
     it "メールアドレスに@を含まない場合は登録できない" do
      @user.email = "test.com"
      @user.valid?
      expect(@user.errors.full_messages).to include("Email is invalid")
     end
     it "英字のみのパスワードでは登録できない" do
     @user.password = 'dsdsf'
        @user.valid?
       expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
     end
     it '数字のみのパスワードでは登録できない' do
      @user.password = "45644546"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it '全角文字を含むパスワードでは登録できない' do
      @user.password = "最多"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
     it "姓（全角）に半角文字が含まれていると登録できない" do
      @user.first_name = "asddwx"
      @user.valid?
      expect(@user.errors.full_messages).to include ("First name is invalid")
    end
     it "名（全角）に半角文字が含まれていると登録できない" do
      @user.last_name = "asdddwx"
      @user.valid?
      expect(@user.errors.full_messages).to include ("Last name is invalid")
    end
     it "姓（カナ）にカタカナ以外の文字（平仮名・漢字・英数字・記号）が含まれていると登録できない" do
      @user.first_name_kana = "asdddwx"
      @user.valid?
      expect(@user.errors.full_messages).to include ("First name kana is invalid")
    end
     it "名（カナ）にカタカナ以外の文字（平仮名・漢字・英数字・記号）が含まれていると登録できない" do
      @user.last_name_kana = "asdddwx"
      @user.valid?
      expect(@user.errors.full_messages).to include ("Last name kana is invalid")
     end
     it "nicknameが空だと登録できない" do
      @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
     end
     it "emailが空では登録できない" do
      @user.email = ''
   @user.valid?
   expect(@user.errors.full_messages).to include("Email can't be blank")
     end
     it "encrypted_passwordが空では登録できない" do
      @user.password = " "
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
     end
     it 'passwordが5文字以下であれば登録できない' do
      @user.password = '12345'
      @user.password_confirmation = '12345'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end
    it 'passwordとpassword_confirmationが不一致では登録できない' do
      @user.password = '123456'
      @user.password_confirmation = '1234567'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
     it "first_nameが空では登録できない" do
      @user.first_name = " "
      @user.valid?
      #expect(@user.errors.full_messages).to include("Name can't be blank")
    end
     it "last_nameが空では登録できない" do
      @user.last_name = " "
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name can't be blank", "Last name is invalid") 
    end
     it "last_name_kanaが空では登録できない" do
      @user.last_name_kana = " "
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name kana can't be blank", "Last name kana is invalid") 
    end
     it "first_name_kanaが空では登録できない" do
      @user.first_name_kana = " "
      @user.valid?
      expect(@user.errors.full_messages).to include("First name kana can't be blank", "First name kana is invalid") 
    end
    it "birthday_dayが空では登録できない" do
      @user.birthday_day = " "
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday day can't be blank")  
    end
  end
end
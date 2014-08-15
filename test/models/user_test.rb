require 'test_helper'

class UserTest < ActiveSupport::TestCase
  describe User do
    before do
      @user = User.new
    end

    it { assert_respond_to(@user, :name) }
    it { assert_respond_to(@user, :email) }
    it { assert_respond_to(@user, :password_digest) }

    it { assert_respond_to(@user, :password) }
    it { assert_respond_to(@user, :password_confirmation) }

  end
end

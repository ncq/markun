# -*- coding: utf-8 -*-
require 'test_helper'

class MarkdownsTest < ActiveSupport::TestCase
  describe 'Markdown' do
    describe '#new' do
      it '入力したマークダウンがhtmlに変換されること' do
        # ======================
        # 絶対別の設定方法がある
        # ======================
        Capybara.default_driver = :selenium
        extend Capybara::DSL
        visit "http://localhost:3000/markdowns/new"
        find('#markdown_title').set "Capybaraでのテスト初挑戦！"
        find('#markdown_content').set <<-"EOS".strip_heredoc
          # コードのテスト
          ```ruby:hoge.rb
          puts "hoge"
          ```

          ***
          # listのテスト
          - こんな感じで
          - リンクもかける
          - [google](http://google.com)

          ***
          保存できるところまで確認すればいいのだろうか？わからん。

        EOS
        sleep 8

        # TODO: assertionかいてね
        assert(true)
      end
    end
  end
end
# ==========================================


# require 'spec_helper'

# # feature: describe
# feature 'User management' do

#   # scenario: it
#   scenario '' do
# 	  # 管理者user生成
# 	  admin = create(:admin)

# 		# ログイン
# 		visit root_path
# 		click_link 'Log In'
# 		fill_in 'Email', with: admin.email
# 		fill_in 'Password', with: admin.password
# 		click_button 'Log In'

# 		# ユーザ作成->1ユーザ増えること
# 		visit root_path
# 		expect{
#       click_link 'Users'
# 			click_link 'New User'
# 			fill_in 'Email', with: 'newuser@example.com'
# 			find('#password').fill_in 'Password', with: 'secret123'
# 			find('#password_confirmation').fill_in 'Password confirmation', with: 'ecret123'
# 			click_button 'Create User'
# 		}.to change(User, :count).by(1)

# 		# ページのテスト*4
# 		expect(current_path).to eq users_path
# 		expect(page).to have_content 'New user created'
# 		within 'h1' do
# 		  expect(page).to have_content 'Users'
# 		end
# 		expect(page).to have_content 'newuser@example.com'
# 	end


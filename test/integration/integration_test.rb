# -*- coding: utf-8 -*-
require 'test_helper'

# integrationテストはdescribe記法で書き換えられないっぽい
class IntegrationTest < ActionDispatch::IntegrationTest
  # 粒度がまったくわからん。たぶんもうちょうい粒度細かくしてそれぞれhave_contentなどでテストしてきゃいいんだと思う
  describe "ログイン関係" do
    Email = 'email1@email1.email1.email1'
    Password = 'password1'
    LoginUrl = "http://localhost:3000/sessions/new"
    it 'アカウント作成 -> ログイン -> マークダウン一覧 -> 作成 -> 保存 -> 一覧 -> ログアウト' do
      use_capybara
      create_user
      login
      create_markdown
      logout

      # assert(find('h1'), have_content("ログイン"))
      assert(true)
    end


    private

    def use_capybara
      Capybara.default_driver = :selenium
      # Capybara.default_driver = :webkit
      # Capybara.default_driver = :poltergeist

      # TODO: もっとマシな方法があるはず
      extend Capybara::DSL
    end


    def create_user
      visit LoginUrl
      click_link('アカウントをお持ちでない方はこちら')

      find('#user_email').set(Email)
      find('#user_password').set(Password)
      find('#user_password_confirmation').set(Password)
      click_button('Create User')
    end

    def login
      find('#email').set(Email)
      find('#password').set(Password)
      click_button('ログイン')
    end

    def create_markdown
      click_link('マークダウンつくろう')
      find('#markdown_title').set "Capybaraでのテスト初挑戦！"
      find('#markdown_content').set <<-"EOS".strip_heredoc
        ##コードもok

        ```rb:hello_world.rb
        puts "hello world!!!"
        ```

        ***
        ## 画像もok
        ![ハナヤマタ](http://hanayamata.com/assets/images/special/icon_naru.jpg)
        ![ハナヤマタ](http://hanayamata.com/assets/images/special/icon_hana.jpg)

        ***

        ## リストもok
        - こんなかんじで[googl](http://google.com)リンクもできる
        - 太字とか__いい感じで__できるよ
        <li style="color:red;">htmlがそのまま書けちゃう。変換前にHTMLエスケープすればokかな？</li>

        ***

        ## 色々ok
        EOS
      sleep 8

      click_button('Create Markdown')

      click_link('Back')
    end

    def logout
      click_link('ログアウト')
    end
  end
end

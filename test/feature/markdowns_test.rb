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



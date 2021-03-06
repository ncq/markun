# -*- coding: utf-8 -*-
source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
# gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]





# ==========================================
# 便利ジェム
# ==========================================
group :development do
  gem 'guard-livereload' # ブラウザ自動リロード
  gem 'pry-rails' # Railsでpry利用する
  gem 'pry-doc' # C拡張ひける
  gem 'pry-debugger'  # pryのデバグ機能を拡張する
  gem 'better_errors' # エラー画面を見やすくする
  gem 'binding_of_caller' # エラー画面を見やすくする
  gem 'thin' # weblickより速い気がするwebサーバ
  gem 'quiet_assets' # assetのログは鬱陶しいよね
end

gem 'tapp' # object.tappでppしつつレシーバを返す
gem 'awesome_print' # ap objectでいい感じに出力



# ==========================================
# テスト用のgemだ
# ==========================================
group :test do
  gem 'database_cleaner' # テスト終了時にテスト用DBを掃除してくれる
  gem 'capybara' # ブラウザ操作
  gem 'poltergeist' # cappybaraのドライバ(PhantomJS)
  gem 'selenium-webdriver', :require => false # cappybaraのドライバ(firefox,chrome,safari,etc)
  gem 'capybara-webkit' # cappybaraのドライバ(QtWebkitに直アクセス)
  gem 'launchy' # capybaraのsave_and_open_pageメソッド(スクリーンショットを取る)で必要
  # gem 'simplecov', :require => false # カバレッジ(CO)の測定
  # gem 'webmock' # web_api用のmock
  # gem 'vcr' # web_apiのレスポンスをキャッシュしておき2回目以降はローカルのデータをmockとして使用
  gem 'minitest-spec-rails' # minitestでrspec風に書ける

  gem 'timecop' # 現在時刻の操作
end

# rakeやrails generate等のコマンドを使用するため、test環境だけでなくdevelopment環境でも使えるようにしておく
group :development, :test do
  # gem "rspec-rails" # rspecをrailsで使うためのgem
	gem 'factory_girl_rails' # テストデータを作成する。デフォルトのfixtureよりも使いやすい
  gem 'faker' # テスト用のサンプルデータを生成してくれる

  # gem 'guard-rspec' # ファイルを変更した際に自動テストを実行
  gem 'guard-minitest' # ファイルを変更した際に自動テストを実行
  gem 'rb-fsevent' # ファイルの変更を検知。guard-rspec用
  gem 'growl' # テスト結果をgrowlで通知する
end





# ==========================================
# 追加するでー
# ==========================================
gem "mongoid"
gem "twitter-bootstrap-rails"
gem "less-rails"
gem "therubyracer"
gem 'redcarpet'
gem 'bcrypt-ruby', '3.1.2' # これよりまでだとBCrypt::Engine#costが存在しないのでこれで

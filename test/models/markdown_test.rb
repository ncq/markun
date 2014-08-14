# -*- coding: utf-8 -*-
require 'test_helper'

class MarkdownTest < ActiveSupport::TestCase
  describe Markdown do
    describe '#preview' do
      before do
      end

      it "ベタ文字は<p>で囲むこと" do
        markdown = Markdown.create!(title: "title1", content: 'hoge')
        assert("<p>hoge</p>", markdown.preview)
      end

      it "#は<h1>に変換すること" do
        markdown = Markdown.create!(title: "title1", content: '# hoge')
        assert("<h1>hoge</h1>", markdown.preview)
      end

      it "_は<em>に変換しないこと" do
        markdown = Markdown.create!(title: "title1", content: 'a_hoge_b')
        assert("<a>a_hoge_b</>", markdown.preview)
      end


    end
  end
end

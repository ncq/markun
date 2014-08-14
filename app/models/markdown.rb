# -*- coding: utf-8 -*-
class Markdown
  include Mongoid::Document

  field :title, type: String
  field :content, type: String

  def preview
    markdown = Redcarpet::Markdown.new Redcarpet::Render::HTML, \
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      tables: true

    # TODO: gsubは微妙...他にまともなやり方ありそう。
    markdown.render(content).gsub(/\n/, "").html_safe.tapp
  end
end

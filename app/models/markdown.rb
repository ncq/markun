# -*- coding: utf-8 -*-
class Markdown
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :content

  def preview
    markdown = Redcarpet::Markdown.new Redcarpet::Render::HTML, \
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      tables: true

    # TODO: gsubは微妙...他にまともなやり方ありそう。
    markdown.render(content).gsub(/\n/, "").html_safe
  end
end

require 'github/markup'
require "html/pipeline"

class Formatter
  def format(markdown, filename = 'README.md')
    h = GitHub::Markup.render(filename, markdown)

    p = HTML::Pipeline.new([
      HTML::Pipeline::TableOfContentsFilter
    ])

    result = {}
    p.call(h, {}, result)
    result[:output].to_s
  end
end

require 'minitest/autorun'
require_relative '../lib/Formatter'

describe Formatter do
  before do
    @f = Formatter.new
  end

  describe 'when formatting markdown source' do
    it 'should outoput correct results' do
      @f.format('# header1').must_equal "<h1>\n<a id=\"header1\" class=\"anchor\" href=\"#header1\" aria-hidden=\"true\"><span aria-hidden=\"true\" class=\"octicon octicon-link\"></span></a>header1</h1>\n"
      @f.format('## header2').must_equal "<h2>\n<a id=\"header2\" class=\"anchor\" href=\"#header2\" aria-hidden=\"true\"><span aria-hidden=\"true\" class=\"octicon octicon-link\"></span></a>header2</h2>\n"
      @f.format('## header–2').must_equal "<h2>\n<a id=\"header2\" class=\"anchor\" href=\"#header2\" aria-hidden=\"true\"><span aria-hidden=\"true\" class=\"octicon octicon-link\"></span></a>header–2</h2>\n"
      @f.format('## header–-2').must_equal "<h2>\n<a id=\"header-2\" class=\"anchor\" href=\"#header-2\" aria-hidden=\"true\"><span aria-hidden=\"true\" class=\"octicon octicon-link\"></span></a>header–-2</h2>\n"
    end
  end

  describe 'when formatting fixtures' do
    it 'should output the correct results for sample #1' do
      @md = File.read(File.dirname(__FILE__) + '/fixtures/sample-1.md')
      @html = File.read(File.dirname(__FILE__) + '/fixtures/sample-1.html')
      @f.format(@md).must_equal @html
    end
  end
end

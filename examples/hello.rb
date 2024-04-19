require_relative "../lib/pandalus"

title_page_data = {
  :guide_type  => "a beginner's guide to:",
  :guide_topic => "RUBY",
  :author      => "g.brown",
  :website     => "skillstopractice.com"
}

title_page_style = {
  :font_name             => "Courier",
  :background_color      => "2E2A29",
  :text_color            => "EBF6BC",
  :guide_type_font_size  => 18,
  :guide_topic_font_size => 48,
  :author_font_size      => 18,
  :website_font_size     => 12 
}

book = Pandalus::Guide.new

book.title_page(data: title_page_data, styles: title_page_style)
book.save_as("hello.pdf")


module Pandalus
  class Guide < Document
    def title_page(data:, styles:)
      font(styles[:font_name]) do
        move_cursor_to bounds.top - 72

        set_background_color styles[:background_color]
        text data[:guide_type], :size  => styles[:guide_type_font_size], 
                                :color => styles[:text_color], 
                                :font  => styles[:font]
        move_down 8
        text data[:guide_topic], :size => styles[:guide_topic_font_size],
                                :color => styles[:text_color],
                                :font  => styles[:font]

        move_cursor_to bounds.bottom + 72

        text data[:author],  :size  => styles[:author_font_size],
                             :color => styles[:text_color],
                             :font  => styles[:font],
                             :align => :right

        move_down 6

        text data[:website], :size  => styles[:website_font_size],
                             :color => styles[:text_color],
                             :font  => styles[:font],
                             :align => :right
      end
    end
  end
end
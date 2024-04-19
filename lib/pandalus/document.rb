require "prawn"

module Pandalus
  class Document
    include Prawn::View

    def set_background_color(color)
      tmp_color = fill_color
      
      canvas do
        fill_color(color)
        fill_rectangle [bounds.left, bounds.top], bounds.right, bounds.top
      end
      
      fill_color tmp_color
    end
  end
end

# 235 246 188
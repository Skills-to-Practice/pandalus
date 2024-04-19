module Pandalus
  class << self
    attr_accessor :document_class
  end
end

require_relative "pandalus/document"
require_relative "pandalus/guide"
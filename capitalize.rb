# frozen_string_literal: true

require_relative "Decorator"

class CapitalizeDecorator < Decorator
  def correct_name
    super.Capitalize
  end
end

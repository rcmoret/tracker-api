# frozen_string_literal: true

module Supplement
  class TypePresenter < BasePresenter
    attribute :unit do
      unit.presentable
    end
  end
end

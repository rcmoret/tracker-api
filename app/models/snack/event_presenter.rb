# frozen_string_literal: true

module Snack
  class EventPresenter < BasePresenter
    attribute :unit do
      unit.presentable
    end

    attribute :victual_item do
      victual_item.presentable
    end
  end
end

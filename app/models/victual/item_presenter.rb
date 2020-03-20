# frozen_string_literal: true

module Victual
  class ItemPresenter < BasePresenter
    attribute :type do
      type.presentable
    end

    attribute :type_id
  end
end

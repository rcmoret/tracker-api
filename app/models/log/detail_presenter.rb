# frozen_string_literal: true

module Log
  class DetailPresenter < BasePresenter
    attribute :type do
      type.presentable
    end
  end
end

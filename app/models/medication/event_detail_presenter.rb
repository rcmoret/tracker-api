# frozen_string_literal: true

module Medication
  class EventDetailPresenter < BasePresenter
    attribute :description do
      "#{quantity} #{unit.display_name} of #{name}"
    end

    attribute :type do
      type.presentable
    end

    delegate :unit, :name, to: :type
  end
end

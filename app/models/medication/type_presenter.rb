# frozen_string_literal: true

module Medication
  class TypePresenter < BasePresenter
    attribute :unit do
      unit.presentable
    end
  end
end

# frozen_string_literal: true

module Victual
  class Type < ActiveRecord::Base
    VALID_TYPES = [
      FOOD = :food,
      BEVERAGE = :beverage,
      CONDIMENT = :condiment,
    ].freeze
    validates :name, inclusion: VALID_TYPES.map(&:to_s), uniqueness: true

    alias presentable attributes
  end
end

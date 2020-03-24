# frozen_string_literal: true

module Types
  class MealType < BaseType
    field :id, ID, null: false
    field :name, String, null: false
  end
end

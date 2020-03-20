# frozen_string_literal: true

module Types
  module Log
    class DetailType < BaseType
      field :id, ID, null: false
      field :description, String, null: false
    end
  end
end

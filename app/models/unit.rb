# frozen_string_literal: true

class Unit < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  validates :display_name, presence: true

  PUBLIC_ATTRS = %w[
    display_name
    name
  ].freeze

  alias presentable attributes

  def destroy
    false
  end
end

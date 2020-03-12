# frozen_string_literal: true

module Supplement
  def self.table_name_prefix
    :supplement_
  end
end

require './app/models/supplement/type'
require './app/models/supplement/type_presenter'
require './app/models/supplement/event'
require './app/models/supplement/event_detail'

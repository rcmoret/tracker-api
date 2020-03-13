# frozen_string_literal: true

module Medication
  class EventDetail < ActiveRecord::Base
    include Presentable
    belongs_to :event, foreign_key: :medication_event_id
    belongs_to :type, foreign_key: :medication_type_id
    alias_attribute :event_id, :medication_event_id
    alias_attribute :type_id, :medication_type_id

    PUBLIC_ATTRS = %w[
      quantity
      type_id
    ].freeze

    private

    def presenter_klass
      EventDetailPresenter
    end
  end
end

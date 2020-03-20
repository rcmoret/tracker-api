# frozen_string_literal: true

module Log
  class Detail < ActiveRecord::Base
    include Presentable
    belongs_to :entry, foreign_key: :log_entry_id
    belongs_to :type, class_name: 'DetailType', foreign_key: :log_detail_type_id
    alias_attribute :entry_id, :log_entry_id
    alias_attribute :type_id, :log_detail_type_id

    PUBLIC_ATTRS = %w[
      entry_id
      rating
      type_id
    ].freeze

    private

    def presenter_klass
      DetailPresenter
    end
  end
end

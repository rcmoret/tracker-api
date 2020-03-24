# frozen_string_literal: true

module Types
  class QueryType < BaseType
    field :day, Types::DayType, null: false do
      description 'a days info, tags and events'
      argument :day_number, Integer, required: true
      argument :month, Integer, required: true
      argument :year, Integer, required: true
    end

    field :log_detail_types, [Log::DetailType], null: false do
      description 'Types of details that can be recorded'
    end

    field :meal_types, [MealType], null: false do
      description 'Meal types'
    end

    field :medication_types, [MedicationType], null: false do
      description 'Types of medications'
    end

    field :supplement_types, [SupplementType], null: false do
      description 'Types of supplements'
    end

    field :units, [Unit], null: false do
      description 'Units of measure'
    end

    field :victual_items, [Victual::Item], null: false do
      description 'Food and drink items'
    end

    field :victual_types, [VictualType], null: false do
      description 'Food, bev or condiment/ingedient'
    end

    field :workout_activities, [Workout::Activity], null: false do
      description 'Types of worksouts that are possible'
    end

    def day(day_number:, month:, year:)
      @day ||= Day.for(day: day_number, month: month, year: year).presentable
    end

    def log_detail_types
      @log_detail_types = ::Log::DetailType.all.map(&:presentable)
    end

    def medication_types
      @medication_types ||= ::Medication::Type.all.map(&:presentable)
    end

    def meal_types
      @meal_types ||= ::Meal::Type.all.map(&:presentable)
    end

    def supplement_types
      @supplement_types ||= ::Supplement::Type.all.map(&:presentable)
    end

    def units
      @units ||= ::Unit.all
    end

    def victual_items
      @victual_items ||= ::Victual::Item.all.map(&:presentable)
    end

    def victual_types
      @victual_types ||= ::Victual::Type.all.map(&:presentable)
    end

    def workout_activities
      @workout_activities ||= ::Workout::Activities.all.map(&:presentable)
    end
  end
end

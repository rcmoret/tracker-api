# frozen_string_literal: true

require 'graphql'
require './app/graphql/types/base_type'
require './app/graphql/types/medication/type'
require './app/graphql/types/medication/event_detail'
require './app/graphql/types/medication/event'
require './app/graphql/types/day_type'
require './app/graphql/types/query_type'

class Schema < GraphQL::Schema
  query Types::QueryType
end

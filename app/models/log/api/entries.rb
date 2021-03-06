# frozen_string_literal: true

module Log
  module API
    class Entries < Sinatra::Base
      register Sinatra::Namespace
      include APIHelper::Collection
      include APIHelper::DeletableObject
      include APIHelper::DeletableDetail
      include APIHelper::NewDetail
      include APIHelper::NewObject
      include APIHelper::Params
      before { content_type 'application/json' }

      private

      def model
        Entry
      end

      def form
        model.form
      end

      def detail_klass
        Detail
      end
    end
  end
end

module FabUp
  module API
    module SharedParams
      extend Grape::API::Helpers

      params :api_token do
        requires :api_token, type: String, desc: 'JWT Token to call endpoint.'
      end

      params :period do
        optional :start_date, type: Date, desc: 'Start Date'
        optional :end_date, type: Date, desc: 'End Date'
      end

      params :pagination do
        optional :page, type: Integer
        optional :per_page, type: Integer
      end

    end
  end
end

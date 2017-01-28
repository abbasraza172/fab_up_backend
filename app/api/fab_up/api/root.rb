require 'grape-swagger'
require 'grape/active_model_serializers'

module FabUp
  module API
    class Root < Grape::API

      version 'v1', using: :path
      format :json
      formatter :json, Grape::Formatter::ActiveModelSerializers
      namespace :fetch, desc: 'Fetch KPI Data' do
        desc 'Get dummy response'
        get :groups do
          render data: {yolo: "Boy"}
        end
      end


      add_swagger_documentation(
          mount_path: '/api_spec',
          base_path: '/api/v1',
          add_base_path: false,
          add_version: false,
          info: {
              title: 'FapbU 3.0 API',
              description: 'API documenation containing detail endpoints and their usage.',
              contact_name: 'Abbas Raza',
              contact_email: 'abbas.raza.zaman@gmail.com'
          },
          security_definitions: {
              api_key: {
                  type: 'bearer',
                  name: 'Authorization',
                  in: 'header'
              }
          }
      )
    end
  end
end

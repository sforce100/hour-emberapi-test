module API
  module V1
    class Base < Grape::API
      use ActionDispatch::RemoteIp
      use ::WineBouncer::OAuth2
      # common Grape settings
      prefix :api
      version 'v1', using: :path, strict: false, cascade: true
      # cascade true
      # strict false
      # formatter :json, Grape::Formatter::Roar
      # content_type :json_api, 'application/vnd.api+json'
      content_type :json_api, 'application/json'
      formatter :json_api, lambda { |object, env| object.to_json }
      format :json_api

      # global handler for simple not found case
      rescue_from ActiveRecord::RecordNotFound do |e|
        error_response(message: e.message, status: 404)
      end

      rescue_from Grape::Exceptions::ValidationErrors do |e|
        error_response(message: e.message, status: 422)
      end

      rescue_from ActiveRecord::RecordInvalid do |e|
        ap e.record.errors.to_hash(true)
        error_message = []
        e.record.errors.to_hash(true).each do |k, v|
          error_message << {
            field:   k,
            message: v
          }
        end
        error_response(message: { errors: error_message }, status: 422)
      end

      # global exception handler, used for error notifications
      rescue_from :all do |e|
        if Rails.env.development?
          raise e
        else
          error_response(message: "Internal server error", status: 500)
        end
      end

      # HTTP header based authentication
      before do
        # error!('Unauthorized', 401) unless headers['Authorization'] == "some token"
        # byebug
        p params
      end

      helpers do
        def client_ip
          env["action_dispatch.remote_ip"].to_s
        end

        def permitted_params
          @permitted_params ||= declared(params, include_missing: false)
        end
      end

      mount API::V1::Users
      mount API::V1::Products
      mount API::V1::City
      mount API::V1::Hotels
    end
  end
end

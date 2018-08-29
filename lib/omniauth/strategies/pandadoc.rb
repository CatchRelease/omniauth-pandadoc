require 'omniauth'
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    # Main class for Pandadoc OAuth2 strategy.
    class Pandadoc < OmniAuth::Strategies::OAuth2
      DEFAULT_SCOPE = 'read+write'.freeze

      option :client_options,
             site: 'https://api.pandadoc.com/public/v1',
             authorize_url: 'https://app.pandadoc.com/oauth2/authorize',
             token_url: 'https://api.pandadoc.com/oauth2/access_token'

      option :provider_ignores_state, true # this is needed for local testing

      def authorize_params
        super.tap do |params|
          params[:scope] ||= DEFAULT_SCOPE
        end
      end
    end
  end
end

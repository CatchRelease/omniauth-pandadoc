require 'omniauth'
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    # Main class for Pandadoc OAuth2 strategy.
    class Pandadoc < OmniAuth::Strategies::OAuth2
      DEFAULT_SCOPE = 'read+write'

      option :client_options,
             site: 'https://api.pandadoc.com/public/v1',
             authorize_url: 'https://app.pandadoc.com/oauth2/authorize',
             token_url: 'https://api.pandadoc.com/oauth2/access_token'

      option :provider_ignores_state, true # this is needed for local testing

      def request_phase
        redirect client.auth_code.authorize_url({ redirect_uri: callback_url }.merge(options.authorize_params))
      end
    end
  end
end

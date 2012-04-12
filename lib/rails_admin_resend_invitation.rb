require "rails_admin_resend_invitation/engine"

module RailsAdminResendInvitation
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class ResendInvitation < Base
        RailsAdmin::Config::Actions.register(self)
        
        register_instance_option :member do
          bindings[:object].resend_confirmation_token
          true
        end
      end
    end
  end
end


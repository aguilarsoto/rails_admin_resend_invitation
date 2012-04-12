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
          true
        end

        register_instance_option :visible? do
          bindings[:abstract_model].model_name == "User"
        end

        register_instance_option :controller do
          Proc.new do
            @object.resend_confirmation_token
          end
        end

      end
    end
  end
end


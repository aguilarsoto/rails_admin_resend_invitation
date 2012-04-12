$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_resend_invitation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_resend_invitation"
  s.version     = RailsAdminResendInvitation::VERSION
  s.authors     = ["Marco V. Aguilar Soto"]
  s.email       = ["marco@aguilarsoto.com"]
  s.homepage    = "http://www.aguilarsoto.com"
  s.summary     = "resend devise invitations"
  s.description = "this custom action will resend devise invitations to users"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.2"

  s.add_development_dependency "sqlite3"
end

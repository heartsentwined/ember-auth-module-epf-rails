require 'rails'
require 'ember/auth/module/epf/source'
require 'ember/auth/module/epf/rails/version'
require 'ember/auth/module/epf/rails/engine'

module Ember
  module Auth
    module Module
      module Epf
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.module.epf.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Module::Epf::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end

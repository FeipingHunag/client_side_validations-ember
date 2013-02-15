module ClientSideValidations
  module Ember
    module Generators
      class InstallGenerator < Rails::Generators::Base
        def copy_initalizer
          source_paths << File.expand_path('../../templates/client_side_validations-ember', __FILE__)
          copy_file 'initializer.rb', 'config/initializers/client_side_validations-ember.rb'
        end

        private

        def self.installation_message
          'Copies initializer into config/initializers'
        end

        desc installation_message
      end
    end
  end
end

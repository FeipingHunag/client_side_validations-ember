module ClientSideValidations
  module Generators
    class Ember
      def self.assets
        [{
          :path => File.expand_path('../../../../vendor/assets/javascripts', __FILE__),
          :file => 'rails.validations.ember.js.erb'
        }]
      end

      Generators.register_assets(self)
    end
  end
end

module ClientSideValidations::Ember
  class << self
    attr_accessor :models
  end

  def self.configure(&block)
    yield self
  end
end

require 'client_side_validations/ember/engine'

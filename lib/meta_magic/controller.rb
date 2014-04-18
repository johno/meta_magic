require 'active_support/concern'

module MetaMagic
  module Controller
    extend ActiveSupport::Concern

    def get_model_instance_variable
      instance_variable_get(:"@#{ controller_name.classify.downcase }")
    end

    def set_model_instance_variable
      send(:"set_#{ controller_name.classify.downcase }")
    end
  end
end

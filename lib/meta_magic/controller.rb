require 'active_support/concern'

module MetaMagic
  module Controller
    extend ActiveSupport::Concern

    def get_model_instance_variable
      instance_variable_get(:"@#{ controller_name.classify.underscore.downcase }")
    end

    def set_model_instance_variable
      send(:"set_#{ controller_name.classify.underscore.downcase }")
    end

    def assign_models_instance_variable_array
      instance_variable_set(:"@#{ controller_name }", get_model_class.all)
    end

    def get_model_class
      controller_name.classify.constantize
    end
  end
end

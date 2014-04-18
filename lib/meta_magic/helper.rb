require 'active_support/concern'

module MetaMagic
  module Helper
    extend ActiveSupport::Concern

    def object_path(object, params = {})
      action = params.delete(:action) || :show

      send("#{ "#{ action }_" unless action == :show }"\
           "#{ object.class.name.underscore }"\
           "_path", object, params)
    end

    def objects_path(object, params = {})
      action = params.delete(:action) || :index

      send("#{ "#{ action }_" unless action == :index }"\
           "#{ object.class.name.pluralize.underscore }"\
           "_path", params)
    end
  end
end

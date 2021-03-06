module Paymill
  class SubscriptionCount

    attr_accessor :active, :inactive

    def initialize( json )
      deserialize( json )
    end

    private
    def deserialize( json )
      json.each_pair do |key, value|
        instance_variable_set( "@#{key}", ( Integer( value ) rescue value ) )
      end
    end

  end
end

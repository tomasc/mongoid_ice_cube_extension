require 'ice_cube'

module MongoidIceCubeExtension
  class Rule
    class << self
      def demongoize(value)
        case value
        when Hash then IceCube::Rule.from_hash(value)
        else value
        end
      end

      def mongoize(value)
        case value
        when 'null' then nil
        when IceCube::Rule then value.to_hash
        when String then IceCube::Rule.from_hash(JSON.parse(value)).to_hash
        else value
        end
      end

      def evolve(value)
        case value
        when IceCube::Rule then value.to_hash
        else value
        end
      end
    end
  end
end

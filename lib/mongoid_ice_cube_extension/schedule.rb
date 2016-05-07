require 'ice_cube'

module MongoidIceCubeExtension
  class Schedule
    class << self
      def demongoize(value)
        return unless value
        IceCube::Schedule.from_hash(value)
      end

      def mongoize(value)
        case value
        when IceCube::Schedule then value.to_hash
        else value
        end
      end

      def evolve(value)
        case value
        when IceCube::Schedule then value.to_hash
        else value
        end
      end
    end
  end
end

require 'ice_cube'

module MongoidIceCubeExtension
  class Schedule

    class << self
      def demongoize value
        IceCube::Schedule.from_hash(value)
      end

      def mongoize value
        value.to_hash
      end
    end

  end
end

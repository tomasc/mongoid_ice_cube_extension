require 'test_helper'

module MongoidIceCubeExtension
  describe Schedule do
    let(:ice_cube_schedule) do
      IceCube::Schedule.new(Date.today.to_time) do |s|
        s.add_recurrence_rule IceCube::Rule.daily(1).count(7)
      end
    end

    describe '.demongoize' do
      let(:stored_value) { Schedule.mongoize(ice_cube_schedule) }
      let(:retrieved_value) { Schedule.demongoize(stored_value) }

      it 'stores and retrieves IceCube schedule' do
        retrieved_value.start_time.must_equal ice_cube_schedule.start_time
        ice_cube_schedule.recurrence_rules.each { |rule| retrieved_value.recurrence_rules.must_include rule }
        ice_cube_schedule.exception_rules.each { |rule| retrieved_value.exception_rules.must_include rule }
      end
    end
  end
end

require 'test_helper'

module MongoidIceCubeExtension
  describe Rule do
    describe '.mongoize' do
      it 'sets value to nil for "null"' do
        _(Rule.mongoize('null')).must_be_nil
      end

      it 'converts IceCube::Rule to hash' do
        _(Rule.mongoize(IceCube::Rule.yearly)).must_be_kind_of Hash
      end

      it 'converts JSON of IceCube::Rule to hash' do
        rule = IceCube::Rule.yearly
        rule_json = rule.to_hash.to_json
        _(Rule.mongoize(rule_json)).must_be_kind_of Hash
      end
    end

    # ---------------------------------------------------------------------

    describe '.demongoize' do
      let(:ice_cube_rule) { IceCube::Rule.daily(1) }

      it 'converts hash to IceCube::Rule' do
        _(Rule.demongoize(ice_cube_rule.to_hash)).must_be_kind_of IceCube::Rule
      end
    end

    # ---------------------------------------------------------------------

    describe '.evolve' do
      let(:ice_cube_rule) { IceCube::Rule.daily(1) }

      it 'converts IceCube::Rule to Hash' do
        _(Rule.evolve(ice_cube_rule)).must_be_kind_of Hash
      end
    end
  end
end

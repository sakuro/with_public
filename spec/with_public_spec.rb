require 'with_public'

RSpec.describe WithPublic do
  class Target
    private
    def this_is_a_private_method
      'called'
    end
  end

  let(:target) { Target.new }

  context 'with using #with_public' do
    using Target.with_public(:this_is_a_private_method)

    it 'can call private methods' do
      expect(target.this_is_a_private_method).to eq('called')
    end
  end

  context 'without using #with_public' do
    it 'cannot call private methods' do
      expect { target.this_is_a_private_method }.to raise_error(NoMethodError)
    end
  end
end

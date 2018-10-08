require "with_public/version"

module WithPublic
  # Returns a refiner module to make target methods public
  #
  # @param [Array<Symbol>] methods Method symbols to be made public
  # @return [Module] a refinement module to make given methods public
  # @example Make Foo#bar public
  #     RSpec.describe Foo do
  #       using Foo.with_public(:bar)
  #     end
  #
  #     Calling Foo#bar will not raise NoMethodError in this context.
  def with_public(*method_names)
    target = self
    Module.new.tap do |refiner|
      refiner.module_eval do
        refine target do
          public(*method_names)
        end
      end
    end
  end
end

Module.include(WithPublic)

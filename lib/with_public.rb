# frozen_string_literal: true

require 'with_public/version'

# A module to define with_public method to Module class.
# With this module, one can test private methods without Object#send.
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

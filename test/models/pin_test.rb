require 'test_helper'

class PinTest < ActiveSupport::TestCase
	test "Pin debe tener un nombre" do   
		@pin = Pin.new({
			title: ''
		})

		assert !@pin.valid?, "Un pin sin nombre no debe ser valido!"
	end
end

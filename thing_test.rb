require 'minitest/autorun'
require 'minitest/pride'
require_relative 'thing'

class ThingTest < MiniTest::Test
  def setup
    @thing = Thing.new(my_string: "foo", my_int: 1)
  end

  def test_it_initializes_with_given_hash
    assert @thing
  end

  def test_it_initializes_and_creates_getters
    assert_equal "foo", @thing.my_string
    assert_equal 1, @thing.my_int
  end

  def test_it_has_setters
    @thing.my_float = 40.1
    assert_equal 40.1, @thing.my_float
  end

  def test_the_class_can_keep_list_of_required_attrs
    Thing.require(:my_string)
    class_variables = Thing.class_variable_get(:@@required_attrs)
    assert class_variables.include?(:my_string)
  end

  def test_it_invalidates_a_thing_without_a_required_attribute
    Thing.require(:my_string)
    assert_raises(RequiredAttrError) do
      Thing.new(my_int: 1)
    end
  end

end

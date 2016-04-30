require('minitest/autorun')
require_relative('../warehouse_picker_functions.rb')

class TestWarehouse < Minitest::Test

  # def test_item_at_bay()
  #   item = item_at_bay('b5')
  #   assert_equal('nail filer', item)
  # end

  # def test_bay_for_item()
  #   bay = bay_for_item('nail filer')
  #   assert_equal('b5', bay)
  # end

  # def test_list_of_bays()
  # bays = list_of_bays("b5, b10, b6")
  # assert_equal("nail filer, cookie jar, tooth paste", bays)
  # #   assert_equal("nail filer, cookie jar, tooth paste are 5 bays apart", bays)
  # end
  #
  # def test_list_of_items()
  #   items = list_of_items("shoe lace, rusty nail, leg warmers")
  #   assert_equal("c9, c1, c10", items)
  # end

  def test_distance_given_bays
    items_and_distance = distance_given_bays("b5, b10, b6")
    assert_equal(5, bays)
  end

end

require('minitest/autorun')
require('minitest/rg')
require_relative('../warehouse_picker_functions.rb')

class TestWarehouse < Minitest::Test

  #test for Q1
  def test_item_at_bay()
    item = item_at_bay('b5')
    assert_equal('nail filer', item)
  end

  #test for Q2
  def test_bay_for_item()
    bay = bay_for_item('nail filer')
    assert_equal('b5', bay)
  end

  #test for Q3
  def test_list_of_bays()
  bays = list_of_bays("b5, b10, b6")
  assert_equal("nail filer, cookie jar, tooth paste", bays)
  end

  #test for Q4
  def test_list_of_items()
    items = list_of_items("shoe lace, rusty nail, leg warmers")
    assert_equal("c9, c1, c10", items)
  end

  #test for function that will make Q's 5 and 6 easier
  def test_index_for_item()
    index = index_for_bay("c2")
    assert_equal(11, index)
  end

    #test for function that will make Q's 5 and 6 easier
  def test_index_for_bay()
    index = index_for_item("nail filer")
    assert_equal(24, index)
  end

  #this is the first test for Q5
  def test_distance_given_bays()
    bays = distance_given_bays("b5, b10, b6")
    assert_equal("nail filer, cookie jar, tooth paste are 5 bays apart", bays)
  end

   #this is the 2nd test for Q5
   def test_distance_given_bays()
     bays = distance_given_bays("b3, c7, c9, a3")
     assert_equal("picture frame, paint brush, shoe lace, blouse are 15 bays apart", bays)
   end

  # this is the first test for Q6
  def test_distance_given_items()
    items = distance_given_items("shoe lace, rusty nail, leg warmers")
    assert_equal("c1, c9, c10", items)
  end

  # this is the second test for Q6
  def test_distance_given_items()
    items = distance_given_items("hanger, deodorant, candy wrapper, rubber band")
    assert_equal("a10, a4, c8, b9", items)
  end


end

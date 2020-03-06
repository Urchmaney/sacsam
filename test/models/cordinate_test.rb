require 'test_helper'

class CordinateTest < ActiveSupport::TestCase
  test 'Add cordinate on presence' do
    cord = Cordinate.new(name: '0099')
    assert cord.save
  end

  test 'cordinate fails on abscence' do
    cord = Cordinate.new
    assert_not cord.save
  end
end

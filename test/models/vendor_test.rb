require 'test_helper'

class VendorTest < ActiveSupport::TestCase
  test "vendor has unique name" do
    vendor = Vendor.new name: 'Indie Store', email: 'indiestore@gmail.com', store: 'indiestore.com'
    duplicate_vendor = vendor.dup
    vendor.save
    assert_not duplicate_vendor.valid?
  end

  test "vendor has required fields" do
    vendor = Vendor.new

    vendor.validate
    assert_includes vendor.errors[:email], "can't be blank"
    assert_includes vendor.errors[:name], "can't be blank"
    assert_includes vendor.errors[:store], "can't be blank"
  end

  test "vendor email has correct format" do
    vendor = Vendor.new email: 'wrong_email_format'
    vendor.validate

    assert_includes vendor.errors[:email], "is invalid"
  end

end

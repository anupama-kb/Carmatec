require 'test_helper'

class ItemTaxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_tax = item_taxes(:one)
  end

  test "should get index" do
    get item_taxes_url
    assert_response :success
  end

  test "should get new" do
    get new_item_tax_url
    assert_response :success
  end

  test "should create item_tax" do
    assert_difference('ItemTax.count') do
      post item_taxes_url, params: { item_tax: { id: @item_tax.id, item_id: @item_tax.item_id, tax: @item_tax.tax, tax_type: @item_tax.tax_type } }
    end

    assert_redirected_to item_tax_url(ItemTax.last)
  end

  test "should show item_tax" do
    get item_tax_url(@item_tax)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_tax_url(@item_tax)
    assert_response :success
  end

  test "should update item_tax" do
    patch item_tax_url(@item_tax), params: { item_tax: { id: @item_tax.id, item_id: @item_tax.item_id, tax: @item_tax.tax, tax_type: @item_tax.tax_type } }
    assert_redirected_to item_tax_url(@item_tax)
  end

  test "should destroy item_tax" do
    assert_difference('ItemTax.count', -1) do
      delete item_tax_url(@item_tax)
    end

    assert_redirected_to item_taxes_url
  end
end

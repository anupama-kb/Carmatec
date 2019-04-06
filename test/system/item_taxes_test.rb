require "application_system_test_case"

class ItemTaxesTest < ApplicationSystemTestCase
  setup do
    @item_tax = item_taxes(:one)
  end

  test "visiting the index" do
    visit item_taxes_url
    assert_selector "h1", text: "Item Taxes"
  end

  test "creating a Item tax" do
    visit item_taxes_url
    click_on "New Item Tax"

    fill_in "Id", with: @item_tax.id
    fill_in "Item", with: @item_tax.item_id
    fill_in "Tax", with: @item_tax.tax
    fill_in "Tax type", with: @item_tax.tax_type
    click_on "Create Item tax"

    assert_text "Item tax was successfully created"
    click_on "Back"
  end

  test "updating a Item tax" do
    visit item_taxes_url
    click_on "Edit", match: :first

    fill_in "Id", with: @item_tax.id
    fill_in "Item", with: @item_tax.item_id
    fill_in "Tax", with: @item_tax.tax
    fill_in "Tax type", with: @item_tax.tax_type
    click_on "Update Item tax"

    assert_text "Item tax was successfully updated"
    click_on "Back"
  end

  test "destroying a Item tax" do
    visit item_taxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item tax was successfully destroyed"
  end
end

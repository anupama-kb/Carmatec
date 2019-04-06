require "application_system_test_case"

class ItemCategoriesTest < ApplicationSystemTestCase
  setup do
    @item_category = item_categories(:one)
  end

  test "visiting the index" do
    visit item_categories_url
    assert_selector "h1", text: "Item Categories"
  end

  test "creating a Item category" do
    visit item_categories_url
    click_on "New Item Category"

    fill_in "Id", with: @item_category.id
    fill_in "Name", with: @item_category.name
    click_on "Create Item category"

    assert_text "Item category was successfully created"
    click_on "Back"
  end

  test "updating a Item category" do
    visit item_categories_url
    click_on "Edit", match: :first

    fill_in "Id", with: @item_category.id
    fill_in "Name", with: @item_category.name
    click_on "Update Item category"

    assert_text "Item category was successfully updated"
    click_on "Back"
  end

  test "destroying a Item category" do
    visit item_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item category was successfully destroyed"
  end
end

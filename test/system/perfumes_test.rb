require "application_system_test_case"

class PerfumesTest < ApplicationSystemTestCase
  setup do
    @perfume = perfumes(:one)
  end

  test "visiting the index" do
    visit perfumes_url
    assert_selector "h1", text: "Perfumes"
  end

  test "should create perfume" do
    visit perfumes_url
    click_on "New perfume"

    fill_in "Brand", with: @perfume.brand
    fill_in "Description", with: @perfume.description
    fill_in "Name", with: @perfume.name
    fill_in "Price", with: @perfume.price
    fill_in "Size", with: @perfume.size
    click_on "Create Perfume"

    assert_text "Perfume was successfully created"
    click_on "Back"
  end

  test "should update Perfume" do
    visit perfume_url(@perfume)
    click_on "Edit this perfume", match: :first

    fill_in "Brand", with: @perfume.brand
    fill_in "Description", with: @perfume.description
    fill_in "Name", with: @perfume.name
    fill_in "Price", with: @perfume.price
    fill_in "Size", with: @perfume.size
    click_on "Update Perfume"

    assert_text "Perfume was successfully updated"
    click_on "Back"
  end

  test "should destroy Perfume" do
    visit perfume_url(@perfume)
    click_on "Destroy this perfume", match: :first

    assert_text "Perfume was successfully destroyed"
  end
end

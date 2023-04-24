require "application_system_test_case"

class PurchasesTest < ApplicationSystemTestCase
  setup do
    @purchase = purchases(:one)
  end

  test "visiting the index" do
    visit purchases_url
    assert_selector "h1", text: "Purchases"
  end

  test "should create purchase" do
    visit purchases_url
    click_on "New purchase"

    fill_in "Buyer", with: @purchase.buyer_id
    fill_in "Listing", with: @purchase.listing_id
    fill_in "Purchase date", with: @purchase.purchase_date
    fill_in "Shipping address", with: @purchase.shipping_address
    fill_in "Total price", with: @purchase.total_price
    click_on "Create Purchase"

    assert_text "Purchase was successfully created"
    click_on "Back"
  end

  test "should update Purchase" do
    visit purchase_url(@purchase)
    click_on "Edit this purchase", match: :first

    fill_in "Buyer", with: @purchase.buyer_id
    fill_in "Listing", with: @purchase.listing_id
    fill_in "Purchase date", with: @purchase.purchase_date
    fill_in "Shipping address", with: @purchase.shipping_address
    fill_in "Total price", with: @purchase.total_price
    click_on "Update Purchase"

    assert_text "Purchase was successfully updated"
    click_on "Back"
  end

  test "should destroy Purchase" do
    visit purchase_url(@purchase)
    click_on "Destroy this purchase", match: :first

    assert_text "Purchase was successfully destroyed"
  end
end

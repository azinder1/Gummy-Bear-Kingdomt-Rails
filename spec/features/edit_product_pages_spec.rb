require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    product = Product.create(:name => "King Gummy", :description => "this is a test", :cost => "three-fitty", :country_origin => "Made in the USA")
    visit product_path(product)
    click_on "Edit"
    fill_in "Name", :with => "King Dummy"
    click_on "Submit"
    expect(page).to have_content "King Dummy"
  end
  it "deletes a product" do
    product = Product.create(:name => "King Gummy", :description => "this is a test", :cost => "three-fitty", :country_origin => "Made in the USA")
    visit product_path(product)
    click_on "Delete"
    expect(page).to_not have_content "King Gummy"
  end
end

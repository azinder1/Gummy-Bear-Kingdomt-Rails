require 'rails_helper'

describe "the add a new product process" do
  it "adds a new product" do
    visit products_path
    click_on "Add Product"
    fill_in 'Name', :with => "Ruby"
    click_on "Submit"
    expect(page).to have_content "Products"
  end
  it "gives error when product name isn't entered" do
    visit new_product_path
    click_on "Submit"
    expect(page).to have_content 'errors'
  end
end

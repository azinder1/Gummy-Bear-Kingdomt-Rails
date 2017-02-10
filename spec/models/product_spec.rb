require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description}
  it { should validate_presence_of :country_origin }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :views }
end

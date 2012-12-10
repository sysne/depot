require 'spec_helper'

describe LineItem do
#  pending "add some examples to (or delete) #{__FILE__}"
#  before do
#   @product = FactoryGirl.build(:product, title: "test9999", description: "description111", image_url: "test.jpg", price: 99999)
#   @product = FactoryGirl.build(:product)
#  end

#  Factory.define :prd, :class => Product do |product|
#    product = Factory.create(:product)
#   product.title "test999"
#   product.description "description11111"
#   image_url "test.jpg"
#   price 99999
#  end


  describe 'first describe' do
#    before do
    let(:product) { FactoryGirl.create(:product) }
#    end
    it 'first test method' do
#      @product.each do |pro|
#        print(@product.id)
#      end
      print(product.title)
      product.price.should eq 1
    end
  end
end

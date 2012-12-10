# -*- encoding: utf-8 -*-

require 'spec_helper'

describe Product do
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


  describe 'vaidate check' do
    let(:product_title) { FactoryGirl.build(:product, title: nil, description: "mytext", image_url: "mystring", price: 0.01) }

    it 'title validate' do
      expect { product_title.save! }.to_not raise_error
    end

    let(:product_description) { FactoryGirl.build(:product, title: "mystring", description: nil, image_url: "mystring", price: 0.01) }
    it 'description validate' do
      expect { product_description.save! }.to_not raise_error
    end

   let(:product_image_url) { FactoryGirl.build(:product, title: "mystring", description: "mytext", image_url: nil, price: 0.01) }
   it 'image_url vaildate' do
     expect { product_image_url.save! }.to_not raise_error
   end

   let(:product_price) { FactoryGirl.build(:product, title: "mystring", description: "mytext", image_url: "mystring", price: 0.001) }
   it 'price validate' do
     expect { product_price.save! }.to_not raise_error
   end

  end
end

FactoryGirl.define do
  sequence(:sequencial_number) {|n| n }
end

module FactoryGirl::Syntax::Methods
  def sn
    generate(:sequencial_number)
  end
end

FactoryGirl::SyntaxRunner.send(:include, RR::Adapters::RRMethods)
FactoryGirl.duplicate_attribute_assignment_from_initialize_with = false
FG = FactoryGirl unless defined? FG

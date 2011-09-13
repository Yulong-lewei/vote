class Vote < ActiveRecord::Base
	has_many :options, :dependent => :destroy
	has_many :users
  accepts_nested_attributes_for :options, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end

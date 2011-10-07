class Vote < ActiveRecord::Base
	has_many :options, :dependent => :destroy
 belongs_to :user
 def calculate_total
    self.totalnumber = self.options.inject(0){ |sum,vote| sum+vote.quantity }
    save!
  end


  accepts_nested_attributes_for :options, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
has_many :comments
end

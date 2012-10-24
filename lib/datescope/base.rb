class ActiveRecord::Base


  scope :today, where("created_at > ?", 0.day.ago.beginning_of_day)
  scope :this_month, where("created_at > ?", 0.month.ago.beginning_of_month)

end

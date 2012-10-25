module DateScope

  module Extension
    def today
      where("created_at > ?", 0.day.ago.beginning_of_day)
    end

    def this_month
      where("created_at > ?", 0.month.ago.beginning_of_month)
    end
  end

end

ActiveRecord::Base.send(:extend, DateScope::Extension)

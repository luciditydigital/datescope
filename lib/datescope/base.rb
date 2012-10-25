module DateScope

  module Extension
    def today
      where("created_at >= ?", 0.day.ago.beginning_of_day)
    end

    def this_week
      where("created_at >= ?", 0.week.ago.beginning_of_week)
    end

    def this_month
      where("created_at >= ?", 0.month.ago.beginning_of_month)
    end

    def last_month
      where("created_at >= ? and created_at <= ?", 1.month.ago.beginning_of_month, 1.month.ago.end_of_month)
    end

    def month_before_last_month
      where("created_at >= ? and created_at <= ?", 2.month.ago.beginning_of_month, 2.month.ago.end_of_month)
    end

    def this_year
      where("created_at >= ?", 0.year.ago.beginning_of_year)
    end
  end

end

ActiveRecord::Base.send(:extend, DateScope::Extension)
ActiveRecord::Relation.send(:include, DateScope::Extension)


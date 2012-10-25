module DateScope

  module Extension
    def today
      where("created_at >= ?", Intervals.today[:start])
    end

    def this_week
      where("created_at >= ?", Intervals.this_week[:start])
    end

    def this_month
      where("created_at >= ?", Intervals.this_month[:start])
    end

    def last_month
      where("created_at >= ? and created_at <= ?", Intervals.last_month[:start], Intervals.last_month[:end])
    end

    def month_before_last_month
      where("created_at >= ? and created_at <= ?", Intervals.month_before_last_month[:start], Intervals.month_before_last_month[:end])
    end

    def this_year
      where("created_at >= ?", Intervals.this_year[:start])
    end
  end

end

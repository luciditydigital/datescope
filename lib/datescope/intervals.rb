module DateScope

  module Intervals
    def self.today
      {:start => 0.day.ago.beginning_of_day, :end => 0.day.ago.end_of_day}
    end

    def self.this_week
      {:start => 0.week.ago.beginning_of_week, :end => 0.week.ago.end_of_week}
    end

    def self.this_month
      {:start => 0.month.ago.beginning_of_month, :end => 0.month.ago.end_of_month}
    end

    def self.this_year
      {:start => 0.year.ago.beginning_of_year, :end => 0.year.ago.end_of_year}
    end

    def self.last_month
      {:start => 1.month.ago.beginning_of_month, :end => 1.month.ago.end_of_month}
    end

    def self.month_before_last_month
      {:start => 2.month.ago.beginning_of_month, :end => 2.month.ago.end_of_month}
    end
  end

end
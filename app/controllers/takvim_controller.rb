class TakvimController < ApplicationController

	COMMON_YEAR_DAYS_IN_MONTH = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

	def days_in_month(month, year)
	   return 29 if month == 2 && Date.gregorian_leap?(year)
	   COMMON_YEAR_DAYS_IN_MONTH[month]
	end

	def index
		@x = days_in_month(03, 2018)
	end
end

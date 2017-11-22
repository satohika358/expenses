class HomeController < ApplicationController
  before_filter :set_beginning_of_week


  def index
    @expenses = Expense.all
    @balance = find_balance
  end

  private

    def set_beginning_of_week
      Date.beginning_of_week = :sunday
    end

    def find_balance
    	@expenses = Expense.all
    	balance = 0
    	@expenses.each do |expense|
    		if expense.flow == "Expense"
    			balance -= expense.value
    		else
    			balance += expense.value
    		end
    	end
    	return balance
    end
end

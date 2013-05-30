class User < ActiveRecord::Base
  attr_accessible :days_available, :days_charged, :days_remaining, :email, :end_date, :first_name, :last_name, :start_date
 
end

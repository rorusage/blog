class Account::Owner < ActiveRecord::Base
  belongs_to :user
end

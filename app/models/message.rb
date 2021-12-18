class Message < ApplicationRecord
  belongs_to :user, :matching
end

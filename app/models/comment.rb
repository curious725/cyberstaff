class Comment < ApplicationRecord
  belongs_to :candidate
  belongs_to :user
end

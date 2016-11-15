class Task < ApplicationRecord
  belongs_to :list, touch: true
  delegate :user, to: :list
end

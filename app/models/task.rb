class Task < ApplicationRecord
  belongs_to :list, touch: true
end

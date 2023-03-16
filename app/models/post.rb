class Post < ApplicationRecord
  belongs_to :user, class_name: :User, foreign_key: :user_id
  belongs_to :project, class_name: :User, foreign_key: :project_id
end

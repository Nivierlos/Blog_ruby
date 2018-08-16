class Post < ApplicationRecord
    belongs_to :category
    belongs_to :user
    has_many :comments

    validates :title, presence: true
    validates :category_id, presence: true
    validates :user_id, presence: true
    validates :body, presence: true

    attachment :profile_image

    def self.search(query)
        where("body like ? OR title like ?","%#{query}%", "%#{query}%")
    end
end

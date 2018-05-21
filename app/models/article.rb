class Article < ActiveRecord::Base
 belongs_to :user
 validates :title, presence: true, length: {minimum:5 ,maximum:200}
 validates :description, presence: true, length: {minimum:5, maximum:1000}
 validates :user_id, presence: true

end
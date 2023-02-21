class Article < ApplicationRecord
    has_many :article_categories
    has_many :categories, through: :article_categories
    belongs_to :user
    validates :title, presence: true , length: { minimum:6}
    validates :description, presence: true ,length: { minimum:10}
    
    # after_commit :testCallback
    # has_many :comments, dependent: :destroy
    # private
    # def testCallback
    #     puts "Article is created successfully"
    # end
end

class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    belongs_to :user

    validates :title, presence: true , length: { minimum:6}
    validates :description, presence: true ,length: { minimum:10}

    # after_commit :testCallback

    # private
    # def testCallback
    #     puts "Article is created successfully"
    # end
end

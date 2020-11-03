class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 3}

  def self.search(search)
    puts "test123 >>>>>>>>>>>>>>>>>>>>>>"
    if search
      article = Article.find_by(title: search)
      if article
        self.where(article_id: article)
      end
    else
      Article.all
    end
  end
end

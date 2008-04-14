class Article < ActiveRecord::Base
  has_many :commentaires
end

class Commentaire < ActiveRecord::Base
  belongs_to :article
end

mon_article.commentaires
mon_article.commentaires.count

mon_article.commentaires.find(:all, :order => 'title')
mon_article.commentaires << Commentaire.new(:title => 'foo')

mon_commentaire.article

class PostSerializer < ActiveModel::Serializer
  attributes :title, :content

  belongs_to :author  #if not include this, author name won't show up in /posts

  has_many :tags #It seems like belongs_to also work the same???
end

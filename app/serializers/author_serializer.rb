class AuthorSerializer < ActiveModel::Serializer
  attributes :name

  has_one :profile #if forget this, profile won't show up at all

  #This 'posts' below has to be a customized serializer instead of the default 'post' serializer.
  #Because we are rendering diff attributes for the original '3000/posts'.
  has_many :posts, serializer: AuthorPostSerializer
end

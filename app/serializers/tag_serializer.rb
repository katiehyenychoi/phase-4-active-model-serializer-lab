class TagSerializer < ActiveModel::Serializer
  attributes :name

  has_many :posts #write has_many, instead of belongs_to, because we are rendering Tags and their associated posts to each tag.
end

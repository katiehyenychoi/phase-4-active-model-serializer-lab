class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :tags  #This does not work by itself alone bc AMS Only nests assoc ONE level deep.
  #To make this work , you need to write 'include' in the authors controller AS WELL together with that.

  #the first 40 characters of
  #the post's content as short_content,
  # with a trailing ellipsis (...) at the end
  def short_content
    #byebug #object #object.content is the content column
    "#{object.content[0..39]}..."
  end
end

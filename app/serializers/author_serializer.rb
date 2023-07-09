class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile

  has_many :posts, serializer: AuthorPostsSerializer
  # has_many :tags
end

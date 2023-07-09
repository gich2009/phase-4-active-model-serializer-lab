class AuthorPostsSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many   :tags, serializer: TagSerializer

  def short_content
    "#{self.object.content[0..39]}..."
  end
end

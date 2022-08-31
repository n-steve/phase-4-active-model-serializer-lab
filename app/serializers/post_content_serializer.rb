class PostContentSerializer < ActiveModel::Serializer
  attributes :short_content,:title

  has_many :tags
 
  def short_content
    "#{self.object.content[0..39]...}"
  end
end

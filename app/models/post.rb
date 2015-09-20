class Post < ActiveRecord::Base
  scope :published, -> { where published: true }
  scope :tagged,    -> (tag_name) { joins(:tags).where(tags: {name: tag_name}) }

  has_and_belongs_to_many :tags
end

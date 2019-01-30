class Lesson < ApplicationRecord
  acts_as_taggable
  has_many :lesson_media
end

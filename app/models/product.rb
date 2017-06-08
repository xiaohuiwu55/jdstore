class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  acts_as_list
  acts_as_votable
  has_many :favorites
  has_many :reviews
  has_many :users, through: :favorites, source: :user
  validates :title, :description ,:quantity ,:price , presence: true #只是让栏位不能为空了，但是不完善数量和价格没限制为整数为正
  is_impressionable
  has_many :photos
  accepts_nested_attributes_for :photos
  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end
end

class Dinosaur < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :eating
  belongs_to :era

  has_one_attached :image
  belongs_to :admin

  validates :name, presence: true
  validates :eating_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :era_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :size, presence: true
  validates :weight, presence: true
  validates :explanation, presence: true
end

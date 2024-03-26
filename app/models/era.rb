class Era < ActiveHash::Base
  self.data = [
    { id: 0, name: '---'},
    { id: 1, name: 'さんじょうき'},
    { id: 2, name: 'じゅらき'},
    { id: 3, name: 'はくあき'}
  ]

  include ActiveHash::Associations
  has_many :dinosaurs
end
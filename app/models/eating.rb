class Eating < ActiveHash::Base
  self.data = [
    { id: 0, name: '---'},
    { id: 1, name: 'にくしょく'},
    { id: 2, name: 'そうしょく'}
  ]

  include ActiveHash::Associations
  has_many :dinosaurs
end
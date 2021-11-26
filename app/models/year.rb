class Year < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '2021' },
    { id: 3, name: '2022' }
  ]

  include ActiveHash::Associations
  has_many :schedules
end

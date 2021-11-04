class Hour < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '9' },
    { id: 3, name: '10' },
    { id: 4, name: '11' },
    { id: 5, name: '12' },
    { id: 6, name: '13' },
    { id: 7, name: '14' },
    { id: 8, name: '15' },
    { id: 9, name: '16' }
  ]

  include ActiveHash::Associations
  has_many :schedules
end
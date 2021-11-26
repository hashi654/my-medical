class Hour < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 9, name: '9' },
    { id: 10, name: '10' },
    { id: 11, name: '11' },
    { id: 12, name: '12' },
    { id: 13, name: '13' },
    { id: 14, name: '14' },
    { id: 15, name: '15' },
    { id: 16, name: '16' }
  ]

  include ActiveHash::Associations
  has_many :schedules
end
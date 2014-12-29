module Accela
  class Record < Model
    has_one :type, :status
    has_many :addresses, :contacts, :parcels, :owners
  end
end

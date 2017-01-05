class OfficeRole < ActiveRecord::Base
  belongs_to :office
  belongs_to :role 
end

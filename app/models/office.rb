class Office < ActiveRecord::Base
  has_many :user_offices
  has_many :users, :through => :user_offices

  has_many :office_roles
  has_many :roles, :through => :office_roles

  has_many :messages

  scope :ci_find, lambda { |attribute, value| where("lower(#{attribute}) = ?", value.downcase).first }

  # before_save downcase_all
  #
  # def downcase_all
  #   self.name.downcase!
  # end

  protected


end

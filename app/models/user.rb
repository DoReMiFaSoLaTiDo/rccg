class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_offices
  has_many :offices, :through => :user_offices

  # has_many :messages, :through => :user_offices
  validates :first_name, :last_name, presence: true

  after_create :assign_role

  def admin?
    self.offices.map(&:name).include?('Admin')
  end

  def worker?
    self.offices.map(&:name).any?
  end

  # def user_roles
  #   User
  # end

  private

    def assign_role
      of = Office.find_by(name: 'worker')
      UserOffice.create(user_id: self.id, office_id: of.id)
    end
end

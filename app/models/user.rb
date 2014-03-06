class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :registerable

  def admin?
    role == 'admin'
  end

  def other?
    role == 'mod'
  end

  # def role?(base_role)
  #       role.present? && ROLES.index(base_role.to_s) <= ROLES.index(role)
  # end

end

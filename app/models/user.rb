class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :registerable

  ROLES = %w[admin mod]

  def admin?
    role == 'admin'
  end

  def other?
    role == 'mod'
  end


end

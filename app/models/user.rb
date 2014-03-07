class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

#     has_many :products
#     has_many :posts


#     ROLES = %w[admin moderator author]

#     def roles=(roles)
#       self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
#     end

#     def roles
#       ROLES.reject { |r| ((roles_mask || 0) & 2**ROLES.index(r)).zero? }
#     end

#     def role?(role)
#       roles.include? role.to_s
#     end
# end


  def admin?
    role == 'admin'
  end

  def other?
    role == 'mod'
  end

  def role?(base_role)
        role.present? && ROLES.index(base_role.to_s) <= ROLES.index(role)
  end

end

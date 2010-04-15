class User < ActiveRecord::Base
	acts_as_authentic
	has_many :posts

	def is_author?
    return true if role.to_sym == :auteur
    return false
  end
  def is_moderator?
    return true if role.to_sym == :moderateur
    return false
  end
end

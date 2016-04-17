class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def cart_count
    $redis.scard "cart#{id}"
  end

end

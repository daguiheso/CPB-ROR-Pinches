class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         #funcionalidades actuales del sistema y las comentadas son las que estan deshabilitadas
         #con omniauthable se puede loguear con cuentas de redes sociales etc
  def avatar
  	"http://www.gravatar.com/avatar/#{ Digest::MD5.hexdigest(self.email)}"
  end
end

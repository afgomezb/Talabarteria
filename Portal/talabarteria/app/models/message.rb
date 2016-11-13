class Message < ApplicationRecord
	#Validaciones
	validates :name, length: {minimum: 4, message: "El nombre debe ser minimo de 4 carácteres"}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
  	validates :menssage, length: {minimum: 8, message: "El mensaje debe ser minimo de 8 carácteres"}
end

class Indicator < ApplicationRecord

	#Validaciones
	validates :beneficiary, length: {minimum: 4, message: "El nombre del beneficiario debe ser minimo de 4 carácteres"}
	validates :impact, length: {minimum: 4, message: "El impacto debe ser minimo de 4 carácteres"}
	validates :description, length: {minimum: 8, message: "La descripción debe ser minimo de 8 carácteres"}
	validates :image, presence:  {message: "Debe seleccionar una imagen"}
	#Archivo adjunto para la imagen del indicador
	has_attached_file :image, styles: { medium: "1200x720", thumb: "800x600", mini: "400x200"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

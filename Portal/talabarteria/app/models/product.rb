class Product < ApplicationRecord

	#Validaciones
	validates :name, length: {minimum: 4, message: "El nombre del producto debe ser minimo de 4 carácteres"}
	validates :price, numericality: {only_integer: true}
	validates :description, length: {minimum: 8, message: "La descripción debe ser minimo de 8 carácteres"}
	validates :warranty, presence:  {message: "Debe ingresar la garantía"}
	validates :type_leather, presence:  {message: "Debe ingresar el tipo de cuero"}
	validates :cover, presence:  {message: "Debe seleccionar la imagen principal"}
	validates :photo1, presence:  {message: "Debe seleccionar la imagen"}
	validates :photo2, presence:  {message: "Debe seleccionar la imagen"}

	#Archivo adjunto para la imagen principal
	has_attached_file :cover, styles: { medium: "1200x720", thumb: "800x600", mini: "400x200"}
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

	#Archivo adjunto para la foto 1
	has_attached_file :photo1, styles: { medium: "1200x720", thumb: "800x600", mini: "400x200"}
	validates_attachment_content_type :photo1, content_type: /\Aimage\/.*\Z/

	#Archivo adjunto para la foto 2
	has_attached_file :photo2, styles: { medium: "1200x720", thumb: "800x600", mini: "400x200"}
	validates_attachment_content_type :photo2, content_type: /\Aimage\/.*\Z/
end

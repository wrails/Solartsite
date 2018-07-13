class FormMessage < ApplicationRecord
	validates_presence_of :name, :subject, :body
	validates_format_of :email, :with => /.+@.+\..+/i
	
	# Bots fool
	attr_accessor :teleno
	validates :teleno, inclusion: { in:['']}

end
class Portfolio < ApplicationRecord
	validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

	def self.react
		where(subtitle: 'React')
	end

	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "https://place-hold.it/600x400"
		self.thumb_image ||= "https://place-hold.it/350x200"
	end
end

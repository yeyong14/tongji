class Province < ActiveRecord::Base
  if Rails.version < '4.0'
    attr_accessible :name, :pinyin, :pinyin_abbr
  end

  has_many :cities, dependent: :destroy
  has_many :districts, through: :cities
	has_many :advisories
	has_many :products, through: :advisories
	has_many :line_items


end

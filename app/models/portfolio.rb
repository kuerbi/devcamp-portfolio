class Portfolio < ApplicationRecord
  validates_presence_pf :title, :body, :main_image, :thumb_image
end

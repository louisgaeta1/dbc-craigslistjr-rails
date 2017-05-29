class Article < ApplicationRecord
  belongs_to :category
  before_save :generate_key

  def generate_key
    self.key = [*'a'..'z',*'A'..'Z',*'0'..'9'].sample(8).join("")
  end
  
end

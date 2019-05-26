class Face < ApplicationRecord
    has_attached_file :resim, styles: { large: "900x900>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :resim, content_type: /\Aimage\/.*\z/
belongs_to :user
end

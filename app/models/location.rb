# == Schema Information
#
# Table name: recuploads
# id            :bigint
# name          :string(255)
# line_1        :string(255)
# city          :string(255)
# state         :string(255)
# zip_code      :string(255)
# created_at    :datetime        not null
# updated_at    :datetime        not null
# 
class Location < ApplicationRecord
  validates :name, presence: true
end

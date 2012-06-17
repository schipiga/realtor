class Image < ActiveRecord::Base
  
  belongs_to :flat
  
  has_attached_file :photo,
                    :path => ':rails_root/public/:attachment/:id/:style/:filename',
                    :url => '/:attachment/:id/:style/:filename',
                    :styles => {
                      :thumb => '250x150#'
                    }
  
  attr_accessible :photo
end

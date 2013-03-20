class User < ActiveRecord::Base
  attr_accessible :unique_id
  
  has_many :notes, :dependent => :destroy

  before_create :generate_token

  protected
    def generate_token
      @random_token = nil
      self.unique_id = loop do
        @random_token = SecureRandom.urlsafe_base64
        break @random_token unless User.where(unique_id: @random_token).exists?
      end
    end
end

class Virtual

  include DataMapper::Resource

  property :address, String, :key => true
  property :user_id, String

  belongs_to :user


end

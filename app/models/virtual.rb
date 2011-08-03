class Virtual

  include DataMapper::Resource

  property :address, String, :key => true
  property :user_id, String

  belongs_to :user

  def to_param
    CGI.escape(address).gsub('.', '%2e')
  end

end

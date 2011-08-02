class Transport

  include DataMapper::Resource

  property :domain, String, :key => true
  property :transport, String
  

  has n, :users, :parent_key => [:domain], :child_key => [:domain], :constraint => :protect

  def to_param
    self.domain
  end


end

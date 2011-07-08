class User

  include DataMapper::Resource
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :encryptable


  property  :id,        String,   :key => true, :length => 128
  property  :domain,    String,   :key => true, :length => 128
  property  :realname,  String,   :length => 128
  property  :uid,       Integer,  :required => true
  property  :gid,       Integer,  :required => true
  property  :home,      String,   :required => true, :length => 128
  property  :mail,      String

  before :save do |user|
    user.email = "#{user.id}@#{user.domain}"
  end

  belongs_to :transport, :parent_key => [:domain], :child_key => [:domain]

  has n, :virtuals, :constraint => :protect
end

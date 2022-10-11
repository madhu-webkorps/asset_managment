class Product

  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  db = Mongoid::default_client
  collection = db[:collection_name]

 #associaiton with user
  belongs_to :user
  
  # custom method for insert record in record
  def Product.product_with_user(id , product_params)
     Product.collection.insert_one(user_id: id  , params: product_params, created_at: Time.now ,expiredate: Time.now + 2.years)
  end

end

class Product


  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  db = Mongoid::default_client
  collection = db[:collection_name]

  belongs_to :user
  
  def Product.product_with_user(id , product_params)
    debugger
     Product.collection.insert_one(user_id: id , params: product_params)  
     
  end

end

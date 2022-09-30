class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

 
end

ActiveRecord::Base.instance_eval do
     def using_object_ids?
       false
     end
   end
  

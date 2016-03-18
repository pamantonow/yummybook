FactoryGirl.define do 
 factory :recipe do |f|
  f.name "pasta"
  f.description "delicious"
  f.ingredients "spaghetti"
  f.instructions "boiled the water"
  f.category_id 1
  f.user_id 1 
 end
end
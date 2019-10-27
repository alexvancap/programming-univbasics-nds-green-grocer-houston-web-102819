def find_item_by_name_in_collection(name, collection)
  index = 0

  while index < collection.length do
    if collection[index][:item] == name
      return collection[index]
    else
      index += 1
    end
  end
  return nil
end

def consolidate_cart(cart)
  count = 0
  new_hash = {}
 cart.each do |item_hash|
   if item_hash[:item] == new_hash[:item]
     item_hash[:count] += 1
   else
    new_hash[item_hash[:item]] = {:item => item_hash[:item], :price => item_hash[:price], :clearance => item_hash[:clearance], :count => 1}
   end
 end
 p new_hash
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end

cart = [{:item => "AVOCADO", :price => 3.00, :clearance => true},
  {:item => "BANANA", :price => 3.00, :clearance => true},
  {:item => "CARROT", :price => 3.00, :clearance => true},
  {:item => "TV", :price => 3.00, :clearance => true},
  {:item => "XBOX", :price => 3.00, :clearance => true},
  {:item => "CHOCOLATE", :price => 3.00, :clearance => true},
  {:item => "CHOCOLATE", :price => 3.00, :clearance => true}]

consolidate_cart(cart)

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
  index = 0
  result = []

  while index < cart.count do
    name = cart[i][:item]
    item_to_find = find_item_by_name_in_collection(name, result)

    if 
      sought
    end

    index += 1
  end
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

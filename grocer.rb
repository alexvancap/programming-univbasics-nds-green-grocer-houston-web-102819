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
    name = cart[index][:item]
    item_to_find = find_item_by_name_in_collection(name, result)

    if item_to_find
      item_to_find[:count] += 1
    else
      cart[index][:count] = 1
      result << cart[index]
    end
    index += 1
  end
  result
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

coupons = [{:item => "AVOCADO", :num => 2, :cost => 5.00}]

apply_coupons(cart, coupons)

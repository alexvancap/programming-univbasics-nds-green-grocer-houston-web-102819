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
  consol_cart = Hash.new

   cart.each do |item|
    if consol_cart[item.keys[0]] #Item with that key is already in consol cart
      consol_cart[item.keys[0]][:count] += 1

     else #Item with that key is NOT already in consol cart
      item_name = item.keys[0]
      new_consol_cart_item = {}
      new_consol_cart_item[:price] = item[item_name][:price]
      new_consol_cart_item[:clearance] = item[item_name][:clearance]
      new_consol_cart_item[:count] = 1
      consol_cart[item_name] = new_consol_cart_item

     end #end if
  end #end each block
  consol_cart
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

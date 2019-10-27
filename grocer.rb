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
  cart.each do |item|
     if cart[item.keys[0]] #Item with that key is already in consol cart
       cart[item.keys[0]][:count] += 1

      else #Item with that key is NOT already in consol cart
       item_name = item.keys[0]
       new_cart_item = {}
       new_cart_item[:price] = item[item_name][:price]
       new_cart_item[:clearance] = item[item_name][:clearance]
       new_cart_item[:count] = 1
       cart[item_name] = new_cart_item

      end #end if
   end #end each block
   cart
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

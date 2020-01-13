def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, value)
  pet_shop[:admin][:total_cash] += value
end


def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, increase)
  return pet_shop[:admin][:pets_sold] +=increase
end


def stock_count(pet_shop)
  count = 0
  for pet in pet_shop[:pets]
    count += 1
  end
  return count
end


def pets_by_breed(pet_shop, pet_type)
  counter = 0
  for pet in pet_shop[:pets]
    if pet[:breed] == pet_type
      counter = counter + 1
    end
  end
  return counter
end


def find_pet_by_name(pet_shop, name)
  pet_found = []
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_found = pet
    else
      pet_found = nil
  end
end
return pet_found
end


def remove_pet_by_name(pet_shop, name)
  pet_deltd = []
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet.delete(name)
    end
    pet_deltd = pet
  end
  return pet_deltd
end


def add_pet_to_stock(pet_shop, new_pet)
  count = 0
  pet_shop[:pets][6] = new_pet
  for pet in pet_shop[:pets]
    count += 1
  end
  return count
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer,value)
  customer[:cash]-=value
end

def customer_pet_count(customer)
  return customer[:pets][0].to_i()
end
def add_pet_to_customer(customer, new_pet)
  customer[:pets][0]= new_pet
end

local choices = {"Espresso", "Latte", "Cappuccino", "Americano"}
local sizes = {"Small", "Medium", "Large"}
local milk = {"None", "Regular", "Oat", "Almond"}

vim.ui.select(choices, {prompt = "Choose your coffee:"}, function(coffee)
  if not coffee then return print("Cancelled") end
  
  vim.ui.select(sizes, {prompt = "Choose size:"}, function(size)
    if not size then return print("Cancelled") end

    vim.ui.select(milk, {prompt = "Choose milk type:"}, function(milk)
      if not milk then return print("Cancelled") end
      print("Order: " .. size .. " " .. coffee .. " with " .. milk .. " milk!")
    end)
  end)
end)


getPeripheral = function(str)
  for _, side in ipairs(rs.getSides()) do
    if peripheral.getType(side) == str then
      return peripheral.wrap(side)
    end
  end
  print("Couldn't find peripheral: "..str)
  return nil
end
class BurgerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :protein, :cheese
end

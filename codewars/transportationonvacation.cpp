// Transportation on Vacation

int rental_car_cost(int d){
  int carCostTotal {40 * d};
  
  if (d >= 7) 
    carCostTotal -= 50;
  
  else if (d >= 3)
    carCostTotal -= 20;
  
  return carCostTotal;
}
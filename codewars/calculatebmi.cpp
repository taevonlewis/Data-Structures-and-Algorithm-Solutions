// Calculate BMI

std::string bmi(double w, double h) 
{
  double bmi {w / h / h};
  
  if (bmi <= 18.5)
    return "Underweight";
  else if (bmi <= 25.0) 
    return "Normal";
  else if (bmi <= 30.0) 
    return "Overweight";
  else if (bmi > 30) 
    return "Obese";
  
  throw std::logic_error("Method or operation is not implemented");
}
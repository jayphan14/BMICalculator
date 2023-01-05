
import UIKit


struct CalculatorBrain{
    var bmi: BMI?
    

    mutating func calculateBMI(height: Float, weight:Float) {
        let bmiValue =  weight / pow (height,2)
        
        if (bmi?.value ?? 0.0 < 18.5){
            bmi = BMI(value: bmiValue, advice: "Eat more Pies", color: UIColor.blue)
        } else if (bmi?.value ?? 0.0 < 24.9){
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less Pies", color: UIColor.orange)
        }
        
    }
    func getColor() -> UIColor{
        return self.bmi?.color ?? UIColor.blue
    }
    
    func getAdvice() -> String {
        return self.bmi?.advice ?? ""
    }
    

    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0 )
        return bmiTo1DecimalPlace
    }
}

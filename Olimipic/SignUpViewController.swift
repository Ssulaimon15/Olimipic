//
//  SignUpViewController.swift
//  Olimipic
//
//  Created by Sarah Sulaimon on 6/6/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var ageAdder: UIStepper!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordStrength: UILabel!
    
    @IBOutlet weak var showHidenLabel: UIButton!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    
   
    
    var passwordVisible: Bool = true
    
    var showPassword: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ageAdder.wraps = true
        ageAdder.autorepeat = true
        ageAdder.maximumValue = 100
        
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func ageAdderStepper(_ sender: UIStepper) {
        ageTextField.text = Int(sender.value).description
        
       
        
    }
        
    @IBAction func showHide() {
            if passwordVisible {
                passwordTextField.isSecureTextEntry = false
              
                passwordVisible = false
            } else {
                passwordTextField.isSecureTextEntry = true
                
                passwordVisible = true
            }
        }
    @IBAction func passwordType(_ sender: UITextField) {
        
        passwordStrength.isHidden = false
               if (passwordTextField.text?.count)! < 3 {
                   passwordStrength.text = "Password is weak"
                   passwordStrength.textColor = UIColor.red
               } else if (passwordTextField.text?.count)! > 8 {
                   passwordStrength.text = "Password is unbreakable"
                   passwordStrength.textColor = UIColor.green
               } else {
                   passwordStrength.text = "Password is safer"
                   passwordStrength.textColor = UIColor.purple
               }
    }
    

    
}

/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/

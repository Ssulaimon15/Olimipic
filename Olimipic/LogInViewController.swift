//
//  LogInViewController.swift
//  Olimipic
//
//  Created by Sarah Sulaimon on 6/6/22.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordStrength: UILabel!
    
    @IBOutlet weak var showHidenLabel: UIButton!
    
    
    var passwordVisible: Bool = true
    
    var showPassword: Bool = true
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
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
   
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

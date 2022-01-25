//
//  LoginViewController.swift
//  RealUser
//
//  Created by Вячеслав Кремнев on 1/24/22.
//

import UIKit

class LoginViewController: UIViewController {

     private let user = User.getUser()
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            
            if let welcomeVC = segue.destination as? WelcomeViewController {
                print("!")
            } else {
                print("Error")
            }
        }
        
    }
    
    @IBAction func checkUserButton() {
        
    }
    
   
    @IBAction func alertAction(_ sender: Any) {
    }
    
   
    
}







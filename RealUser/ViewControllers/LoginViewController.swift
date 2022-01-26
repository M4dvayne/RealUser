//
//  LoginViewController.swift
//  RealUser
//
//  Created by Вячеслав Кремнев on 1/24/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let user = User.getUser()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
                welcomeVC.userGreeting = "Hello, \(user.person.name) \(user.person.surname)!"
            } else if let navigationVC = viewController as? UINavigationController {
                print("InformationVC")
                let informationVC = navigationVC.topViewController as? InformationViewController
                //Вот здесь я так и не смог понять почему informationVC опционален(?) и чем его можно инициализировать, буду признателен объяснению)
                informationVC?.user = user
            }
        }
    }
    
    @IBAction func checkUserButton(_ sender: UIAlertController) {
        
        if loginTextField.text != user.login || passwordTextField.text != user.password {
            
            showAlert(title:"Oooops!", message: "Wrong login or password!\n Please try again. ")
            passwordTextField.text = ""
        }
    }

    @IBAction func showUserData(_ sender: UIButton) {
        
        if sender.tag == 0 {
            showAlert(title: "🤔", message: "Your login is \(user.login)")
        } else if sender.tag == 1 {
            showAlert(title: "🤔", message: "Your password is \(user.password)")
        }
    }
}

extension LoginViewController {
    
    private func showAlert (title: String, message: String, preferredStyle:UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    //Здесь непонятно касательно размещения, это ведь Action, но его создание выше расширения приводит к ошибке(
}

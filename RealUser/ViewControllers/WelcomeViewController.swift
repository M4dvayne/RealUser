//
//  WelcomeViewController.swift
//  RealUser
//
//  Created by Вячеслав Кремнев on 1/24/22.
//

import UIKit

class WelcomeViewController: UIViewController {

     
    var welcomeLabel: String!
    
    @IBOutlet weak var welcomeUserLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUserLabel.text = "Hello\(welcomeLabel ?? "")"
       
    }
    

    

}

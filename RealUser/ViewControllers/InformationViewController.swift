//
//  InformationViewController.swift
//  RealUser
//
//  Created by Вячеслав Кремнев on 1/24/22.
//

import UIKit

class InformationViewController: UIViewController {

    private let user = User.getUser()
    
    
    @IBOutlet weak var userInfoText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
       
    }
    

    @IBAction func showUserInfo(_ sender: Any) {
    }
    

}
